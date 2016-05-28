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

import java.util.HashMap;
import java.util.Map;

import jp.terasoluna.thin.functionsample.formex.bean.FormExParam;
import jp.terasoluna.fw.service.thin.BLogicResult;
import jp.terasoluna.fw.web.struts.actions.AbstractBLogicAction;

/**
 * cancelPopulate="true"の場合のアクションクラス
 *
 * @version 2006/02/23
 */
public class CancelPopulateFormExAction extends
        AbstractBLogicAction<FormExParam> {

    /**
     * 画面から取得した値を設定する処理
     *
     * @param param FormExParam
     * @return BLogicResult
     * @throws Exception
     */
    @Override
    public BLogicResult doExecuteBLogic(FormExParam param) throws Exception {

    	BLogicResult result = new BLogicResult();
        Map<String, Object> listCode = new HashMap<String, Object>();
        listCode.put("listCode", param);
        
        result.setResultObject(listCode);

        result.setResultString("success");

        return result;
    }
}