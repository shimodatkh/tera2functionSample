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

import java.util.Map;

import jp.terasoluna.thin.functionsample.messageex.bean.MessageExPriorityOrderParam;

/**
 * 拡張メッセージリソース取得インタフェース
 *
 */
public interface MessageExPriorityOrderService {
    
    /**
     * １．入力されたパラメータの中で優先順位メッセージキーを取得
     * ２．選択したチェックボックスによってメッセージキーを取得
     * @param params 優先順位メッセージ選択入力クラス
     * @return メッセージキー
     */
    Map<String, String> execute(MessageExPriorityOrderParam params) ;
}