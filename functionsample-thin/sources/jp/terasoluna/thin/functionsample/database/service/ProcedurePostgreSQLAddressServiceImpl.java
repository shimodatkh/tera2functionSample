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

package jp.terasoluna.thin.functionsample.database.service;

import java.util.Map;

import jp.terasoluna.fw.dao.QueryDAO;

/**
 * プロシージャを起動するサービス
 *
 */
public class ProcedurePostgreSQLAddressServiceImpl implements ProcedureAddressService {

    /**
     * 住所録一覧取得サービス
     */
    protected ListAddressService listAddressService = null;
    
    /**
     * 新規登録用DAOクラス。
     * Springによりインスタンス生成され設定される。
     */
    private QueryDAO queryDAO = null;
    
    /**
     * 住所録テーブルを初期化するプロシージャを起動する。
     *
     * @return 住所録一覧
     */
    public Map<String, Object> initAddressTable(){
        queryDAO.executeForObject("database.initPostgreSQLAddressTable", null, null);
        
        Map<String, Object> listAddress = null;

        listAddress = listAddressService.getListAddress();
        
        return listAddress;
    }

    /**
     * listAddressServiceを取得する。
     * @return listAddressService
     */
    public ListAddressService getListAddressService() {
        return listAddressService;
    }

    /**
     * listAddressServiceを設定する。
     * @param listAddressService listAddressService。
     */
    public void setListAddressService(ListAddressService listAddressService) {
        this.listAddressService = listAddressService;
    }

    /**
     * queryDAOを取得する。
     * @return queryDAO
     */
    public QueryDAO getQueryDAO() {
        return queryDAO;
    }

    /**
     * queryDAOを設定する。
     * @param queryDAO queryDAO。
     */
    public void setQueryDAO(QueryDAO queryDAO) {
        this.queryDAO = queryDAO;
    }
}