/*
 * Copyright (c) 2007 NTT DATA Corporation
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

package jp.terasoluna.thin.functionsample.upload.web.action;

import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.io.OutputStream;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts.Globals;
import org.apache.struts.upload.FormFile;
import org.apache.struts.upload.MultipartRequestHandler;

import jp.terasoluna.fw.service.thin.BLogicMessage;
import jp.terasoluna.fw.service.thin.BLogicMessages;
import jp.terasoluna.fw.service.thin.BLogicResult;
import jp.terasoluna.fw.web.struts.actions.AbstractBLogicAction;
import jp.terasoluna.thin.functionsample.upload.bean.TupdownloadVO;
import jp.terasoluna.thin.functionsample.upload.service.InsertDBUpLoadService;
import jp.terasoluna.fw.util.PropertyUtil;

/**
 * �t�@�C���A�b�v���[�h����A�N�V����
 * 
 */
public class UpLoadAction extends AbstractBLogicAction<TupdownloadVO> {

    /**
     * �T�[�o�ŃA�b�v���[�h�t�@�C����ۑ�����p�X�B
     */
    protected static final String FILE_UPLOAD_PATH = "upload.00001.path";

    /**
     * HTTP���N�G�X�g�T�C�Y����B
     */
    protected static final String REQEST_MAX_SIZE = "upload.00002.maxsizerequest";

    /**
     * �A�b�v���[�h�t�@�C���T�C�Y����B
     */
    protected static final String FILE_MAX_SIZE = "upload.00003.maxsizefile";

    /**
     * �G���[���b�Z�[�W�B �t�@�C���A�b�v���[�h�@�\�ŕϐ��f�[�^�̓v���p�e�B�t�@�C������擾���ɃG���[���������܂����B<br>
     */
    protected static final String FILE_UPLOAD_ERROR_MSG01 = "info.UC37.00001";

    /**
     * �G���[���b�Z�[�W�B<br>
     * HTTP���N�G�X�g�T�C�Y�͂��̏���𒴉߂���B<br>
     */
    protected static final String FILE_UPLOAD_ERROR_MSG02 = "info.UC37.00002";

    /**
     * �G���[���b�Z�[�W�B<br>
     * �A�b�v���[�h�t�@�C��{0}�̃T�C�Y�͏���𒴉߂���B<br>
     */
    protected static final String FILE_UPLOAD_ERROR_MSG03 = "info.UC37.00003";

    /**
     * �G���[���b�Z�[�W�B<br>
     * �t�@�C���A�b�v���[�h���s���܂����B<br>
     */
    protected static final String FILE_UPLOAD_ERROR_MSG04 = "info.UC37.00004";

    // �c�a�Ƀt�@�C���A�b�v���[�h����o�^����@�\�̃C���^�t�F�[�X
    protected InsertDBUpLoadService insertDBUpLoadService = null;

    private String sizeOver = "success";

    private String overFileName = "";

    /**
     * <p>
     * �t�@�C���A�b�v���[�h����A�N�V����
     * </p>
     * 
     * @param mapping
     *            �A�N�V�����}�b�s���O
     * @param form
     *            �A�N�V�����t�H�[��
     * @param request
     *            HTTP���N�G�X�g
     * @param response
     *            HTTP���X�|���X
     * @return �J�ڐ�̘_���t�H���[�h���B��� <code>success</code>
     */

