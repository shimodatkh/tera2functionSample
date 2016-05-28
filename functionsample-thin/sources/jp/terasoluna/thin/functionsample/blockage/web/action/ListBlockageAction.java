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

package jp.terasoluna.thin.functionsample.blockage.web.action;

import java.util.Map;

import jp.terasoluna.thin.functionsample.blockage.bean.ListBlockageParam;
import jp.terasoluna.thin.functionsample.blockage.service.ListBlockageService;
import jp.terasoluna.fw.service.thin.BLogicResult;
import jp.terasoluna.fw.web.struts.actions.AbstractBLogicAction;

/**
 * �Ɩ����X�g�ƕǏ�Ԃ��擾����A�N�V����
 *
 */
public class ListBlockageAction 
                    extends AbstractBLogicAction<ListBlockageParam> {
    /**
     * �Ɩ����X�g���擾����T�[�r�X
     */
    protected ListBlockageService listBlockageService = null;
    /**
     * �Ɩ����X�g���擾����B
     *
     * @param param 
     * @return BLogicResult
     * @throws Exception
     */
    @Override
    public BLogicResult doExecuteBLogic(ListBlockageParam param) 
                                                throws Exception {
        BLogicResult result = new BLogicResult();
        // �Ɩ����X�g�ƕǏ�Ԃ��擾����B
        Map<String, Object> list = listBlockageService.getUCList();
        
        result.setResultObject(list);
        result.setResultString("success");
        return result;
    }
    /**
     * listBlockageService���擾����B
     * @return listBlockageService
     */
    public ListBlockageService getListBlockageService() {
        return listBlockageService;
    }
    /**
     * listBlockageService��ݒ肷��B
     * @param listBlockageService listBlockageService�B
     */
    public void setListBlockageService
                                (ListBlockageService listBlockageService) {
        this.listBlockageService = listBlockageService;
    }
}
