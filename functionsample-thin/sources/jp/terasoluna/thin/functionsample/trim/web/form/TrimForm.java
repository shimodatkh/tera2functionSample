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
 * trim�@�\�Ŏg����ActionForm
 * 
 */
public class TrimForm extends ValidatorActionFormEx {

    /**
     * �V���A���o�[�W����ID
     */
    private static final long serialVersionUID = 3738078646666143023L;

    /**
     * ltrim�o�͑Ώە�����B
     */
    private String ltrim = "     ����������";

    /**
     * rtrim�o�͑Ώە�����B
     */
    private String rtrim = "����������     ";

    /**
     * trim�o�͑Ώە�����B
     */
    private String trim = "     ����������     ";

    /**
     * ltrim�o�͑Ώە������ԋp����B
     * 
     * @return ltrim�o�͑Ώە�����
     */
    public String getLtrim() {
        return ltrim;
    }

    /**
     * ltrim�o�͑Ώە������ݒ肷��B
     * 
     * @param ltrim ltrim�o�͑Ώە�����
     */
    public void setLtrim(String ltrim) {
        this.ltrim = ltrim;
    }

    /**
     * rtrim�o�͑Ώە������ԋp����B
     * 
     * @return rtrim�o�͑Ώە�����
     */
    public String getRtrim() {
        return rtrim;
    }

    /**
     * rtrim�o�͑Ώە������ݒ肷��B
     * 
     * @param rtrim rtrim�o�͑Ώە�����
     */
    public void setRtrim(String rtrim) {
        this.rtrim = rtrim;
    }

    /**
     * trim�o�͑Ώە������ԋp����B
     * 
     * @return trim�o�͑Ώە�����
     */
    public String getTrim() {
        return trim;
    }

    /**
     * trim�o�͑Ώە������ݒ肷��B
     * 
     * @param trim trim�o�͑Ώە�����
     */
    public void setTrim(String trim) {
        this.trim = trim;
    }
}