    @Override
    protected void preDoExecuteBLogic(HttpServletRequest request,
            HttpServletResponse response, TupdownloadVO tupdownloadVO)
            throws Exception {

        // �t�@�C���A�b�v���[�h�����t���O
        boolean upLoadFlag = false;
        // �T�[�o�ŃA�b�v���[�h�t�@�C����ۑ�����p�X
        String filePath = (String) PropertyUtil.getProperty(FILE_UPLOAD_PATH);
        // HTTP���N�G�X�g�T�C�Y������擾
        String maxSizeRequestStr = (String) PropertyUtil
                .getProperty(REQEST_MAX_SIZE);
        // �A�b�v���[�h�t�@�C���T�C�Y������擾
        String maxSizeFileStr = (String) PropertyUtil
                .getProperty(FILE_MAX_SIZE);
        // �v���p�e�B�t�@�C���ŕϐ����Ȃ��̏ꍇ�A�I��
        if (filePath == null || "".equals(filePath)
                || maxSizeRequestStr == null || "".equals(maxSizeRequestStr)
                || maxSizeFileStr == null || "".equals(maxSizeFileStr)) {
            // �t�@�C���A�b�v���[�h�@�\�ŕϐ��f�[�^�̓v���p�e�B�t�@�C������
            // �擾���ɃG���[���������܂����B
            sizeOver = "";
            // response.getStatus();
            return;
        } else {
            // �p�X���݃`�F�b�N�A���݂��Ȃ��ꍇ�A���̃p�X�����
            pathCheck(filePath);
        }

        // �A�b�v���[�h�t�@�C���T�C�Y������擾
        int maxSizeFile = Integer.parseInt(maxSizeFileStr);

        // Struts�ݒ�t�@�C�������̎w�肷��΁AHTTP���N�G�X�g�T�C�Y�͂��̏���𒴉߂��鎞�A
        // org.apache.struts.upload.CommonsMultipartRequestHandler.java�ŕϐ����Z�b�g����
        // request.setAttribute(
        // MultipartRequestHandler.ATTRIBUTE_MAX_LENGTH_EXCEEDED,
        // Boolean.TRUE);
        Object maxLengthExceededBl = request
                .getAttribute(MultipartRequestHandler.ATTRIBUTE_MAX_LENGTH_EXCEEDED);
        // ���̕ϐ�������΁AHTTP���N�G�X�g�T�C�Y�͂��̏���𒴉߂���
        if (maxLengthExceededBl != null) {
            sizeOver = REQEST_MAX_SIZE;
            return;
        }

        // �t�@�C���T�C�Y�`�F�b�N����
        // �A�b�v���[�h�t�@�C���̎擾
        FormFile fileup = tupdownloadVO.getFileup();
        if (fileup != null) {
            String fileName = fileup.getFileName();
            int fileSize = fileup.getFileSize();
            if (fileName != null && !"".equals(fileName)) {
                if (fileSize < 0 || fileSize > maxSizeFile) {
                    sizeOver = FILE_MAX_SIZE;
                    overFileName = fileName;
                    fileup.destroy();
                    return;
                }
            }
        }
        for (int i = 0; i < 3; i++) {
            // �A�b�v���[�h�t�@�C���̎擾
            FormFile fileList = tupdownloadVO.getIndexFile(i);
            // �Y�t�t�@�C�����󔒂łȂ��ꍇ
            if (fileList != null) {
                // �t�@�C�������擾
                String fileNameList = fileList.getFileName();
                // �t�@�C���T�C�Y���擾
                int fileSizeList = fileList.getFileSize();
                if (fileNameList != null && !"".equals(fileNameList)) {
                    if (fileSizeList < 0 || fileSizeList > maxSizeFile) {
                        // erro����
                        sizeOver = FILE_MAX_SIZE;
                        overFileName = fileNameList;
                        fileList.destroy();
                        return;
                    }
                }
            }
            fileList.destroy();
        }

        // �P�t�@�C���A�b�v���[�h�@�\����
        // �Y�t�t�@�C�����󔒂łȂ��ꍇ
        if (fileup != null) {
            // �t�@�C�������擾
            String fileName = fileup.getFileName();
            // �t�@�C���T�C�Y���擾
            int fileSize = fileup.getFileSize();
            if (fileName != null && !"".equals(fileName)) {
                if (0 <= fileSize && fileSize <= maxSizeFile) {
                    // getInputStream���\�b�h���g�p���A���̓X�g���[�����擾
                    InputStream is = fileup.getInputStream();
                    // ���̓X�g���[�����o�b�t�@�����O
                    BufferedInputStream inBuffer = new BufferedInputStream(is);
                    // �t�@�C���̃A�b�v���[�h����w�肵�āA�o�̓X�g���[���𐶐�
                    FileOutputStream fos = new FileOutputStream(filePath + "/"
                        	+ fileup.getFileName());
                    // �o�̓X�g���[�����o�b�t�@�����O
                    BufferedOutputStream outBuffer = new BufferedOutputStream(
                        	fos);
                    // ���̓f�[�^���Ȃ��Ȃ�܂œ��o�͏��������s
                    int data = 0;
                    while ((data = inBuffer.read()) != -1) {
                        outBuffer.write(data);
                    }

                    // ���
                    outBuffer.flush();
                    inBuffer.close();
                    outBuffer.close();
                    // �ꎞ�̈�̃A�b�v���[�h�f�[�^���폜
                    fileup.destroy();
                    upLoadFlag = true;
                    tupdownloadVO.setFileName(fileName);
                    tupdownloadVO.setFilePath(filePath);
                    String fileSizeStr = sizeToString(fileSize);
                    tupdownloadVO.setFileSize(fileSizeStr);
                }
            }

        }

        // �����t�@�C���A�b�v���[�h�@�\����
        // �����������ƃp�X������
        String[] listFileName = new String[3];
        String[] listFilePath = new String[3];
        String[] listFileSize = new String[3];
        // ������������
        int j = 0;
        for (int i = 0; i < 3; i++) {
            // �A�b�v���[�h�t�@�C���̎擾
            FormFile fileList = tupdownloadVO.getIndexFile(i);
            // �Y�t�t�@�C�����󔒂łȂ��ꍇ
            if (fileList != null) {
                // �t�@�C�������擾
                String fileNameList = fileList.getFileName();
                // �t�@�C���T�C�Y���擾
                int fileSizeList = fileList.getFileSize();
                if (fileNameList != null && !"".equals(fileNameList)) {
                    if (0 <= fileSizeList && fileSizeList <= maxSizeFile) {
                        InputStream streamList = fileList.getInputStream();// �t�@�C���ǂݍ���
                        // �A�b�v���[�h�t�@�C�� linux�̏ꍇUploadFiles��"\\"��"/"
                        OutputStream bosList = new FileOutputStream(filePath
                        		+ "/" + fileList.getFileName());

                        request.setAttribute("fileName", filePath + "/"
                        		+ fileList.getFileName());
                        int bytesRead = 0;
                        byte[] buffer = new byte[8192];
                        // �t�@�C���A�b�v���[�h
                        while ((bytesRead = streamList.read(buffer, 0, 8192)) != -1) {
                        	bosList.write(buffer, 0, bytesRead);
                        }
                        // �t�@�C�����𐮗�����
                        listFileName[j] = fileNameList;
                        // �t�@�C���T�C�Y�𐮗�����
                        listFileSize[j] = sizeToString(fileSizeList);
                        // �t�@�C���p�X�𐮗�����
                        listFilePath[j] = filePath;
                        j++;
                        // ���
                        bosList.close();
                        streamList.close();
                        fileList.destroy();
                        upLoadFlag = true;
                    }
                }

            }
        }
        // ���������t�@�C�����ƃp�XVO�ɃZ�b�g����
        tupdownloadVO.setListFileName(listFileName);
        tupdownloadVO.setListFileSize(listFileSize);
        tupdownloadVO.setListFilePath(listFilePath);
        if (upLoadFlag) {
            sizeOver = "success";
        } else {
            sizeOver = "false";
        }
    }

