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

package jp.terasoluna.thin.functionsample.jndi.web.action;

import java.util.Map;

import jp.terasoluna.thin.functionsample.jndi.service.ListJndiInitializeService;
import jp.terasoluna.fw.service.thin.BLogicResult;
import jp.terasoluna.fw.web.struts.actions.AbstractBLogicAction;

/**
 * JNDI���\�[�X���X�g���擾����A�N�V����
 *
 */
public class ListJndiAction extends AbstractBLogicAction {
    /**
     * JNDI���X�g�����������Ď擾����T�[�r�X
     */
    protected ListJndiInitializeService listJndiInitializeService = null;
    /**
     * 
     * JNDI���\�[�X���擾����
     *
     * @param param Object�i�g�p����Ȃ��j
     * @return�@JNDI�ꗗ���X�g
     * @throws Exception
     */
    @Override
    public BLogicResult doExecuteBLogic(Object param) throws Exception {
        // �������ʂ��i�[���邽�߂̃I�u�W�F�N�g  
    	BLogicResult result = new BLogicResult();
        Map<String, Object> retMap = listJndiInitializeService.jndiListInitialize();
        
        result.setResultObject(retMap);
        result.setResultString("success");
        
        return result;
    }
    /**
     * listJndiRebindService���擾����B
     * @return listJndiRebindService
     */
    public ListJndiInitializeService getListJndiInitializeService() {
        return listJndiInitializeService;
    }
    /**
     * listJndiRebindService��ݒ肷��B
     * @param listJndiRebindService listJndiRebindService�B
     */
    public void setListJndiInitializeService(ListJndiInitializeService listJndiRebindService) {
        this.listJndiInitializeService = listJndiRebindService;
    }

}