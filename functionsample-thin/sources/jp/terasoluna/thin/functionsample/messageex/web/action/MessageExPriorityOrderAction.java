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
import jp.terasoluna.thin.functionsample.messageex.bean.MessageExPriorityOrderParam;
import jp.terasoluna.thin.functionsample.messageex.service.MessageExPriorityOrderService;
import jp.terasoluna.fw.service.thin.BLogicMessage;
import jp.terasoluna.fw.service.thin.BLogicMessages;
import jp.terasoluna.fw.service.thin.BLogicResult;
import jp.terasoluna.fw.web.struts.actions.AbstractBLogicAction;

/**
 * 画面から取得したデータを利用してビジネスロジックを呼出
 *
 */
public class MessageExPriorityOrderAction 
            extends AbstractBLogicAction<MessageExPriorityOrderParam> {
    
    private MessageExPriorityOrderService messageExService ;

    /**
     * 1. メッセージキーを取得する。<br>
     * 2. 選択説明メッセージをメッセージクラスに入力する。<br>
     * 3. 優先順位メッセージをメッセージクラスに入力する。<br>
     *
     * @param param 優先順位チェックボックスクラス
     * @return 結果クラス
     */
    @Override
    public BLogicResult doExecuteBLogic(MessageExPriorityOrderParam params) 
                                                    throws Exception {
    	BLogicResult result = new BLogicResult();

        /*
         * 優先順位メッセージ選択クラスの変数がnullに設定される問題。
         * 引数のnull値変数をfalseに再初期化する。
         */
        if(params.getCheck1()==null) {
            params.setCheck1(false);            
        } if(params.getCheck2()==null) {
            params.setCheck2(false);            
        } if(params.getCheck3()==null) {
            params.setCheck3(false);            
        } if(params.getCheck4()==null) {
            params.setCheck4(false);            
        }
        
        Map<String, String> mapKey = messageExService.execute(params);
        if (mapKey != null) {
        	BLogicMessages mess = new BLogicMessages();
            // 選択説明メッセージをメッセージクラスに入力する。
            mess.add("select", 
                    new BLogicMessage(mapKey.get("select"), mapKey.get("0"),
                            mapKey.get("1"), mapKey.get("2"), 
                            mapKey.get("3")));
            
            // 優先順位メッセージをメッセージクラスに入力する。
            mess.add("message", 
                    new BLogicMessage(mapKey.get("message")));
            result.setMessages(mess);
            result.setResultString("success");
        }
        
        return result;
    }
    
    /**
     * messageExServiceを取得する。
     * @return 拡張メッセージリソース取得クラス
     */
    public MessageExPriorityOrderService getMessageExService() {
        return messageExService;
    }

    /**
     * messageExServiceを設定する。
     * @param messageExService 拡張メッセージリソース取得クラス
     */
    public void setMessageExService
                (MessageExPriorityOrderService messageExService) {
        this.messageExService = messageExService;
    }
}