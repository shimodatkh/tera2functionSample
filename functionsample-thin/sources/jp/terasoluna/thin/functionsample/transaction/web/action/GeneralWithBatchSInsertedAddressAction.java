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


import java.util.HashMap;
import java.util.Map;

import jp.terasoluna.thin.functionsample.transaction.bean.AddressVO;
import jp.terasoluna.thin.functionsample.transaction.bean.
        GeneralWithBatchInsertAddressParam;
import jp.terasoluna.thin.functionsample.transaction.service.
        SelectAddressService;
import jp.terasoluna.fw.service.thin.BLogicResult;
import jp.terasoluna.fw.web.struts.actions.AbstractBLogicAction;

/**
 * �Z�����擾�����A�N�V�����N���X�B
 *
 */
public class GeneralWithBatchSInsertedAddressAction extends
        AbstractBLogicAction<GeneralWithBatchInsertAddressParam> {
    
    /**
     * �Z�����擾�����T�[�r�X
     */
    protected SelectAddressService selectAddressService = null;
    
    /**
     * �Z�����擾�������s���B
     * @param param �ڋq�R�[�h���X�g
     * @return BLogicResult
     * @throws Exception �\�����ʗ�O
     */
    @Override
    public BLogicResult doExecuteBLogic(
            GeneralWithBatchInsertAddressParam param) throws Exception {
        
        // �������ʂ��i�[���邽�߂̃I�u�W�F�N�g
    	BLogicResult result = new BLogicResult();
        Map<String, Object> retMap = new HashMap<String, Object>();
        
        //�o�^���ꂽ�f�[�^�擾����
        AddressVO[] searchResult = new AddressVO[3];
        
        searchResult[0] =
            selectAddressService.getListAddress(param.getCustomerCode1());
        searchResult[1] =
            selectAddressService.getListAddress(param.getCustomerCode2());
        searchResult[2] =
            selectAddressService.getListAddress(param.getCustomerCode3());
        
        retMap.put("searchResult", searchResult);
            
        result.setResultObject(retMap);
        result.setResultString("success");

        return result;
    }

    /**
     * �Z�����擾�����T�[�r�X��Ԃ��B
     * @return �Z�����擾�����T�[�r�X
     */
    public SelectAddressService getSelectAddressService() {
        return selectAddressService;
    }

    /**
     * �Z�����擾�����T�[�r�X��ݒ肷��B
     * @param selectAddressService �Z�����擾�����T�[�r�X
     */
    public void setSelectAddressService(
            SelectAddressService selectAddressService) {
        this.selectAddressService = selectAddressService;
    }
}
