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

import jp.terasoluna.thin.functionsample.database.bean.DeleteAddressParam;
import jp.terasoluna.thin.functionsample.database.service.DeleteAddressService;
import jp.terasoluna.fw.service.thin.BLogicResult;
import jp.terasoluna.fw.web.struts.actions.AbstractBLogicAction;

/**
 * �Z�������폜����A�N�V����
 *
 */
public class DeleteAddressAction 
                extends AbstractBLogicAction<DeleteAddressParam> {

    /**
     * �Z���폜�T�[�r�X
     */
    protected DeleteAddressService deleteAddressService = null;

    /**
     * �Y���ڋq�R�[�h�̏����폜����B
     *
     * @param param �ڋq�R�[�h
     * @return BLogicResult
     * @throws Exception 
     */
    @Override
    public BLogicResult doExecuteBLogic(DeleteAddressParam param) 
                                                throws Exception {

    	BLogicResult result = new BLogicResult();
        
        Map<String, Object> listAddress =
            deleteAddressService.resultDeleteAddress(param.getCustomerCode());
        
        // �f�[�^�x�[�X�ɏZ���^�f�[�^�������������̂܂܉�ʂɕ\������B
        result.setResultObject(listAddress);
        result.setResultString("success");

        return result;
    }

    /**
     * deleteAddressService���擾����B
     * @return deleteAddressService
     */
    public DeleteAddressService getDeleteAddressService() {
        return deleteAddressService;
    }

    /**
     * deleteAddressService��ݒ肷��B
     * @param deleteAddressService deleteAddressService�B
     */
    public void setDeleteAddressService(DeleteAddressService deleteAddressService) {
        this.deleteAddressService = deleteAddressService;
    }   
}