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

import jp.terasoluna.thin.functionsample.jndi.bean.ResultJndiRebindParam;
import jp.terasoluna.thin.functionsample.jndi.service.ResultJndiRebindService;
import jp.terasoluna.fw.service.thin.BLogicResult;
import jp.terasoluna.fw.web.struts.actions.AbstractBLogicAction;

/**
 * �I������JNDI���\�[�X��ύX����A�N�V����
 *
 */
public class ResultJndiRebindAction 
                    extends AbstractBLogicAction<ResultJndiRebindParam> {
    /**
     * JNDI���\�[�X��rebind����T�[�r�X
     */
    protected ResultJndiRebindService resultJndiRebindService = null;
    /**
     * �I������JNDI���\�[�X��ύX����
     *
     * @param param �ύX����JNDI���\�[�X�l
     * @return JNDI�ꗗ���X�g
     * @throws Exception
     */
    @Override
    public BLogicResult doExecuteBLogic(ResultJndiRebindParam param) 
                                                    throws Exception {
    	BLogicResult result = new BLogicResult();
        Map<String, Object> retMap = 
                resultJndiRebindService.jndiRebind(param.getValueName(), 
                                                   param.getValueData());
        
        result.setResultObject(retMap);
        result.setResultString("success");
        
        return result;
    }
    /**
     * resultJndiRebindService���擾����B
     * @return resultJndiRebindService
     */
    public ResultJndiRebindService getResultJndiRebindService() {
        return resultJndiRebindService;
    }
    /**
     * resultJndiRebindService��ݒ肷��B
     * @param resultJndiRebindService resultJndiRebindService�B
     */
    public void setResultJndiRebindService(
            ResultJndiRebindService resultJndiRebindService) {
        this.resultJndiRebindService = resultJndiRebindService;
    }
}