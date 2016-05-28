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

package jp.terasoluna.thin.functionsample.database.web.action;

import java.util.Map;

import jp.terasoluna.thin.functionsample.database.bean.BatchAddressParam;
import jp.terasoluna.thin.functionsample.database.service.ResultBatchAddressService;
import jp.terasoluna.fw.service.thin.BLogicResult;
import jp.terasoluna.fw.web.struts.actions.AbstractBLogicAction;

/**
 * �o�b�`�������s���A�N�V�����N���X�B
 * 
 */
public class ResultBatchAddressAction extends AbstractBLogicAction<BatchAddressParam> {

    /**
     * �ꊇ�o�^�����T�[�r�X
     */
    protected ResultBatchAddressService resultBatchAddressService = null;
    
    /**
     * �o�b�`�������s���B
     * @param param BatchAddressParam
     * @return BLogicResult
     * @throws Exception
     */
    @Override
    public BLogicResult doExecuteBLogic(BatchAddressParam param) throws Exception {
        // �������ʂ��i�[���邽�߂̃I�u�W�F�N�g
    	BLogicResult result = new BLogicResult();
        Map<String, Object> listAddress
        = resultBatchAddressService.batchAddress(param);
        
        // �f�[�^�x�[�X�ɏZ���^�f�[�^�������������̂܂܉�ʂɕ\������B
        result.setResultObject(listAddress);
        result.setResultString("success");
        
        return result;
    }

    /**
     * resultBatchAddressService���擾����B
     * @return resultBatchAddressService
     */
    public ResultBatchAddressService getResultBatchAddressService() {
        return resultBatchAddressService;
    }

    /**
     * resultBatchAddressService��ݒ肷��B
     * @param resultBatchAddressService resultBatchAddressService�B
     */
    public void setResultBatchAddressService(
            ResultBatchAddressService resultBatchAddressService) {
        this.resultBatchAddressService = resultBatchAddressService;
    }
}