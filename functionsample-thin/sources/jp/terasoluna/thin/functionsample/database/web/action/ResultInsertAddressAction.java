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

import jp.terasoluna.thin.functionsample.database.bean.AddressTableVO;
import jp.terasoluna.thin.functionsample.database.service.ResultInsertAddressService;
import jp.terasoluna.fw.service.thin.BLogicResult;
import jp.terasoluna.fw.web.struts.actions.AbstractBLogicAction;

/**
 * �V�K�f�[�^��o�^����A�N�V����
 * 
 */
public class ResultInsertAddressAction extends
        AbstractBLogicAction<AddressTableVO> {
    
    /**
     * �Z���^�o�^�T�[�r�X
     */
    protected ResultInsertAddressService resultInsertAddressService = null;
    
    /**
     * �Z������V�K�o�^����B
     *
     * @param param AddressTableVO
     * @return BLogicResult
     * @throws Exception 
     */
    @Override
    public BLogicResult doExecuteBLogic(AddressTableVO param)
                                                        throws Exception {
        
        // �������ʂ��i�[���邽�߂̃I�u�W�F�N�g
    	BLogicResult result = new BLogicResult();
        Map<String, Object> listAddress =
            resultInsertAddressService.insertAddress(param);
            
        // �f�[�^�x�[�X�ɏZ���^�f�[�^�������������̂܂܉�ʂɕ\������B
        result.setResultObject(listAddress);
        result.setResultString("success");
        
        return result;
    }

    /**
     * resultInsertAddressService���擾����B
     * @return resultInsertAddressService
     */
    public ResultInsertAddressService getResultInsertAddressService() {
        return resultInsertAddressService;
    }

    /**
     * resultInsertAddressService��ݒ肷��B
     * @param resultInsertAddressService resultInsertAddressService�B
     */
    public void setResultInsertAddressService(
            ResultInsertAddressService resultInsertAddressService) {
        this.resultInsertAddressService = resultInsertAddressService;
    }
}