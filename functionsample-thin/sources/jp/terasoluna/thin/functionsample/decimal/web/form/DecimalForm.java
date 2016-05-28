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
 * decimal�@�\�Ŏg����ActionForm
 * 
 */
public class DecimalForm extends ValidatorActionFormEx {

    /**
     * �V���A���o�[�W����ID
     */
    private static final long serialVersionUID = -664262332999467729L;

    /**
     * �o�͑Ώې����B
     */
    private String decimal = "1956.0491";

    /**
     * �o�͑Ώې�����ԋp����B
     * 
     * @return �o�͑Ώې���
     */
    public String getDecimal() {
        return decimal;
    }

    /**
     * �o�͑Ώې�����ݒ肷��B
     * 
     * @param decimal �o�͑Ώې���
     */
    public void setDecimal(String decimal) {
        this.decimal = decimal;
    }
}