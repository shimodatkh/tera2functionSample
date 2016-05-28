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

package jp.terasoluna.thin.functionsample.common.web.action;

import org.apache.struts.Globals;

import jp.terasoluna.thin.functionsample.common.FunctionUVO;
import jp.terasoluna.thin.functionsample.common.bean.LogonParam;
import jp.terasoluna.thin.functionsample.common.bean.LogonResult;
import jp.terasoluna.thin.functionsample.common.service.LogonService;
import jp.terasoluna.fw.service.thin.BLogicMessage;
import jp.terasoluna.fw.service.thin.BLogicMessages;
import jp.terasoluna.fw.service.thin.BLogicResult;
import jp.terasoluna.fw.web.struts.actions.AbstractBLogicAction;

/**
 * ログオン処理を行うアクション
 * 
 */
public class LogonAction extends AbstractBLogicAction<LogonParam> {
    
    /**
     * ログオンに失敗した場合のエラーメッセージコード。
     */
    private static final String LOGON_ERROR = "error.common.00014";
    
    /**
     * ログオンのビジネスロジッククラス
     */
    protected LogonService logonService;
    
    /**
     * LogonServiceを取得する。
     * @return LogonService
     */
    public LogonService getLogonService() {
        return logonService;
    }

    /**
     * LogonServiceを設定する。
     * @param logonService LogonService
     */
    public void setLogonService(LogonService logonService) {
        this.logonService = logonService;
    }

    /**
     * ログオン処理を行うメソッド。
     * 
     * @param param LogonParam
     * @return BLogicResult
     * @throws Exception
     */
    @Override
    public BLogicResult doExecuteBLogic(LogonParam param) throws Exception {
        
        // 処理結果を格納するためのオブジェクト
    	BLogicResult result = new BLogicResult();
        
        // 認証処理
        FunctionUVO uvo = logonService.logon(param);

        if (uvo == null) {
            // ユーザ情報が取得できなかった場合（認証失敗時）の処理
            
            // エラーメッセージを格納し、BLogicResultに設定する
        	BLogicMessages errors = new BLogicMessages();
            errors.add(Globals.ERROR_KEY, new BLogicMessage(LOGON_ERROR));
            result.setErrors(errors);
            
            result.setResultString("failure");
        } else {
            // ユーザ情報が取得できた場合（認証成功時）の処理
            
            // 出力オブジェクトを生成し、BLogicResultに設定する
            LogonResult resultObj = new LogonResult();
            resultObj.setUvo(uvo);
            result.setResultObject(resultObj);
            
            result.setResultString("success");
        }

        return result;
    }
}