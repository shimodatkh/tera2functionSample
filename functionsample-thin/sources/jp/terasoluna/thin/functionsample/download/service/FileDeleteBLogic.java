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
 * ファイル削除ビジネスロジック。
 *
 * ファイルを削除する。
 *
 */
public class FileDeleteBLogic implements BLogic<FileDownLoadMenuBean> {

    /**
     * \ログクラス。
     */
    private Log log = LogFactory.getLog(FileDeleteBLogic.class);

    /**
     * QueryDAOクラス。 Springによりインスタンス生成され設定される。
     */
    protected QueryDAO queryDAO = null;

    /**
     * UpdateDAOクラス。 Springによりインスタンス生成され設定される。
     */
    protected UpdateDAO updateDAO = null;

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
     * ファイルを削除する。
     *
     * @see jp.terasoluna.fw.service.thin.BLogic#execute(P)
     */
    public BLogicResult execute(FileDownLoadMenuBean param) {
        BLogicResult result = new BLogicResult();

        // ファイル名を取得
        String fileName = param.getFileName();
        // ファイルパスを取得
        String filePath = param.getFilePath();

        if (log.isDebugEnabled()) {
            log.debug("fileName:" + fileName);
            log.debug("filePath:" + filePath);
        }

        // 削除候補リスト取得
        List<FileDownLoadMenuBean> list = queryDAO.executeForObjectList(
                "upload.selectDeleteFile", param);

        if (list != null && list.size() > 0) {
            // 削除対象ファイルパスの生成
            String fileFullPath = filePath + File.separator + fileName;
            File file = new File(fileFullPath);

            // DBのファイルリストから削除
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