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
import jp.terasoluna.fw.dao.QueryDAO;

/**
 * �Z�����擾�����T�[�r�X�̎����N���X
 *
 * @version 2006/03/06
 */
public class SelectAddressServiceImpl implements SelectAddressService {

    /**
     * �Z���擾�pDAO 
     */
    private QueryDAO queryDAO = null;

    /**
     * �f�[�^�x�[�X����Z�������擾����
     * 
     * @param customerCode �ڋq�R�[�h
     * @return �Z�����
     */
    public AddressVO getListAddress(String customerCode) {
        // �Z���^�̃��X�g���擾����B
        return queryDAO.executeForObject("transaction.selectAddressInfo",
                customerCode, AddressVO.class);
    }

    /**
     * �Z���擾�pDAO���擾����B
     * @return �Z���擾�pDAO
     */
    public QueryDAO getQueryDAO() {
        return queryDAO;
    }

    /**
     * �Z���擾�pDAO��ݒ肷��B
     * @param queryDAO �Z���擾�pDAO
     */
    public void setQueryDAO(QueryDAO queryDAO) {
        this.queryDAO = queryDAO;
    }
}