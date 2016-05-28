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

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import jp.terasoluna.thin.functionsample.database.bean.AddressTableVO;
import jp.terasoluna.fw.dao.QueryDAO;

/**
 * �Z���^���ڂ��擾����T�[�r�X�iArrayList�Łj
 *
 */
public class ArrayListAddressServiceImpl implements ArrayListAddressService {

    /**
     * DAO�N���X�B
     * Spring�ɂ��C���X�^���X��������ݒ肳���B
     */
    private QueryDAO queryDAO = null;

    /**
     * �f�[�^�x�[�X����Z���^���X�g���擾����
     *
     * @return �Z���^�ꗗ
     */
    public Map<String, List<AddressTableVO>> getListAddress() {
        Map<String, List<AddressTableVO>> retMap = new HashMap<String, List<AddressTableVO>>();
        
        // �Z���^�̃��X�g���擾����B
        List<AddressTableVO> addressVO = 
                    queryDAO.executeForObjectList("database.selectListAddress",
                                                   null);
        retMap.put("listAddress", addressVO);
        return retMap;
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

    /* (�� Javadoc)
     * @see jp.terasoluna.thin.functionsample.database.service.ArrayListAddressService#searchListAddress(java.lang.String)
     */
    public Map<String, List<AddressTableVO>> searchListAddress(String name) {
        Map<String, List<AddressTableVO>> retMap = new HashMap<String, List<AddressTableVO>>();
        
        // �Z���^�̃��X�g���擾����B
        List<AddressTableVO> addressVO = 
                    queryDAO.executeForObjectList("database.searchListAddress",
                                                   name);
        retMap.put("listAddress", addressVO);
        return retMap;
    }
}