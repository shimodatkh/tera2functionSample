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

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import jp.terasoluna.thin.functionsample.database.bean.AddressTableVO;
import jp.terasoluna.fw.dao.QueryDAO;

/**
 * 住所録項目を取得するサービス（ArrayList版）
 *
 */
public class ArrayListAddressServiceImpl implements ArrayListAddressService {

    /**
     * DAOクラス。
     * Springによりインスタンス生成され設定される。
     */
    private QueryDAO queryDAO = null;

    /**
     * データベースから住所録リストを取得する
     *
     * @return 住所録一覧
     */
    public Map<String, List<AddressTableVO>> getListAddress() {
        Map<String, List<AddressTableVO>> retMap = new HashMap<String, List<AddressTableVO>>();
        
        // 住所録のリストを取得する。
        List<AddressTableVO> addressVO = 
                    queryDAO.executeForObjectList("database.selectListAddress",
                                                   null);
        retMap.put("listAddress", addressVO);
        return retMap;
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

    /* (非 Javadoc)
     * @see jp.terasoluna.thin.functionsample.database.service.ArrayListAddressService#searchListAddress(java.lang.String)
     */
    public Map<String, List<AddressTableVO>> searchListAddress(String name) {
        Map<String, List<AddressTableVO>> retMap = new HashMap<String, List<AddressTableVO>>();
        
        // 住所録のリストを取得する。
        List<AddressTableVO> addressVO = 
                    queryDAO.executeForObjectList("database.searchListAddress",
                                                   name);
        retMap.put("listAddress", addressVO);
        return retMap;
    }
}