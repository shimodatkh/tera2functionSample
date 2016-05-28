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

package jp.terasoluna.thin.functionsample.wareki.web.form;

import jp.terasoluna.fw.web.struts.form.ValidatorActionFormEx;

/**
 * wareki機能で使われるActionForm
 * 
 */
public class WarekiForm extends ValidatorActionFormEx {

    /**
     * シリアルバージョンID
     */
    private static final long serialVersionUID = 8813685410712523789L;

    /**
     * 出力対象日付（パターン4）。
     */
    private String datePattern04 = "2009/03/21 00:12:34";

    /**
     * 出力対象日付（パターン10）。
     */
    private String datePattern10 = "2009-01-21 12,34,56,789";

    /**
     * 出力対象日付（パターン4）を返却する。
     * 
     * @return 出力対象日付（パターン4）
     */
    public String getDatePattern04() {
        return datePattern04;
    }

    /**
     * 出力対象日付（パターン4）を設定する。
     * 
     * @param date 出力対象日付（パターン4）
     */
    public void setDatePattern04(String datePattern04) {
        this.datePattern04 = datePattern04;
    }

    /**
     * 出力対象日付（パターン10）を返却する。
     * 
     * @return 出力対象日付（パターン10）
     */
    public String getDatePattern10() {
        return datePattern10;
    }

    /**
     * 出力対象日付（パターン10）を設定する。
     * 
     * @param date 出力対象日付（パターン10）
     */
    public void setDatePattern10(String datePattern10) {
        this.datePattern10 = datePattern10;
    }

}
