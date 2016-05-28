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

package jp.terasoluna.thin.functionsample.serverblockage.web.action;

import jp.terasoluna.thin.functionsample.serverblockage.bean.ServerBlockageParam;
import jp.terasoluna.thin.functionsample.serverblockage.bean.ServerBlockageResult;
import jp.terasoluna.thin.functionsample.serverblockage.web.ServerBlockageController;
import jp.terasoluna.fw.service.thin.BLogicResult;
import jp.terasoluna.fw.web.struts.actions.AbstractBLogicAction;
import jp.terasoluna.fw.web.thin.ServerBlockageControlFilter;

/**
 * サーバ閉塞を解除するアクション
 *
 */
public class CancelBlockageAction 
                        extends AbstractBLogicAction<ServerBlockageParam> {

    /**
     * サーバ閉塞を解除する
     *
     * @param param サーバ閉塞状態
     * @return BLogicResult
     * @throws Exception
     */
    @Override
    public BLogicResult doExecuteBLogic(ServerBlockageParam param) 
                                                    throws Exception {
    	BLogicResult result = new BLogicResult();
        ServerBlockageResult serverBlockageResult = new ServerBlockageResult();
//      コントローラを取得する
        ServerBlockageController controller
              = (ServerBlockageController) 
                  ServerBlockageControlFilter.getServerBlockageController();
        // サーバを開放する
        controller.open();
        serverBlockageResult.setServerBlockageState("open");
        
        result.setResultObject(serverBlockageResult);
        result.setResultString("success");
        return result;
    }

}
