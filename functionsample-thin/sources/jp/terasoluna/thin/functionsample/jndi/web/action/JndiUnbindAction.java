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

import jp.terasoluna.thin.functionsample.jndi.bean.JndiUnbindParam;
import jp.terasoluna.thin.functionsample.jndi.service.JndiUnbindService;
import jp.terasoluna.fw.service.thin.BLogicResult;
import jp.terasoluna.fw.web.struts.actions.AbstractBLogicAction;

/**
 * JNDI���\�[�X��unbind����A�N�V����
 *
 */
public class JndiUnbindAction extends AbstractBLogicAction<JndiUnbindParam> {
    /**
     * JNDI���\�[�X��unbind����T�[�r�X
     */
    protected JndiUnbindService jndiUnbindService = null;
    
    /**
     * jndiUnbindService���擾����B
     * @return jndiUnbindService
     */
    public JndiUnbindService getJndiUnbindService() {
        return jndiUnbindService;
    }

    /**
     * jndiUnbindService��ݒ肷��B
     * @param jndiUnbindService jndiUnbindService�B
     */
    public void setJndiUnbindService(JndiUnbindService jndiUnbindService) {
        this.jndiUnbindService = jndiUnbindService;
    }

    /**
     * 
     * �I������JNDI���\�[�X��unbind����
     *
     * @param param �I������JNDI���\�[�X��
     * @return JNDI�ꗗ���X�g
     * @throws Exception
     */
    @Override
    public BLogicResult doExecuteBLogic(JndiUnbindParam param) 
                                            throws Exception {
    	BLogicResult result = new BLogicResult();
        Map<String, Object> retMap 
                = jndiUnbindService.jndiUnbind(param.getSelectedValue());
        
        result.setResultObject(retMap);
        result.setResultString("success");
        
        return result;
    }
}