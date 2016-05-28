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
 * JNDI一覧画面で変更ボタンを押下する時のアクション
 * 該当nameの値を取得する。
 *
 */
public class JndiRebindAction extends AbstractBLogicAction<JndiRebindParam> {
    /**
     * JNDIリソースを取得するサービス
     */
    protected JndiRebindService jndiRebindService = null;
    
    /**
     * 
     * JNDI一覧画面で変更ボタンを押下する時のアクション
     *
     * @param param 選択したJNDIリソース名
     * @return JNDIリソースの名と値
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
     * jndiRebindServiceを取得する。
     * @return jndiRebindService
     */
    public JndiRebindService getJndiRebindService() {
        return jndiRebindService;
    }

    /**
     * jndiRebindServiceを設定する。
     * @param jndiRebindService jndiRebindService。
     */
    public void setJndiRebindService(JndiRebindService jndiRebindService) {
        this.jndiRebindService = jndiRebindService;
    }
}