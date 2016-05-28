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
import java.util.Map;

import jp.terasoluna.thin.functionsample.database.bean.AddressTableVO;
import jp.terasoluna.fw.dao.QueryDAO;

/**
 * 住所録項目を取得するサービス。
 *
 */
public class ListAddressServiceImpl implements ListAddressService {

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
    public Map<String, Object> getListAddress() {
        Map<String, Object> retMap = new HashMap<String, Object>();
        
        // 住所録のリストを取得する。
        AddressTableVO[] addressVO = 
                    queryDAO.executeForObjectArray("database.selectListAddress",
                                                    null, 
                                                    AddressTableVO.class);
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
}