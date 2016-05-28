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

import jp.terasoluna.fw.dao.StoredProcedureDAO;

/**
 * �v���V�[�W�����N������T�[�r�X
 *
 */
public class ProcedureAddressServiceImpl implements ProcedureAddressService {

    /**
     * �Z���^�ꗗ�擾�T�[�r�X
     */
    protected ListAddressService listAddressService = null;
    
    /**
     * �V�K�o�^�pDAO�N���X�B
     * Spring�ɂ��C���X�^���X��������ݒ肳���B
     */
    private StoredProcedureDAO spDAO = null;
    
    /**
     * �Z���^�e�[�u��������������v���V�[�W�����N������B
     *
     * @return �Z���^�ꗗ
     */
    public Map<String, Object> initAddressTable(){
        spDAO.executeForObject("database.initAddressTable", null);
        
        Map<String, Object> listAddress = null;

        listAddress = listAddressService.getListAddress();
        
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
     * spDAO���擾����B
     * @return spDAO
     */
    public StoredProcedureDAO getSpDAO() {
        return spDAO;
    }

    /**
     * spDAO��ݒ肷��B
     * @param spDAO spDAO�B
     */
    public void setSpDAO(StoredProcedureDAO spDAO) {
        this.spDAO = spDAO;
    }
}