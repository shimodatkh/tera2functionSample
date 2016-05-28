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
 * �Z������ύX����T�[�r�X�B
 *
 */
public class ResultUpdateAddressServiceImpl 
                            implements ResultUpdateAddressService {
    
    /**
     * �Z���^�ꗗ�擾�T�[�r�X
     */
    protected ListAddressService listAddressService = null;
    
    /**
     * �f�[�^�ύX�pDAO�N���X�B
     * Spring�ɂ��C���X�^���X��������ݒ肳���B
     */
    protected UpdateDAO updateDAO = null;

    /**
     * �Y���Z���f�[�^��ύX����B
     *
     * @param aParam AddressTableVO
     * @return �Z���^�ꗗ
     */
    public Map<String, Object> updateAddress(AddressTableVO aParam) {
        
        // �X�V
        int count = updateDAO.execute("database.updateAddress", aParam);
        
        Map<String, Object> listAddress = null;
        if (count != 0) {
            listAddress = listAddressService.getListAddress();
        }
        
        return listAddress;
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