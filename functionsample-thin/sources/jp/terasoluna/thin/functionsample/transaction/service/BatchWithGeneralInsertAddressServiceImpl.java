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

import java.util.ArrayList;
import java.util.List;

import jp.terasoluna.thin.functionsample.transaction.bean.AddressVO;
import jp.terasoluna.thin.functionsample.transaction.bean.
        GeneralWithBatchInsertAddressParam;
import jp.terasoluna.fw.dao.SqlHolder;
import jp.terasoluna.fw.dao.UpdateDAO;

/**
 * 住所登録トランザクション処理サービス実装クラス
 *
 * @version 2006/02/23
 */
public class BatchWithGeneralInsertAddressServiceImpl
        implements BatchWithGeneralInsertAddressService
        <GeneralWithBatchInsertAddressParam> {
    
    /**
     * 新規登録用DAOクラス。
     * Springによりインスタンス生成され設定される。
     */
    protected UpdateDAO updateDAO = null;

    /**
     * 住所登録を行う。<br>
     * 住所登録をした後、データベースから登録されたデータを取得し返す。<br>
     * 住所入力1,2をバッチ機能で登録した後、住所入力3を一般機能で登録する。 
     *
     * @param param 入力情報
     */
    public void insertAddress(GeneralWithBatchInsertAddressParam param) {
    	
    	List<SqlHolder> sqlHolders = new ArrayList<SqlHolder>();
    	
        //住所登録処理
        AddressVO addressVO1 = new AddressVO();
        addressVO1.setCustomerCode(param.getCustomerCode1());
        addressVO1.setCustomerName(param.getCustomerName1());
        addressVO1.setPostCode(param.getPostCode1());
        addressVO1.setCustomerAddress(param.getCustomerAddress1());
        addressVO1.setCustomerTel(param.getCustomerTel1());
        
        sqlHolders.add(
        		new SqlHolder("transaction.insertAddressInfo", addressVO1));

        AddressVO addressVO2 = new AddressVO();
        addressVO2.setCustomerCode(param.getCustomerCode2());
        addressVO2.setCustomerName(param.getCustomerName2());
        addressVO2.setPostCode(param.getPostCode2());
        addressVO2.setCustomerAddress(param.getCustomerAddress2());
        addressVO2.setCustomerTel(param.getCustomerTel2());
        
        sqlHolders.add(
        		new SqlHolder("transaction.insertAddressInfo", addressVO2));
        
        updateDAO.executeBatch(sqlHolders);
        
        AddressVO addressVO3 = new AddressVO();
        addressVO3.setCustomerCode(param.getCustomerCode3());
        addressVO3.setCustomerName(param.getCustomerName3());
        addressVO3.setPostCode(param.getPostCode3());
        addressVO3.setCustomerAddress(param.getCustomerAddress3());
        addressVO3.setCustomerTel(param.getCustomerTel3());
        
        updateDAO.execute("transaction.insertAddressInfo", addressVO3);

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
