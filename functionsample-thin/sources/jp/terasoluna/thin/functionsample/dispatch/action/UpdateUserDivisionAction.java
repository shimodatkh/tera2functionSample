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

package jp.terasoluna.thin.functionsample.dispatch.action;

import java.util.Map;

import jp.terasoluna.thin.functionsample.dispatch.service.UpdateUserDivisionService;
import jp.terasoluna.fw.service.thin.BLogicResult;
import jp.terasoluna.fw.web.struts.actions.AbstractBLogicAction;

/**
 * ユーザ権限を更新するアクション
 *
 */
public class UpdateUserDivisionAction extends AbstractBLogicAction<Map> {
    
    /**
     * ユーザ権限更新サービス
     */
    protected UpdateUserDivisionService updateUserDivisionService = null;
    
    /**
     * 入力された権限情報を基にデータベースの情報を更新する。
     *
     * @param param java.util.Map
     * @return BLogicResult
     * @throws Exception 予期せぬ例外
     */
    @Override
    public BLogicResult doExecuteBLogic(Map param) throws Exception {
        
        // 処理結果を格納するためのオブジェクト
    	BLogicResult result = new BLogicResult();
        
        //データベースの情報の更新
        updateUserDivisionService.updateUserDivision(param);
        
        result.setResultString("success");
        
        return result;
    }

    /**
     * ユーザ権限更新サービスを設定する。
     * @param updateUserDivisionService ユーザ権限更新サービス
     */
    public void setUpdateUserDivisionService(
            UpdateUserDivisionService updateUserDivisionService) {
        this.updateUserDivisionService = updateUserDivisionService;
    }
}