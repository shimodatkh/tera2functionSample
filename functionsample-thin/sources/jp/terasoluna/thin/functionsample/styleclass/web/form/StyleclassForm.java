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

package jp.terasoluna.thin.functionsample.styleclass.web.form;

import jp.terasoluna.fw.web.struts.form.ValidatorActionFormEx;

/**
 * left�@�\�Ŏg����ActionForm
 * 
 */
public class StyleclassForm extends ValidatorActionFormEx {

    /**
     * �V���A���o�[�W����ID
     */
    private static final long serialVersionUID = -2876249226573285403L;

    /**
     * �o�͑Ώە�����B
     */
    private String data = "";

    /**
     * �o�͑Ώە������ԋp����B
     * 
     * @return �o�͑Ώە�����
     */
    public String getData() {
        return data;
    }

    /**
     * �o�͑Ώە������ݒ肷��B
     * 
     * @param data �o�͑Ώە�����
     */
    public void setData(String data) {
        this.data = data;
    }
}
