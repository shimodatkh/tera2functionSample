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

package jp.terasoluna.thin.functionsample.messageex.bean;

/**
 * 優先順位メッセージ選択入力クラス
 *
 */
public class MessageExPriorityOrderParam {
    
    /**
     * MessageResources.propertiesのメッセージ
     */
    private Boolean check1 = false;
    /**
     * DBのメッセージ
     */
    private Boolean check2 = false;
    /**
     * application-messages.propertiesのメッセージ
     */
    private Boolean check3 = false;
    /**
     * System-messages.propertiesのメッセージ
     */
    private Boolean check4 = false;
    /**
     * MessageResources.propertiesのメッセージチェックを取得する。
     * @return MessageResources.propertiesのメッセージチェック
     */
    public Boolean getCheck1() {
        return check1;
    }
    /**
     * MessageResources.propertiesのメッセージチェックを設定する。
     * @param check1 MessageResources.propertiesのメッセージチェック
     */
    public void setCheck1(Boolean check1) {
        this.check1 = check1;
    }
    /**
     * DBのメッセージチェックを取得する。
     * @return DBのメッセージチェック
     */
    public Boolean getCheck2() {
        return check2;
    }
    /**
     * DBのメッセージチェックを設定する。
     * @param check2 DBのメッセージチェック
     */
    public void setCheck2(Boolean check2) {
        this.check2 = check2;
    }
    /**
     * application-messages.propertiesのメッセージチェックを取得する。
     * @return application-messages.propertiesのメッセージチェック
     */
    public Boolean getCheck3() {
        return check3;
    }
    /**
     * application-messages.propertiesのメッセージチェックを設定する。
     * @param check3 application-messages.propertiesのメッセージチェック
     */
    public void setCheck3(Boolean check3) {
        this.check3 = check3;
    }
    /**
     * System-messages.propertiesのメッセージチェックを取得する。
     * @return System-messages.propertiesのメッセージチェック
     */
    public Boolean getCheck4() {
        return check4;
    }
    /**
     * System-messages.propertiesのメッセージチェックを設定する。
     * @param check4 System-messages.propertiesのメッセージチェック
     */
    public void setCheck4(Boolean check4) {
        this.check4 = check4;
    }
}