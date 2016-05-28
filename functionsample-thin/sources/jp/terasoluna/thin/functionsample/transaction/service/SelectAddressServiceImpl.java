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

package jp.terasoluna.thin.functionsample.transaction.service;

import jp.terasoluna.thin.functionsample.transaction.bean.AddressVO;
import jp.terasoluna.fw.dao.QueryDAO;

/**
 * 住所情報取得処理サービスの実装クラス
 *
 * @version 2006/03/06
 */
public class SelectAddressServiceImpl implements SelectAddressService {

    /**
     * 住所取得用DAO 
     */
    private QueryDAO queryDAO = null;

    /**
     * データベースから住所情報を取得する｡
     * 
     * @param customerCode 顧客コード
     * @return 住所情報
     */
    public AddressVO getListAddress(String customerCode) {
        // 住所録のリストを取得する。
        return queryDAO.executeForObject("transaction.selectAddressInfo",
                customerCode, AddressVO.class);
    }

    /**
     * 住所取得用DAOを取得する。
     * @return 住所取得用DAO
     */
    public QueryDAO getQueryDAO() {
        return queryDAO;
    }

    /**
     * 住所取得用DAOを設定する。
     * @param queryDAO 住所取得用DAO
     */
    public void setQueryDAO(QueryDAO queryDAO) {
        this.queryDAO = queryDAO;
    }
}
