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

package jp.terasoluna.thin.functionsample.upload.bean;

import java.io.Serializable;

import org.apache.struts.upload.FormFile;

/**
 * �c�a�R�[�h���X�g��o�^����@�\�Ŏg����p�����[�^�N���X
 * 
 */
public class TupdownloadVO implements Serializable {

    /**
     * �V���A���o�[�W����ID
     */
    private static final long serialVersionUID = 4552157371398919631L;

    /**
     * �A�b�v���[�h�t�@�C���B
     */
    private FormFile fileup = null;

    /**
     * �A�b�v���[�h�t�@�C�����B
     */
    private String fileName = null;

    /**
     * �A�b�v���[�h�t�@�C���p�X�B
     */
    private String filePath = null;

    /**
     * �A�b�v���[�h�t�@�C���T�C�Y�B
     */
    private String fileSize = null;

    /**
     * �A�b�v���[�h�t�@�C��ID�B
     */
    private String fileId = null;

    /**
     * �A�b�v���[�h�t�@�C�����I�u�W�F�N�g�B
     */
    private FormFile[] listFile = null;

    /**
     * �A�b�v���[�h�t�@�C�����I�u�W�F�N�g�B
     */
    private String[] listFileName = null;

    /**
     * �A�b�v���[�h�t�@�C���T�C�Y�I�u�W�F�N�g�B
     */
    private String[] listFileSize = null;

    /**
     * �A�b�v���[�h�t�@�C���p�X�I�u�W�F�N�g�B
     */
    private String[] listFilePath = null;

    /**
     * �A�b�v���[�h�t�@�C��ID��ԋp����B
     * 
     * @return �ێ�����A�b�v���[�h�t�@�C��ID
     */

    public String getFileId() {
        return fileId;
    }

    /**
     * �A�b�v���[�h�t�@�C��ID��ݒ肷��B
     * 
     * @param fileId
     *            �A�b�v���[�h�t�@�C��ID�B
     */
    public void setFileId(String fileId) {
        this.fileId = fileId;
    }

    /**
     * �A�b�v���[�h�t�@�C������ԋp����B
     * 
     * @return �ێ�����A�b�v���[�h�t�@�C����
     */

    public String getFileName() {
        return fileName;
    }

    /**
     * �A�b�v���[�h�t�@�C������ݒ肷��B
     * 
     * @param fileName
     *            �A�b�v���[�h�t�@�C�����B
     */
    public void setFileName(String fileName) {
        this.fileName = fileName;
    }

    /**
     * �A�b�v���[�h�t�@�C���p�X��ԋp����B
     * 
     * @return �ێ�����A�b�v���[�h�t�@�C���p�X
     */

    public String getFilePath() {
        return filePath;
    }

    /**
     * �A�b�v���[�h�t�@�C���p�X��ݒ肷��B
     * 
     * @param filePath
     *            �A�b�v���[�h�t�@�C���p�X�B
     */
    public void setFilePath(String filePath) {
        this.filePath = filePath;
    }

    /**
     * �A�b�v���[�h�t�@�C���p�X��ԋp����B
     * 
     * @return �ێ�����A�b�v���[�h�t�@�C���p�X
     */

    public FormFile getFileup() {
        return fileup;
    }

    /**
     * �A�b�v���[�h�t�@�C���p�X��ݒ肷��B
     * 
     * @param fileup
     *            �A�b�v���[�h�t�@�C���p�X�B
     */
    public void setFileup(FormFile fileup) {
        this.fileup = fileup;
    }

    /**
     * �A�b�v���[�h�t�@�C���I�u�W�F�N�g��ԋp����B
     * 
     * @return �ێ�����A�b�v���[�h�t�@�C���I�u�W�F�N�g
     */

    public FormFile[] getListFile() {
        return listFile;
    }

    /**
     * �A�b�v���[�h�t�@�C���I�u�W�F�N�g��ݒ肷��B
     * 
     * @param listFile
     *            �A�b�v���[�h�t�@�C���I�u�W�F�N�g�B
     */
    public void setListFile(FormFile[] listFile) {
        this.listFile = listFile;
    }

    /**
     * �A�b�v���[�h�t�@�C�����I�u�W�F�N�g��ԋp����B
     * 
     * @return �ێ�����A�b�v���[�h�t�@�C�����I�u�W�F�N�g
     */

    public String[] getListFileName() {
        return listFileName;
    }

    /**
     * �A�b�v���[�h�t�@�C�����I�u�W�F�N�g��ݒ肷��B
     * 
     * @param listFileName
     *            �A�b�v���[�h�t�@�C�����I�u�W�F�N�g�B
     */
    public void setListFileName(String[] listFileName) {
        this.listFileName = listFileName;
    }

    /**
     * �A�b�v���[�h�t�@�C���p�X�I�u�W�F�N�g��ԋp����B
     * 
     * @return �ێ�����A�b�v���[�h�t�@�C���p�X�I�u�W�F�N�g
     */

    public String[] getListFilePath() {
        return listFilePath;
    }

    /**
     * �A�b�v���[�h�t�@�C���p�X�I�u�W�F�N�g��ݒ肷��B
     * 
     * @param listFilePath
     *            �A�b�v���[�h�t�@�C���p�X�I�u�W�F�N�g�B
     */
    public void setListFilePath(String[] listFilePath) {
        this.listFilePath = listFilePath;
    }

    /**
     * <p>
     * �t�@�C����ݒ肷��B
     * </p>
     * 
     * @param index
     *            �C���f�b�N�X
     * @param infoFile
     *            �t�@�C��
     */
    public void setIndexFile(int index, FormFile infoFile) {
        this.listFile[index] = infoFile;
    }

    /**
     * <p>
     * �t�@�C�����擾����B
     * </p>
     * 
     * @param index
     *            �C���f�b�N�X
     * @return �t�@�C��
     */
    public FormFile getIndexFile(int index) {
        return listFile[index];
    }

    /**
     * �A�b�v���[�h�t�@�C���T�C�Y��ԋp����B
     * @return �ێ�����A�b�v���[�h�t�@�C���T�C�Y
     */
    
    public String getFileSize() {
        return fileSize;
    }

    /**
     * �A�b�v���[�h�t�@�C���T�C�Y��ݒ肷��B
     * 
     * @param fileSize
     *            �A�b�v���[�h�t�@�C���T�C�Y�B
     */
    public void setFileSize(String fileSize) {
        this.fileSize = fileSize;
    }

    /**
     * �A�b�v���[�h�t�@�C���T�C�Y�I�u�W�F�N�g��ԋp����B
     * @return �ێ�����A�b�v���[�h�t�@�C���T�C�Y�I�u�W�F�N�g
     */
    
    public String[] getListFileSize() {
        return listFileSize;
    }

    /**
     * �A�b�v���[�h�t�@�C���T�C�Y�I�u�W�F�N�g��ݒ肷��B
     * @param listFileSize �A�b�v���[�h�t�@�C���T�C�Y�I�u�W�F�N�g�B
     */
    public void setListFileSize(String[] listFileSize) {
        this.listFileSize = listFileSize;
    }

}
