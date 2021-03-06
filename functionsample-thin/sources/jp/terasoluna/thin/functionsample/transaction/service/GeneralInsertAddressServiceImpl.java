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
import jp.terasoluna.thin.functionsample.transaction.bean.InsertAddressParam;
import jp.terasoluna.fw.dao.UpdateDAO;

/**
 * 住所登録トランザクション処理サービス実装クラス
 *
 * @version 2006/02/23
 */
public class GeneralInsertAddressServiceImpl
        implements GeneralInsertAddressService<InsertAddressParam> {
    
    /**
     * 新規登録用DAOクラス。
     * Springによりインスタンス生成され設定される。
     */
    protected UpdateDAO updateDAO = null;

    /**
     * 住所登録を行う。<br>
     *
     * @param param 入力情報
     */
    public void insertAddress(InsertAddressParam param) {
        //住所登録処理
        AddressVO addressVO = new AddressVO();
        addressVO.setCustomerCode(param.getCustomerCode1());
        addressVO.setCustomerName(param.getCustomerName1());
        addressVO.setPostCode(param.getPostCode1());
        addressVO.setCustomerAddress(param.getCustomerAddress1());
        addressVO.setCustomerTel(param.getCustomerTel1());
        
        updateDAO.execute("transaction.insertAddressInfo", addressVO);

        addressVO = new AddressVO();
        addressVO.setCustomerCode(param.getCustomerCode2());
        addressVO.setCustomerName(param.getCustomerName2());
        addressVO.setPostCode(param.getPostCode2());
        addressVO.setCustomerAddress(param.getCustomerAddress2());
        addressVO.setCustomerTel(param.getCustomerTel2());
        
        updateDAO.execute("transaction.insertAddressInfo", addressVO);
        
        return;
    }
    
    /**
     * 新規登録用DAOを取得する。
     * @return 新規登録用DAO
     */
    public UpdateDAO getUpdateDAO() {
        return updateDAO;
    }

    /**
     * 新規登録用DAOを設定する。
     * @param updateDAO 新規登録用DAO
     */
    public void setUpdateDAO(UpdateDAO updateDAO) {
        this.updateDAO = updateDAO;
    }

}