    /**
     * �c�a�t�@�C���A�b�v���[�h�e�[�u���ɐV�K�t�@�C���A�b�v���[�h����o�^����B
     * 
     * @param tupdownloadVO
     *            �c�a�R�[�h���X�g��o�^����@�\�Ŏg����p�����[�^�N���X
     * @return �t�@�C���A�b�v���[�h�@�\��������
     * @throws Exception
     */
    @Override
    public BLogicResult doExecuteBLogic(TupdownloadVO tupdownloadVO)
            throws Exception {
        // DB�o�^�pVO��������
        TupdownloadVO tupdownloadVONew = new TupdownloadVO();
        // �z��t�@�C����
        String[] listFileName = tupdownloadVO.getListFileName();
        // �z��t�@�C���p�X
        String[] listFilePath = tupdownloadVO.getListFilePath();
        String[] listFileSize = tupdownloadVO.getListFileSize();
        // BL Result
        BLogicResult result = new BLogicResult();
        // �P�t�@�C���A�b�v���[�h��񏈗�
        String fileName = tupdownloadVO.getFileName();
        String filePath = tupdownloadVO.getFilePath();
        String fileSize = tupdownloadVO.getFileSize();
        // �e�[�u�����ږ�fileID
        long fileID = System.currentTimeMillis();
        // �P�t�@�C���A�b�v���[�h���o�^����
        if (fileName != null && !"".equals(fileName) && filePath != null
                && !"".equals(filePath) && fileSize != null
                && !"".equals(fileSize)) {
            tupdownloadVO.setFileId(Long.toString(fileID + 0));
            insertDBUpLoadService.insertDBUpLoad(tupdownloadVO);
        }
        // �����t�@�C���A�b�v���[�h���o�^����
        for (int i = 0; i < 3; i++) {
            tupdownloadVONew.setFileId(Long.toString(fileID + i + 1));
            tupdownloadVONew.setFileName(listFileName[i]);
            tupdownloadVONew.setFilePath(listFilePath[i]);
            tupdownloadVONew.setFileSize(listFileSize[i]);
            if (listFileName[i] != null && !"".equals(listFileName[i])
                    && listFilePath[i] != null && !"".equals(listFilePath[i])) {
                insertDBUpLoadService.insertDBUpLoad(tupdownloadVONew);
            }
        }

        // BL Result���Z�b�g����
        result.setResultObject(tupdownloadVO);
        if (sizeOver.equals("success")) {
            result.setResultString("success");
        } else {
            // �G���[���b�Z�[�W�𐶐�
            BLogicMessages errors = result.getErrors();
            if (errors == null) {
                errors = new BLogicMessages();
            }
            // �v���p�e�B�t�@�C���ŕϐ����Ȃ�
            if (sizeOver.equals("")) {
                errors.add(Globals.ERROR_KEY, new BLogicMessage(
                        FILE_UPLOAD_ERROR_MSG01));
                result.setErrors(errors);
            }
            // HTTP���N�G�X�g�T�C�Y�͂��̏���𒴉߂���
            if (sizeOver.equals(REQEST_MAX_SIZE)) {
                errors.add(Globals.ERROR_KEY, new BLogicMessage(
                        FILE_UPLOAD_ERROR_MSG02));
                result.setErrors(errors);
            }
            // �A�b�v���[�h�t�@�C���T�C�Y�͏���𒴉߂���
            if (sizeOver.equals(FILE_MAX_SIZE)) {
                errors.add(Globals.ERROR_KEY, new BLogicMessage(
                        FILE_UPLOAD_ERROR_MSG03, overFileName));
                result.setErrors(errors);
            }
            // �G���[��������
            if (sizeOver.equals("false")) {
                errors.add(Globals.ERROR_KEY, new BLogicMessage(
                        FILE_UPLOAD_ERROR_MSG04));
                result.setErrors(errors);
            }
            result.setResultString("false");
        }
        return result;
    }

