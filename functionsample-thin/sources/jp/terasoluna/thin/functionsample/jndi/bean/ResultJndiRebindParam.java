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
 * JNDIリソース変更機能で使われるパラメータクラス
 *
 */
public class ResultJndiRebindParam {
    /**
     * JNDI名
     */
    private String valueName = null;
    /**
     * JNDIリソース内容
     */
    private String valueData = null;
    /**
     * valueDataを取得する。
     * @return valueData
     */
    public String getValueData() {
        return valueData;
    }
    /**
     * valueDataを設定する。
     * @param valueData valueData。
     */
    public void setValueData(String valueData) {
        this.valueData = valueData;
    }
    /**
     * valueNameを取得する。
     * @return valueName
     */
    public String getValueName() {
        return valueName;
    }
    /**
     * valueNameを設定する。
     * @param valueName valueName。
     */
    public void setValueName(String valueName) {
        this.valueName = valueName;
    }
}