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

package jp.terasoluna.thin.functionsample.jndi.bean;

/**
 * JNDIのUnbind機能で使われるパラメータクラス
 *
 */
public class JndiUnbindParam {
    /**
     * 選択したJNDI名
     */
    private String selectedValue = null;

    /**
     * selectedValueを取得する。
     * @return selectedValue
     */
    public String getSelectedValue() {
        return selectedValue;
    }

    /**
     * selectedValueを設定する。
     * @param selectedValue selectedValue。
     */
    public void setSelectedValue(String selectedValue) {
        this.selectedValue = selectedValue;
    }
}