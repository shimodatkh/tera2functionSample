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

package jp.terasoluna.thin.functionsample.transaction.web.action;

import jp.terasoluna.thin.functionsample.transaction.bean.InsertAddressParam;
import jp.terasoluna.thin.functionsample.transaction.service.
        BatchInsertAddressService;
import jp.terasoluna.fw.service.thin.BLogicResult;
import jp.terasoluna.fw.web.struts.actions.AbstractBLogicAction;

/**
 * �o�b�`�@�\���g�p�����Z�����o�^�A�N�V�����N���X�B
 *
 * @version 2006/02/23
 */
public class BatchInsertAddressAction extends
        AbstractBLogicAction<InsertAddressParam> {
    
    /**
     * �o�b�`�@�\���g�p�����Z�����o�^�T�[�r�X
     */
    protected BatchInsertAddressService<InsertAddressParam>
        batchInsertAddressService = null;
    
    /**
     * �Z�����o�^�������s���B
     * @param param �Z�����
     * @return �ڋq�R�[�h���X�g
     * @throws Exception �\�����ʗ�O
     */
    @Override
    public BLogicResult doExecuteBLogic(InsertAddressParam param) 
                    throws Exception {
        
        // �������ʂ��i�[���邽�߂̃I�u�W�F�N�g
    	BLogicResult result = new BLogicResult();
        
        batchInsertAddressService.insertAddress(param);
        
        result.setResultString("success");

        return result;
    }

    /**
     * �o�b�`�@�\���g�p�����Z�����o�^�T�[�r�X��Ԃ��B
     * @return �o�b�`�@�\���g�p�����Z�����o�^�T�[�r�X�T�[�r�X
     */
    public BatchInsertAddressService<InsertAddressParam>
    getBatchInsertAddressService() {
        return batchInsertAddressService;
    }

    /**
     * �o�b�`�@�\���g�p�����Z�����o�^�T�[�r�X��ݒ肷��B
     * @param batchInsertAddressService
     *         �o�b�`�@�\���g�p�����Z�����o�^�T�[�r�X�T�[�r�X
     */
    public void setBatchInsertAddressService(
            BatchInsertAddressService<InsertAddressParam>
            batchInsertAddressService) {
        this.batchInsertAddressService = batchInsertAddressService;
    }
}
