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

package jp.terasoluna.thin.functionsample.trim.web.form;

import jp.terasoluna.fw.web.struts.form.ValidatorActionFormEx;

/**
 * trim機能で使われるActionForm
 * 
 */
public class TrimForm extends ValidatorActionFormEx {

    /**
     * シリアルバージョンID
     */
    private static final long serialVersionUID = 3738078646666143023L;

    /**
     * ltrim出力対象文字列。
     */
    private String ltrim = "     あいうえお";

    /**
     * rtrim出力対象文字列。
     */
    private String rtrim = "あいうえお     ";

    /**
     * trim出力対象文字列。
     */
    private String trim = "     あいうえお     ";

    /**
     * ltrim出力対象文字列を返却する。
     * 
     * @return ltrim出力対象文字列
     */
    public String getLtrim() {
        return ltrim;
    }

    /**
     * ltrim出力対象文字列を設定する。
     * 
     * @param ltrim ltrim出力対象文字列
     */
    public void setLtrim(String ltrim) {
        this.ltrim = ltrim;
    }

    /**
     * rtrim出力対象文字列を返却する。
     * 
     * @return rtrim出力対象文字列
     */
    public String getRtrim() {
        return rtrim;
    }

    /**
     * rtrim出力対象文字列を設定する。
     * 
     * @param rtrim rtrim出力対象文字列
     */
    public void setRtrim(String rtrim) {
        this.rtrim = rtrim;
    }

    /**
     * trim出力対象文字列を返却する。
     * 
     * @return trim出力対象文字列
     */
    public String getTrim() {
        return trim;
    }

    /**
     * trim出力対象文字列を設定する。
     * 
     * @param trim trim出力対象文字列
     */
    public void setTrim(String trim) {
        this.trim = trim;
    }
}
