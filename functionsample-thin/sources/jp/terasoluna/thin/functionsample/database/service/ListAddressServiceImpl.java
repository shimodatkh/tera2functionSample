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
import java.util.Map;

import jp.terasoluna.thin.functionsample.database.bean.AddressTableVO;
import jp.terasoluna.fw.dao.QueryDAO;

/**
 * �Z���^���ڂ��擾����T�[�r�X�B
 *
 */
public class ListAddressServiceImpl implements ListAddressService {

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
    public Map<String, Object> getListAddress() {
        Map<String, Object> retMap = new HashMap<String, Object>();
        
        // �Z���^�̃��X�g���擾����B
        AddressTableVO[] addressVO = 
                    queryDAO.executeForObjectArray("database.selectListAddress",
                                                    null, 
                                                    AddressTableVO.class);
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
}