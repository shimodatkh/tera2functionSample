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
 * JNDIリソースリストを取得するアクション
 *
 */
public class ListJndiAction extends AbstractBLogicAction {
    /**
     * JNDIリストを初期化して取得するサービス
     */
    protected ListJndiInitializeService listJndiInitializeService = null;
    /**
     * 
     * JNDIリソースを取得する
     *
     * @param param Object（使用されない）
     * @return　JNDI一覧リスト
     * @throws Exception
     */
    @Override
    public BLogicResult doExecuteBLogic(Object param) throws Exception {
        // 処理結果を格納するためのオブジェクト  
    	BLogicResult result = new BLogicResult();
        Map<String, Object> retMap = listJndiInitializeService.jndiListInitialize();
        
        result.setResultObject(retMap);
        result.setResultString("success");
        
        return result;
    }
    /**
     * listJndiRebindServiceを取得する。
     * @return listJndiRebindService
     */
    public ListJndiInitializeService getListJndiInitializeService() {
        return listJndiInitializeService;
    }
    /**
     * listJndiRebindServiceを設定する。
     * @param listJndiRebindService listJndiRebindService。
     */
    public void setListJndiInitializeService(ListJndiInitializeService listJndiRebindService) {
        this.listJndiInitializeService = listJndiRebindService;
    }

}