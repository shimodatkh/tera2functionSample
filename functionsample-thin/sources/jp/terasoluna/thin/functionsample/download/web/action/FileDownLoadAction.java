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

package jp.terasoluna.thin.functionsample.download.web.action;

import java.io.File;
import java.io.FileNotFoundException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;
import org.apache.struts.actions.DownloadAction;

import jp.terasoluna.thin.functionsample.authentication.web.FunctionAuthenticationController;
import jp.terasoluna.fw.web.struts.form.DynaValidatorActionFormEx;

/**
 * �t�@�C���_�E�����[�h�A�N�V����
 * 
 */
public class FileDownLoadAction extends DownloadAction {

    /**
     * ���O�N���X�B
     */
    private Log log = LogFactory.getLog(FunctionAuthenticationController.class);

    /**
     * �t�@�C�����B
     */
    protected static final String FILE_NAME = "fileName";

    /**
     * �t�@�C���p�X�B
     */
    protected static final String FILE_PATH = "filePath";

    /**
     * ���s�t���O�B
     */
    protected static final String FAILURE = "failure";

    /**
     * "Content-disposition"�B
     */
    protected static final String CONTENT_DISPOSITION = "Content-disposition";

    /**
     * "Windows-31J"�B
     */
    protected static final String WINDOWS_31J = "Windows-31J";

    /**
     * "ISO-8859-1"�B
     */
    protected static final String ISO_8859_1 = "ISO-8859-1";

    /**
     * "/"�B
     */
    protected static final String PATH_FLAG = "/";

    /**
     * �R���e���g�^�C�v�B
     */
    protected static final String CONTENT_TYPE = "";

    /**
     * �_�E�����[�h�t�@�C���O����
     * 
     * @param mapping
     *            �A�N�V�����}�b�s���O
     * @param form
     *            �A�N�V�����t�H�[��
     * @param req
     *            HTTP���N�G�X�g
     * @param res
     *            HTTP���X�|���X
     * @return �J�ڐ�̘_���t�H���[�h���B��� <code>failure</code>
     */
    @Override
    public ActionForward execute(ActionMapping mapping, ActionForm form,
            HttpServletRequest request, HttpServletResponse response)
            throws Exception {
        try {
            super.execute(mapping, form, request, response);
            return null;
        } catch (FileNotFoundException e) {
            if (log.isErrorEnabled()) {
                // �G���[�����O�ɏo�͂���
                log.error(e.getMessage());
            }
            response.reset();
            return mapping.findForward(FAILURE);
        }

    }

    /**
     * <p>
     * getStreamInfo()�̎�����B
     * </p>
     * 
     * @param mapping
     *            �A�N�V�����}�b�s���O
     * @param form
     *            �A�N�V�����t�H�[��
     * @param req
     *            HTTP���N�G�X�g
     * @param res
     *            HTTP���X�|���X
     * @return �J�ڐ�̘_���t�H���[�h���B��� <code>success</code>
     */
    @Override
    protected StreamInfo getStreamInfo(ActionMapping mapping, ActionForm form,
            HttpServletRequest request, HttpServletResponse response)
            throws Exception {
        // Action Form���擾����
        DynaValidatorActionFormEx formEx = (DynaValidatorActionFormEx) form;
        // �t�@�C�������擾
        String fileName = (String) formEx.get(FILE_NAME);
        // �t�@�C���p�X���擾
        String filePath = (String) formEx.get(FILE_PATH);

        // ���X�|���X�w�b�_�[�̐ݒ�
        response.setHeader(CONTENT_DISPOSITION, "attachment; filename="
                + new String(fileName.getBytes(WINDOWS_31J), ISO_8859_1));

        // �_�E�����[�h�t�@�C���̐���
        File file = new File(filePath + PATH_FLAG + fileName);

        // FileStreamInfo�̕ԋp
        StreamInfo si = new FileStreamInfo(CONTENT_TYPE, file);
        return si;
    }
}
