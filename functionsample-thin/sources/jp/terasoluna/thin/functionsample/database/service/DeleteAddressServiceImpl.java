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

import jp.terasoluna.fw.dao.UpdateDAO;

/**
 * 住所情報を削除するBLogic。
 *
 */
public class DeleteAddressServiceImpl implements DeleteAddressService {

    /**
     * 住所録一覧取得サービス
     */
    protected ListAddressService listAddressService = null;
    
    /**
     * 削除用DAOクラス。
     * Springによりインスタンス生成され設定される。
     */
    protected UpdateDAO updateDAO = null;
    
    /**
     * 該当住所情報を削除する処理
     *
     * @param aCustomerCode 顧客コード
     * @return 住所録一覧
     */
    public Map<String, Object> resultDeleteAddress(String aCustomerCode) {

        Map<String, Object> listAddress = null;
        
        int count = updateDAO.execute("database.deleteAddress", aCustomerCode);
        if (count != 0) {
            listAddress = listAddressService.getListAddress();
        }
        
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
     * updateDAOを取得する。
     * @return updateDAO
     */
    public UpdateDAO getUpdateDAO() {
        return updateDAO;
    }

    /**
     * updateDAOを設定する。
     * @param updateDAO updateDAO。
     */
    public void setUpdateDAO(UpdateDAO updateDAO) {
        this.updateDAO = updateDAO;
    }
}