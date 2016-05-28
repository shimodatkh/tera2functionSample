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
import jp.terasoluna.thin.functionsample.transaction.bean.InsertAddressParam;
import jp.terasoluna.fw.dao.SqlHolder;
import jp.terasoluna.fw.dao.UpdateDAO;

/**
 * �Z���o�^�g�����U�N�V���������T�[�r�X�����N���X
 *
 * @version 2006/02/23
 */
public class BatchInsertAddressServiceImpl
        implements BatchInsertAddressService<InsertAddressParam> {
    
    /**
     * �V�K�o�^�pDAO�N���X�B
     * Spring�ɂ��C���X�^���X��������ݒ肳���B
     */
    protected UpdateDAO updateDAO = null;

    /**
     * �Z���o�^���s���B<br>
     *
     * @param param ���͏��
     */
    public void insertAddress(InsertAddressParam param) {
    	
    	List<SqlHolder> sqlHolders = new ArrayList<SqlHolder>();
        //�Z���o�^����
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
        return;
    }
    
    /**
     * �V�K�o�^�pDAO���擾����B
     * @return �V�K�o�^�pDAO
     */
    public UpdateDAO getUpdateDAO() {
        return updateDAO;
    }

    /**
     * �V�K�o�^�pDAO��ݒ肷��B
     * @param updateDAO �V�K�o�^�pDAO
     */
    public void setUpdateDAO(UpdateDAO updateDAO) {
        this.updateDAO = updateDAO;
    }
}
