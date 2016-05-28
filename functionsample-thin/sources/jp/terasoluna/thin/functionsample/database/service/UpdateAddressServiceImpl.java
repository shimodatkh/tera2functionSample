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

import jp.terasoluna.thin.functionsample.database.bean.AddressTableVO;
import jp.terasoluna.thin.functionsample.database.bean.UpdateAddressParam;
import jp.terasoluna.fw.dao.QueryDAO;

/**
 * 該当顧客コードの情報を取得するBLogic。
 *
 */
public class UpdateAddressServiceImpl implements UpdateAddressService {

    /**
     * DAOクラス。
     * Springによりインスタンス生成され設定される。
     */
    protected QueryDAO queryDAO = null;
    
    /**
     * 該当顧客コードの住所情報を取得する。
     *
     * @param aParam UpdateAddressParam
     * @return AddressTableVO
     */
    public AddressTableVO getAddress(UpdateAddressParam aParam) {
        
        AddressTableVO address = 
                    queryDAO.executeForObject("database.selectAddress", 
                                              aParam, 
                                              new AddressTableVO().getClass());
        return address;
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