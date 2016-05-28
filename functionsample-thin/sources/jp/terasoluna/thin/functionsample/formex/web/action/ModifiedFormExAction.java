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

package jp.terasoluna.thin.functionsample.formex.web.action;

import java.util.Map;

import jp.terasoluna.thin.functionsample.formex.bean.FormExParam;
import jp.terasoluna.thin.functionsample.formex.service.ModifiedService;
import jp.terasoluna.fw.service.thin.BLogicResult;
import jp.terasoluna.fw.web.struts.actions.AbstractBLogicAction;

/**
 * blogic-resultの値を変更するアクションクラス
 * 
 */
public class ModifiedFormExAction extends AbstractBLogicAction<FormExParam> {

    /**
     * blogic-resultの値を変更するサービス
     */
    protected ModifiedService modifiedService = null;
    
    /**
     * blogic-resultの値を変更する。
     * @param param FormExParam
     * @return BLogicResult
     * @throws Exception
     */
    @Override
    public BLogicResult doExecuteBLogic(FormExParam param) throws Exception {
        
    	BLogicResult result = new BLogicResult();
        
        // サービスロジックの呼び出しでblogic-resultの値を変更
        Map<String, Object> map = modifiedService.getParams(param);
        result.setResultObject(map);

        result.setResultString("success");

        return result;
    }

    /**
     * modifiedServiceを取得する。
     * @return modifiedService
     */
    public ModifiedService getModifiedService() {
        return modifiedService;
    }

    /**
     * modifiedServiceを設定する。
     * @param modifiedService modifiedService。
     */
    public void setModifiedService(ModifiedService modifiedService) {
        this.modifiedService = modifiedService;
    }
}