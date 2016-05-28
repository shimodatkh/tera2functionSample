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

import jp.terasoluna.thin.functionsample.database.bean.AddressTableVO;
import jp.terasoluna.fw.dao.UpdateDAO;

/**
 * 住所情報を変更するサービス。
 *
 */
public class ResultUpdateAddressServiceImpl 
                            implements ResultUpdateAddressService {
    
    /**
     * 住所録一覧取得サービス
     */
    protected ListAddressService listAddressService = null;
    
    /**
     * データ変更用DAOクラス。
     * Springによりインスタンス生成され設定される。
     */
    protected UpdateDAO updateDAO = null;

    /**
     * 該当住所データを変更する。
     *
     * @param aParam AddressTableVO
     * @return 住所録一覧
     */
    public Map<String, Object> updateAddress(AddressTableVO aParam) {
        
        // 更新
        int count = updateDAO.execute("database.updateAddress", aParam);
        
        Map<String, Object> listAddress = null;
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