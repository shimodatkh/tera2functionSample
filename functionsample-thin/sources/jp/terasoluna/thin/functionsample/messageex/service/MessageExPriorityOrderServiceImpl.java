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

import jp.terasoluna.thin.functionsample.messageex.bean.MessageExPriorityOrderParam;

/**
 * 拡張メッセージリソース取得実装クラス
 *
 */
public class MessageExPriorityOrderServiceImpl 
                    implements MessageExPriorityOrderService {

    /**
     * 1. マップに選択した優先順位をメッセージの置換置換文字列を設定する。<br>
     * 2. 選択したデータのよりメッセージキーを決定する。<br>
     * メッセージキーの決定ロジック<br>
     * <table>
     *   <tr>
     *     <td>優先順位1</td>
     *     <td>優先順位2</td>
     *     <td>優先順位3</td>
     *     <td>優先順位4</td>
     *     <td>←選択値</td>
     *   </tr>
     *   <tf>
     *     <td align="center">0</td>
     *     <td align="center">0</td>
     *     <td align="center">0</td>
     *     <td align="center">0</td>
     *     <td>←bit値</td>
     * </table>
     * 例えば優先順位1と優先順位4を選択した場合、<br>
     * bit値は1001になる。
     * <br>メッセージキーは1001を9に置換して"info.UC21.000"に"09"を追加する。<br>
     * 結果的にメッセージキー"info.UC21.00009"がマップに設定される。<br>
     * 3. "何々メッセージリソースを選択しました。取得したメッセージは以下です。"のメッセージキーは<br>
     * info.UC2100016から19まで設定されているので選択した優先順位メッセージリソースの個数による<br>
     * メッセージキーが設定される。<br>
     * 4. 何も選択しなかった場合、マップに該当メッセージキーを設定する。
     *
     * @param params 優先順位チェックボックスクラス
     * @return メッセージキーマップ
     */
    public Map<String, String> execute(MessageExPriorityOrderParam params) {
        
        int messageNo = 0 ; //メッセージキー決定変数
        int messageTitleNo = 0 ; //メッセージ説明のメッセージキー決定
        
        //選択優先順位置換文字列
        String first = "優先順位1";
        String second = "優先順位2";
        String third = "優先順位3";
        String fourth = "優先順位4";
        
        String common = "info.UC21.000"; //共通文字列
        String key = null; //メッセージキー
        String explKey = null; //メッセージ説明のメッセージキー
        Map<String, String> messageKey = new HashMap<String, String>();
        
        if (params.getCheck1()) {//優先順位1
            messageNo = messageNo + 8 ;
            messageKey.put(""+messageTitleNo, first);
            messageTitleNo ++ ;
            
        }

        if (params.getCheck2()) {//優先順位2
            messageNo = messageNo + 4 ;
            messageKey.put(""+messageTitleNo, second);
            messageTitleNo ++ ;

            
        }

        if (params.getCheck3()) {//優先順位3
            messageNo = messageNo + 2 ;
            messageKey.put(""+messageTitleNo, third);
            messageTitleNo ++ ;

            
        }
        if (params.getCheck4()) {//優先順位4
            messageNo = messageNo + 1 ;
            messageKey.put(""+messageTitleNo, fourth);
            messageTitleNo ++ ;
        }
        
        if ( messageNo < 10) {//メッセージキーを決定
            key = common + "0" + messageNo;
        } else {
            key = common + messageNo;
        }
        
        switch (messageTitleNo) {//選択優先順位メッセージキーセット
        case 1:
            explKey = common + "16";
            break;
        case 2:
            explKey = common + "17";
            break;
        case 3:
            explKey = common + "18";
            break;
        case 4:
            explKey = common + "19";
            break;
        case 0:
            explKey = common + "20";
            break;
        }
        
        messageKey.put("message", key); //メッセージキー
        messageKey.put("select", explKey); //メッセージ説明のメッセージキー
        return messageKey;
    }
}