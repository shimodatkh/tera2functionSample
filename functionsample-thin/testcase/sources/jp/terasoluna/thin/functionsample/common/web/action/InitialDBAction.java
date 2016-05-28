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
 * データベース初期化アクション
 *
 */
public class InitialDBAction extends AbstractBLogicAction {
    /**
     * \ログクラス。
     */
    private Log log = LogFactory.getLog(InitialDBAction.class);

    /**
     * QueryDAOクラス。 Springによりインスタンス生成され設定される。
     */
    protected QueryDAO queryDAO = null;

    /**
     * UpdateDAOクラス。 Springによりインスタンス生成され設定される。
     */
    protected UpdateDAO updateDAO = null;

    /**
     * DAOクラス。
     * Springによりインスタンス生成され設定される。
     */
    protected StoredProcedureDAO spDAO = null;

    /**
     * QueryDAOを返却する。
     *
     * @return 保持するQueryDAO
     */
    public QueryDAO getQueryDAO() {
        return queryDAO;
    }

    /**
     * QueryDAOを設定する。
     *
     * @param queryDAO QueryDAO
     */
    public void setQueryDAO(QueryDAO queryDAO) {
        this.queryDAO = queryDAO;
    }

    /**
     * UpdateDAOを返却する。
     *
     * @return 保持するUpdateDAO
     */
    public UpdateDAO getUpdateDAO() {
        return updateDAO;
    }

    /**
     * UpdateDAOを設定する。
     *
     * @param updateDAO UpdateDAO
     */
    public void setUpdateDAO(UpdateDAO updateDAO) {
        this.updateDAO = updateDAO;
    }

    /**
     * spDAOを取得する。
     * @return spDAO
     */
    public StoredProcedureDAO getSpDAO() {
        return spDAO;
    }

    /**
     * spDAOを設定する。
     * @param spDAO spDAO。
     */
    public void setSpDAO(StoredProcedureDAO spDAO) {
        this.spDAO = spDAO;
    }

    /**
     * データベース初期化サービスを実行する。
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

            // DBのファイルリストから削除
            int deleteCount = updateDAO.execute("upload.deleteFile", bean);

            // 削除対象ファイルパスの生成
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