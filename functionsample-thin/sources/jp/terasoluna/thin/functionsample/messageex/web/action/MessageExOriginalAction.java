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

package jp.terasoluna.thin.functionsample.messageex.web.action;

import java.util.Map;

import jp.terasoluna.thin.functionsample.messageex.bean.MessageExOriginalParam;
import jp.terasoluna.thin.functionsample.messageex.service.MessageExOriginalService;
import jp.terasoluna.fw.service.thin.BLogicMessage;
import jp.terasoluna.fw.service.thin.BLogicMessages;
import jp.terasoluna.fw.service.thin.BLogicResult;
import jp.terasoluna.fw.web.struts.actions.AbstractBLogicAction;

/**
 * 固有メッセージ処理アクション
 *
 */
public class MessageExOriginalAction 
                extends AbstractBLogicAction<MessageExOriginalParam>{
    
    /**
     * 固有メッセージキー設定クラス宣言
     */
    private MessageExOriginalService originalService ;

    /**
     * 1．サービスクラスの実行メソッドを呼出して各メッセージリソースの固有メッセージキーを設定する。<br>
     * 2．設定したメッセージキーマップからメッセージキーを取得してメッセージを設定する。
     * 2.1. マップに優先順位1番目MessageResourcesの固有メッセージを設定する。<br>
     * 2.2. マップに優先順位2番目DBの固有メッセージを設定する。<br>
     * 2.3. マップに優先順位3番目application-messagesの固有メッセージを設定する。<br>
     * 2.4. マップに優先順位4番目system-messagesの固有メッセージを設定する。<br>
     * @param param 固有メッセージアクション用パラメタークラス
     * @return メッセージキーマップ
     */
    @Override
    public BLogicResult doExecuteBLogic(MessageExOriginalParam param) 
                                                    throws Exception {
    	BLogicResult result = new BLogicResult();
    	BLogicMessages msg = new BLogicMessages();
        
        // 格納順序でメッセージキーを設定する。
        Map<String, String> msgKey = originalService.execute(param);
        
        /*
         * 固有メッセージを優先順位順に設定する。
         */
        msg.add("first", new BLogicMessage(msgKey.get("first")));
        msg.add("second", new BLogicMessage(msgKey.get("second")));
        msg.add("third", new BLogicMessage(msgKey.get("third")));
        msg.add("fourth", new BLogicMessage(msgKey.get("fourth")));
        
        result.setMessages(msg);
        result.setResultString("success");
        return result;
    }

    /**
     * 固有メッセージキー設定クラスを取得する。
     * @return 固有メッセージキー設定クラス
     */
    public MessageExOriginalService getOriginalService() {
        return originalService;
    }

    /**
     * 固有メッセージキー設定クラスを設定する。
     * @param originalService 固有メッセージキー設定クラス
     */
    public void setOriginalService(MessageExOriginalService originalService) {
        this.originalService = originalService;
    }
}