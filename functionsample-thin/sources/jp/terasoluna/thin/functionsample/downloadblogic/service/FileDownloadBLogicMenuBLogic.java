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

package jp.terasoluna.thin.functionsample.downloadblogic.service;

import java.util.HashMap;
import java.util.Map;

import jp.terasoluna.fw.dao.QueryDAO;
import jp.terasoluna.fw.service.thin.BLogic;
import jp.terasoluna.fw.service.thin.BLogicResult;
import jp.terasoluna.thin.functionsample.downloadblogic.bean.DownloadFileBLogicInput;

/**
 * 一覧情報取得ビジネスロジック。
 * 
 * データベースから画面に表示する情報を取得する。 また、一覧情報の全件数も取得する。
 */
public class FileDownloadBLogicMenuBLogic implements BLogic<Object> {

    /**
     * DAOクラス。 Springによりインスタンス生成され設定される。
     */
    protected QueryDAO queryDAO = null;

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
     * @param queryDAO
     *            QueryDAO
     */
    public void setQueryDAO(QueryDAO dao) {
        this.queryDAO = dao;
    }

    /**
     * データベースから一覧情報を取得する。 また、一覧情報の全件数も取得し返却する。
     * 
     * @param params
     *            オブジェクト
     * @return 一覧情報
     */
    public BLogicResult execute(Object params) {

        Map<String, Object> retMap = new HashMap<String, Object>();
        // 一覧情報の全件数を取得する
        Integer count = (Integer) queryDAO.executeForObject(
                "upload.selectFileCount", null, Integer.class);
        retMap.put("totalCount", count);
        // 一覧情報を取得する
        DownloadFileBLogicInput[] beans = queryDAO.executeForObjectArray(
                "upload.selectListDownloadBLogic", null, DownloadFileBLogicInput.class);
        retMap.put("fileBeans", beans);

        // BLogicResultの生成、結果の設定
        BLogicResult result = new BLogicResult();

        result.setResultString("success");
        result.setResultObject(retMap);
        return result;
    }

}