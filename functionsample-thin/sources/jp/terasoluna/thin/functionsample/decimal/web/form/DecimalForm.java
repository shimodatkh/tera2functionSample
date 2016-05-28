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

package jp.terasoluna.thin.functionsample.decimal.web.form;

import jp.terasoluna.fw.web.struts.form.ValidatorActionFormEx;

/**
 * decimal機能で使われるActionForm
 * 
 */
public class DecimalForm extends ValidatorActionFormEx {

    /**
     * シリアルバージョンID
     */
    private static final long serialVersionUID = -664262332999467729L;

    /**
     * 出力対象数字。
     */
    private String decimal = "1956.0491";

    /**
     * 出力対象数字を返却する。
     * 
     * @return 出力対象数字
     */
    public String getDecimal() {
        return decimal;
    }

    /**
     * 出力対象数字を設定する。
     * 
     * @param decimal 出力対象数字
     */
    public void setDecimal(String decimal) {
        this.decimal = decimal;
    }
}