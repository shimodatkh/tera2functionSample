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

import java.util.HashMap;
import java.util.Map;

import jp.terasoluna.thin.functionsample.jndi.bean.JndiRebindParam;
import jp.terasoluna.thin.functionsample.jndi.bean.JndiRebindResult;
import jp.terasoluna.thin.functionsample.jndi.service.JndiRebindService;
import jp.terasoluna.fw.service.thin.BLogicResult;
import jp.terasoluna.fw.web.struts.actions.AbstractBLogicAction;

/**
 * JNDI�ꗗ��ʂŕύX�{�^�����������鎞�̃A�N�V����
 * �Y��name�̒l���擾����B
 *
 */
public class JndiRebindAction extends AbstractBLogicAction<JndiRebindParam> {
    /**
     * JNDI���\�[�X���擾����T�[�r�X
     */
    protected JndiRebindService jndiRebindService = null;
    
    /**
     * 
     * JNDI�ꗗ��ʂŕύX�{�^�����������鎞�̃A�N�V����
     *
     * @param param �I������JNDI���\�[�X��
     * @return JNDI���\�[�X�̖��ƒl
     * @throws Exception
     */
    @Override
    public BLogicResult doExecuteBLogic(JndiRebindParam param) 
                                        throws Exception {
    	BLogicResult result = new BLogicResult();
        JndiRebindResult jndiResult = new JndiRebindResult();
        Map<String, Object> retMap = new HashMap<String, Object>();
        
        jndiResult.setValueName(param.getSelectedValue());
        
        try{
            jndiResult.setValueData(
                (String)jndiRebindService.jndiLookup(
                        jndiResult.getValueName()));
        }catch(Exception E){
            jndiResult.setValueData(null);
        }
        
        retMap.put("jndiData", jndiResult);
        
        result.setResultObject(retMap);
        result.setResultString("success");
        
        return result;
    }

    /**
     * jndiRebindService���擾����B
     * @return jndiRebindService
     */
    public JndiRebindService getJndiRebindService() {
        return jndiRebindService;
    }

    /**
     * jndiRebindService��ݒ肷��B
     * @param jndiRebindService jndiRebindService�B
     */
    public void setJndiRebindService(JndiRebindService jndiRebindService) {
        this.jndiRebindService = jndiRebindService;
    }
}