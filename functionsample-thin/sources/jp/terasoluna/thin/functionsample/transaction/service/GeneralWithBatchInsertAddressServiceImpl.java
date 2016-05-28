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
 * �Z���o�^�g�����U�N�V���������T�[�r�X�����N���X
 *
 * @version 2006/02/23
 */
public class GeneralWithBatchInsertAddressServiceImpl
        implements GeneralWithBatchInsertAddressService
        <GeneralWithBatchInsertAddressParam> {
    
    /**
     * �V�K�o�^�pDAO�N���X�B
     * Spring�ɂ��C���X�^���X��������ݒ肳���B
     */
    protected UpdateDAO updateDAO = null;

    /**
     * �Z���o�^���s���B<br>
     * �Z���o�^��������A�f�[�^�x�[�X����o�^���ꂽ�f�[�^���擾���Ԃ��B<br>
     * �Z������1����ʋ@�\�œo�^������A�Z������2,3���o�b�`�@�\�œo�^����B
     *
     * @param param ���͏��
     */
    public void insertAddress(GeneralWithBatchInsertAddressParam param) {
        //�Z���o�^����
        AddressVO addressVO1 = new AddressVO();
        addressVO1.setCustomerCode(param.getCustomerCode1());
        addressVO1.setCustomerName(param.getCustomerName1());
        addressVO1.setPostCode(param.getPostCode1());
        addressVO1.setCustomerAddress(param.getCustomerAddress1());
        addressVO1.setCustomerTel(param.getCustomerTel1());
        
        updateDAO.execute("transaction.insertAddressInfo", addressVO1);
        
        List<SqlHolder> sqlHolders = new ArrayList<SqlHolder>();

        AddressVO addressVO2 = new AddressVO();
        addressVO2.setCustomerCode(param.getCustomerCode2());
        addressVO2.setCustomerName(param.getCustomerName2());
        addressVO2.setPostCode(param.getPostCode2());
        addressVO2.setCustomerAddress(param.getCustomerAddress2());
        addressVO2.setCustomerTel(param.getCustomerTel2());
        
        sqlHolders.add(
        		new SqlHolder("transaction.insertAddressInfo", addressVO2));

        AddressVO addressVO3 = new AddressVO();
        addressVO3.setCustomerCode(param.getCustomerCode3());
        addressVO3.setCustomerName(param.getCustomerName3());
        addressVO3.setPostCode(param.getPostCode3());
        addressVO3.setCustomerAddress(param.getCustomerAddress3());
        addressVO3.setCustomerTel(param.getCustomerTel3());
        
        sqlHolders.add(
        		new SqlHolder("transaction.insertAddressInfo", addressVO3));
        
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
