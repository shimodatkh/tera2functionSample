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
import jp.terasoluna.thin.functionsample.database.service.ResultUpdateAddressService;
import jp.terasoluna.fw.service.thin.BLogicResult;
import jp.terasoluna.fw.web.struts.actions.AbstractBLogicAction;

/**
 * �Z������ύX����A�N�V����
 *
 */
public class ResultUpdateAddressAction extends
        AbstractBLogicAction<AddressTableVO> {
    
    /**
     * �Z���X�V�T�[�r�X
     */
    protected ResultUpdateAddressService resultUpdateAddressService = null;
    
    /**
     * 
     * �P�D�Y���ڋq�R�[�h���o�^����Ă��邩�ǂ����`�F�b�N����B
     * �Q�D�Y���ڋq�R�[�h��������΁A�G���[��ݒ肵�A�G���[��ʂ�\������B
     * �R�D�Y���ڋq�R�[�h������΁A�Z������ύX����B
     *
     * @param param AddressTableVO
     * @return BLogicResult
     * @throws Exception
     */
    @Override
    public BLogicResult doExecuteBLogic(AddressTableVO param) 
                                        throws Exception {
        
    	BLogicResult result = new BLogicResult();
        Map<String, Object> listAddress;
        
        listAddress = resultUpdateAddressService.updateAddress(param);
        
        // �f�[�^�x�[�X�ɏZ���^�f�[�^�������������̂܂܉�ʂɕ\������B
        result.setResultObject(listAddress);
        result.setResultString("success");

        return result;
    }

    /**
     * resultUpdateAddressService���擾����B
     * @return resultUpdateAddressService
     */
    public ResultUpdateAddressService getResultUpdateAddressService() {
        return resultUpdateAddressService;
    }

    /**
     * resultUpdateAddressService��ݒ肷��B
     * @param resultUpdateAddressService resultUpdateAddressService�B
     */
    public void setResultUpdateAddressService(
            ResultUpdateAddressService resultUpdateAddressService) {
        this.resultUpdateAddressService = resultUpdateAddressService;
    }
}