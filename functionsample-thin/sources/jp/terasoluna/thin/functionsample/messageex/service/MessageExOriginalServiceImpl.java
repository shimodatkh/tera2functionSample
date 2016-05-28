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

package jp.terasoluna.thin.functionsample.messageex.service;

import java.util.HashMap;
import java.util.Map;

import jp.terasoluna.thin.functionsample.messageex.bean.MessageExOriginalParam;

/**
 *  固有メッセージキー設定実装クラス
 *
 */
public class MessageExOriginalServiceImpl 
                                    implements MessageExOriginalService {

    /**
     * 1. 優先メッセージ選択画面に表示される固有メッセージキーを設定する。<br>
     * 1.1. マップに優先順位1番目MessageResourcesの固有メッセージキーを設定する。<br>
     * 1.2. マップに優先順位2番目DBの固有メッセージキーを設定する。<br>
     * 1.3. マップに優先順位3番目application-messagesの固有メッセージキーを設定する。<br>
     * 1.4. マップに優先順位4番目system-messagesの固有メッセージキーを設定する。<br>
     *
     * @param param 固有メッセージアクション用パラメータークラス
     * @return メッセージキーマップ
     */
    public Map<String, String> execute(MessageExOriginalParam param) {
        Map<String, String> messageKey = new HashMap<String, String>();
        messageKey.put("first", "info.UC21.00008");
        messageKey.put("second", "info.UC21.00004");
        messageKey.put("third", "info.UC21.00002");
        messageKey.put("fourth", "info.UC21.00001");
        return messageKey;
    }
}