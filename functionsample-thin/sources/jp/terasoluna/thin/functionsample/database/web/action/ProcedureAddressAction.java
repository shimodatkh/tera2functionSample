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

import jp.terasoluna.thin.functionsample.database.bean.ListAddressParam;
import jp.terasoluna.thin.functionsample.database.service.ProcedureAddressService;
import jp.terasoluna.fw.service.thin.BLogicResult;
import jp.terasoluna.fw.web.struts.actions.AbstractBLogicAction;

/**
 * プロシージャを起動するアクション
 *
 */
public class ProcedureAddressAction extends
        AbstractBLogicAction<ListAddressParam> {
    
    /**
     * 住所録初期化プロシージャサービス
     */
    protected ProcedureAddressService procedureAddressService = null;

    /**
     * 住所録の初期化処理を行う。
     * @param param ListAddressParam
     * @return BLogicResult
     * @throws Exception
     */
    @Override
    public BLogicResult doExecuteBLogic(ListAddressParam param) throws Exception {
        
    	BLogicResult result = new BLogicResult();
        Map<String, Object> listAddress
        = procedureAddressService.initAddressTable();
        
        // データベースに住所録データが無い時もそのまま画面に表示する。
        result.setResultObject(listAddress);
        result.setResultString("success");
        
        return result;
    }

    /**
     * procedureAddressServiceを取得する。
     * @return procedureAddressService
     */
    public ProcedureAddressService getProcedureAddressService() {
        return procedureAddressService;
    }

    /**
     * procedureAddressServiceを設定する。
     * @param procedureAddressService procedureAddressService。
     */
    public void setProcedureAddressService(
            ProcedureAddressService procedureAddressService) {
        this.procedureAddressService = procedureAddressService;
    }   
}