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

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import jp.terasoluna.thin.functionsample.database.bean.AddressTableVO;
import jp.terasoluna.thin.functionsample.database.bean.BatchAddressParam;
import jp.terasoluna.fw.dao.SqlHolder;
import jp.terasoluna.fw.dao.UpdateDAO;

/**
 * �Z���^�o�^�̃o�b�`�������s���T�[�r�X�����N���X
 * 
 */
public class ResultBatchAddressServiceImpl implements ResultBatchAddressService {

    /**
     * �Z���^�ꗗ�擾�T�[�r�X
     */
    protected ListAddressService listAddressService = null;
    
    /**
     * �o�b�`���s�pDAO�N���X�B
     * Spring�ɂ��C���X�^���X��������ݒ肳���B
     */
    protected UpdateDAO updateDAO = null;

    /**
     * �o�b�`�������s�����\�b�h
     * @param aParam BatchAddressParam
     * @return �Z���^�ꗗ
     */
    public Map<String, Object> batchAddress(BatchAddressParam aParam) {
    	
    	List<SqlHolder> sqlHolders = new ArrayList<SqlHolder>();
        
        AddressTableVO addressVO1 = new AddressTableVO();
        
        addressVO1.setCustomerCode(aParam.getCustomerCode1());
        addressVO1.setCustomerName(aParam.getCustomerName1());
        addressVO1.setPostCode(aParam.getPostCode1());
        addressVO1.setCustomerAddress(aParam.getCustomerAddress1());
        addressVO1.setCustomerTel(aParam.getCustomerTel1());
        
        sqlHolders.add(new SqlHolder("database.insertAddress", addressVO1));
        
        AddressTableVO addressVO2 = new AddressTableVO();
        
        addressVO2.setCustomerCode(aParam.getCustomerCode2());
        addressVO2.setCustomerName(aParam.getCustomerName2());
        addressVO2.setPostCode(aParam.getPostCode2());
        addressVO2.setCustomerAddress(aParam.getCustomerAddress2());
        addressVO2.setCustomerTel(aParam.getCustomerTel2());
        
        sqlHolders.add(new SqlHolder("database.insertAddress", addressVO2));
        
        updateDAO.executeBatch(sqlHolders);
        
        return listAddressService.getListAddress();
    }

    /**
     * listAddressService���擾����B
     * @return listAddressService
     */
    public ListAddressService getListAddressService() {
        return listAddressService;
    }

    /**
     * listAddressService��ݒ肷��B
     * @param listAddressService listAddressService�B
     */
    public void setListAddressService(ListAddressService listAddressService) {
        this.listAddressService = listAddressService;
    }

    /**
     * updateDAO���擾����B
     * @return updateDAO
     */
    public UpdateDAO getUpdateDAO() {
        return updateDAO;
    }

    /**
     * updateDAO��ݒ肷��B
     * @param updateDAO updateDAO�B
     */
    public void setUpdateDAO(UpdateDAO updateDAO) {
        this.updateDAO = updateDAO;
    }   
}