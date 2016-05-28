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

import jp.terasoluna.thin.functionsample.database.service.ListAddressService;
import jp.terasoluna.fw.service.thin.BLogicResult;
import jp.terasoluna.fw.web.struts.actions.AbstractBLogicAction;

/**
 * �Z���^���X�g���擾����A�N�V����
 *
 */
public class ListAddressAction extends AbstractBLogicAction<Map> {
    
    /**
     * �Z���^�擾�T�[�r�X
     */
    protected ListAddressService listAddressService = null;
    
    /**
     * �f�[�^�x�[�X����Z���^���X�g���擾���A�f�[�^�𐶐�����B
     *
     * @param param java.util.Map
     * @return BLogicResult
     * @throws Exception �\�����ʗ�O
     */
    @Override
    public BLogicResult doExecuteBLogic(Map param) throws Exception {
        
        // �������ʂ��i�[���邽�߂̃I�u�W�F�N�g
    	BLogicResult result = new BLogicResult();
        Map<String, Object> listAddress = listAddressService.getListAddress();
        
        if (listAddress != null) {
            result.setResultObject(listAddress);
            result.setResultString("success");
        }
        
        return result;
    }

    /**
     * listAddressService���擾����B
     * @return listAddressService
     */
    public ListAddressService getListAddressService() {
        return listAddressService;
    }

    /**
     * listAddressService��ݒ肷��B
     * @param listAddressService listAddressService�B
     */
    public void setListAddressService(ListAddressService listAddressService) {
        this.listAddressService = listAddressService;
    }    
}