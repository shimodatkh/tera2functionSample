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

package jp.terasoluna.thin.functionsample.common.web.action;

import java.io.File;
import java.util.List;
import java.util.Iterator;

import jp.terasoluna.fw.dao.QueryDAO;
import jp.terasoluna.fw.dao.StoredProcedureDAO;
import jp.terasoluna.fw.dao.UpdateDAO;
import jp.terasoluna.fw.service.thin.BLogicResult;
import jp.terasoluna.fw.web.struts.actions.AbstractBLogicAction;
import jp.terasoluna.thin.functionsample.download.bean.FileDownLoadMenuBean;
import jp.terasoluna.thin.functionsample.download.service.FileDeleteBLogic;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;

/**
 * �f�[�^�x�[�X�������A�N�V����
 *
 */
public class InitialDBAction extends AbstractBLogicAction {
    /**
     * \���O�N���X�B
     */
    private Log log = LogFactory.getLog(InitialDBAction.class);

    /**
     * QueryDAO�N���X�B Spring�ɂ��C���X�^���X��������ݒ肳���B
     */
    protected QueryDAO queryDAO = null;

    /**
     * UpdateDAO�N���X�B Spring�ɂ��C���X�^���X��������ݒ肳���B
     */
    protected UpdateDAO updateDAO = null;

    /**
     * DAO�N���X�B
     * Spring�ɂ��C���X�^���X��������ݒ肳���B
     */
    protected StoredProcedureDAO spDAO = null;

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
     * spDAO���擾����B
     * @return spDAO
     */
    public StoredProcedureDAO getSpDAO() {
        return spDAO;
    }

    /**
     * spDAO��ݒ肷��B
     * @param spDAO spDAO�B
     */
    public void setSpDAO(StoredProcedureDAO spDAO) {
        this.spDAO = spDAO;
    }

    /**
     * �f�[�^�x�[�X�������T�[�r�X�����s����B
     *
     * @param param
     * @return BLogicResult
     * @throws Exception
     */
    @Override
    public BLogicResult doExecuteBLogic(Object param) throws Exception {
        BLogicResult result = new BLogicResult();

        List<FileDownLoadMenuBean> list = queryDAO.executeForObjectList(
                "upload.selectListDownload", null);
        for (Iterator iterator = list.iterator(); iterator.hasNext();) {
            FileDownLoadMenuBean bean = (FileDownLoadMenuBean) iterator.next();

            // DB�̃t�@�C�����X�g����폜
            int deleteCount = updateDAO.execute("upload.deleteFile", bean);

            // �폜�Ώۃt�@�C���p�X�̐���
            String fileFullPath = bean.getFilePath() + File.separator
                    + bean.getFileName();

            File file = new File(fileFullPath);
            if (file.exists()) {
                file.delete();
            } else {
                if (log.isDebugEnabled()) {
                    log.debug("file not found:" + fileFullPath);
                }
            }
        }

        spDAO.executeForObject("initial.initialDB", null);
        result.setResultString("success");
        return result;
    }
}