    /**
     * �p�X���݃`�F�b�N<br>
     * ���݂��Ȃ��ꍇ�A���̃p�X�����<br>
     * 
     * @param path
     *            String �p�X
     * 
     * @return
     */
    private void pathCheck(String path) {
        File pfile = null;
        pfile = new File(path);
        if (!pfile.exists()) {
            pfile.mkdirs();
        }
    }

    /**
     * �T�C�Y��\�������ɐ�������<br>
     * 1000000�ȏ�̏ꍇ�A**M<br>
     * 1000   �ȏ�̏ꍇ�A**K<br>
     * 
     * @param fileSize
     *            int
     * 
     * @return
     */
    private String sizeToString(int fileSize) {
        String fileSizeStr = "";
        if (fileSize / 1000000 > 0) {
            fileSizeStr = Integer.toString(fileSize / 1000000).concat("M");
        } else if (fileSize / 1000 > 0) {
            fileSizeStr = Integer.toString(fileSize / 1000).concat("K");
        } else {
            fileSizeStr = Integer.toString(fileSize);
        }
        return fileSizeStr;
    }

    /**
     * registDBUpLoadService���擾����B
     * 
     * @return registDBUpLoadService
     */
    public InsertDBUpLoadService getInsertDBUpLoadService() {
        return insertDBUpLoadService;
    }

    /**
     * registDBUpLoadService��ݒ肷��B
     * 
     * @param registDBUpLoadService
     *            registDBUpLoadService�B
     */
    public void setInsertDBUpLoadService(
            InsertDBUpLoadService insertDBUpLoadService) {
        this.insertDBUpLoadService = insertDBUpLoadService;
    }

}
