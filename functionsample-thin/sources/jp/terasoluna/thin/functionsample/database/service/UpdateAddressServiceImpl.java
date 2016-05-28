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
 * �Y���ڋq�R�[�h�̏����擾����BLogic�B
 *
 */
public class UpdateAddressServiceImpl implements UpdateAddressService {

    /**
     * DAO�N���X�B
     * Spring�ɂ��C���X�^���X��������ݒ肳���B
     */
    protected QueryDAO queryDAO = null;
    
    /**
     * �Y���ڋq�R�[�h�̏Z�������擾����B
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
     * queryDAO���擾����B
     * @return queryDAO
     */
    public QueryDAO getQueryDAO() {
        return queryDAO;
    }

    /**
     * queryDAO��ݒ肷��B
     * @param queryDAO queryDAO�B
     */
    public void setQueryDAO(QueryDAO queryDAO) {
        this.queryDAO = queryDAO;
    }   
}