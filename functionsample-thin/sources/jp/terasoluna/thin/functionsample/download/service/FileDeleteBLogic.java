/*
 * Copyright (c) 2009 NTT DATA Corporation
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

package jp.terasoluna.thin.functionsample.download.service;

import java.io.File;
import java.util.List;

import jp.terasoluna.fw.dao.QueryDAO;
import jp.terasoluna.fw.dao.UpdateDAO;
import jp.terasoluna.fw.service.thin.BLogic;
import jp.terasoluna.fw.service.thin.BLogicResult;
import jp.terasoluna.thin.functionsample.download.bean.FileDownLoadMenuBean;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;

/**
 * �t�@�C���폜�r�W�l�X���W�b�N�B
 *
 * �t�@�C�����폜����B
 *
 */
public class FileDeleteBLogic implements BLogic<FileDownLoadMenuBean> {

    /**
     * \���O�N���X�B
     */
    private Log log = LogFactory.getLog(FileDeleteBLogic.class);

    /**
     * QueryDAO�N���X�B Spring�ɂ��C���X�^���X��������ݒ肳���B
     */
    protected QueryDAO queryDAO = null;

    /**
     * UpdateDAO�N���X�B Spring�ɂ��C���X�^���X��������ݒ肳���B
     */
    protected UpdateDAO updateDAO = null;

    /**
     * QueryDAO��ԋp����B
     *
     * @return �ێ�����QueryDAO
     */
    public QueryDAO getQueryDAO() {
        return queryDAO;
    }

    /**
     * QueryDAO��ݒ肷��B
     *
     * @param queryDAO QueryDAO
     */
    public void setQueryDAO(QueryDAO queryDAO) {
        this.queryDAO = queryDAO;
    }

    /**
     * UpdateDAO��ԋp����B
     *
     * @return �ێ�����UpdateDAO
     */
    public UpdateDAO getUpdateDAO() {
        return updateDAO;
    }

    /**
     * UpdateDAO��ݒ肷��B
     *
     * @param updateDAO UpdateDAO
     */
    public void setUpdateDAO(UpdateDAO updateDAO) {
        this.updateDAO = updateDAO;
    }

    /**
     * �t�@�C�����폜����B
     *
     * @see jp.terasoluna.fw.service.thin.BLogic#execute(P)
     */
    public BLogicResult execute(FileDownLoadMenuBean param) {
        BLogicResult result = new BLogicResult();

        // �t�@�C�������擾
        String fileName = param.getFileName();
        // �t�@�C���p�X���擾
        String filePath = param.getFilePath();

        if (log.isDebugEnabled()) {
            log.debug("fileName:" + fileName);
            log.debug("filePath:" + filePath);
        }

        // �폜��⃊�X�g�擾
        List<FileDownLoadMenuBean> list = queryDAO.executeForObjectList(
                "upload.selectDeleteFile", param);

        if (list != null && list.size() > 0) {
            // �폜�Ώۃt�@�C���p�X�̐���
            String fileFullPath = filePath + File.separator + fileName;
            File file = new File(fileFullPath);

            // DB�̃t�@�C�����X�g����폜
            int deleteCount = updateDAO.execute("upload.deleteFile", param);

            if (file.exists()) {
                if (deleteCount > 0) {
                    file.delete();
                }
            } else {
                if (log.isDebugEnabled()) {
                    log.debug("file not found:" + fileFullPath);
                }
            }

            result.setResultString("success");
        } else {
            if (log.isDebugEnabled()) {
                log.debug("list is null.");
            }
            result.setResultString("failure");
        }

        return result;
    }

}