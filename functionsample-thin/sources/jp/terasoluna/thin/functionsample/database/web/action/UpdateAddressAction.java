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

import java.util.HashMap;
import java.util.Map;

import jp.terasoluna.thin.functionsample.database.bean.AddressTableVO;
import jp.terasoluna.thin.functionsample.database.bean.UpdateAddressParam;
import jp.terasoluna.thin.functionsample.database.service.UpdateAddressService;
import jp.terasoluna.fw.service.thin.BLogicResult;
import jp.terasoluna.fw.web.struts.actions.AbstractBLogicAction;

/**
 * �Z�������X�V����A�N�V����
 *
 */
public class UpdateAddressAction 
                    extends AbstractBLogicAction<UpdateAddressParam> {
    
    /**
     * �X�V�Z���擾�T�[�r�X
     */
    protected UpdateAddressService updateAddressService = null;

    /**
     * �P�D�Y���ڋq�R�[�h���o�^����Ă��邩�ǂ����`�F�b�N
     * �Q�D�o�^����Ă��Ȃ���΁A�G���[�𓊂���B
     * �R�D�o�^����Ă���΁A�X�V�������s���B
     * 
     * @param param UpdateAddressParam
     * @return BLogicResult
     * @throws Exception
     */
    @Override
    public BLogicResult doExecuteBLogic(UpdateAddressParam param) 
                                                        throws Exception {

    	BLogicResult result = new BLogicResult();
        AddressTableVO address = updateAddressService.getAddress(param);
        
        Map<String, Object> retMap = new HashMap<String, Object>();
        retMap.put("addressData", address);
        
        result.setResultObject(retMap);
        result.setResultString("success");

        return result;
    }

    /**
     * updateAddressService���擾����B
     * @return updateAddressService
     */
    public UpdateAddressService getUpdateAddressService() {
        return updateAddressService;
    }

    /**
     * updateAddressService��ݒ肷��B
     * @param updateAddressService updateAddressService�B
     */
    public void setUpdateAddressService(UpdateAddressService updateAddressService) {
        this.updateAddressService = updateAddressService;
    }
}
