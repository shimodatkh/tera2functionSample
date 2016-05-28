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

import jp.terasoluna.thin.functionsample.common.FunctionUVO;
import jp.terasoluna.thin.functionsample.common.bean.LogonParam;
import jp.terasoluna.thin.functionsample.common.service.LogonService;
import jp.terasoluna.thin.functionsample.serverblockage.web.ServerBlockageController;
import jp.terasoluna.fw.service.thin.BLogicResult;
import jp.terasoluna.fw.web.struts.actions.AbstractBLogicAction;
import jp.terasoluna.fw.web.thin.ServerBlockageControlFilter;

/**
 * サーバ閉塞を開放するアクション
 *
 * @version 2006/03/07
 */
public class CancelServerBlockageAction 
                    extends AbstractBLogicAction<LogonParam> {
    /**
     * ログインサービス
     */
    private LogonService logonService = null;
    /**
     * ログインが成功すれば、サーバ閉塞を開放する。 
     *
     * @param param ユーザID,パスワードが保存されているパラメータクラス
     * @return BLogicResult
     * @throws Exception
     */
    @Override
    public BLogicResult doExecuteBLogic(LogonParam param) 
                                                throws Exception {
//      処理結果を格納するためのオブジェクト
    	BLogicResult result = new BLogicResult();

        // 認証処理
        FunctionUVO uvo = logonService.logon(param);
        
        if (uvo == null) {
            // ユーザ情報が取得できなかった場合（認証失敗時）の処理
            result.setResultString("failure");
        } else {
            // コントローラ取得
            ServerBlockageController controller
                = (ServerBlockageController) 
                    ServerBlockageControlFilter.getServerBlockageController();
            // サーバ閉塞を解除する。
            controller.open();
            result.setResultString("success");
        }

        return result;
    }
    /**
     * logonServiceを取得する。
     * @return logonService
     */
    public LogonService getLogonService() {
        return logonService;
    }
    /**
     * logonServiceを設定する。
     * @param logonService logonService。
     */
    public void setLogonService(LogonService logonService) {
        this.logonService = logonService;
    }

}
