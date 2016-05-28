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
 * wareki�@�\�Ŏg����ActionForm
 * 
 */
public class WarekiForm extends ValidatorActionFormEx {

    /**
     * �V���A���o�[�W����ID
     */
    private static final long serialVersionUID = 8813685410712523789L;

    /**
     * �o�͑Ώۓ��t�i�p�^�[��4�j�B
     */
    private String datePattern04 = "2009/03/21 00:12:34";

    /**
     * �o�͑Ώۓ��t�i�p�^�[��10�j�B
     */
    private String datePattern10 = "2009-01-21 12,34,56,789";

    /**
     * �o�͑Ώۓ��t�i�p�^�[��4�j��ԋp����B
     * 
     * @return �o�͑Ώۓ��t�i�p�^�[��4�j
     */
    public String getDatePattern04() {
        return datePattern04;
    }

    /**
     * �o�͑Ώۓ��t�i�p�^�[��4�j��ݒ肷��B
     * 
     * @param date �o�͑Ώۓ��t�i�p�^�[��4�j
     */
    public void setDatePattern04(String datePattern04) {
        this.datePattern04 = datePattern04;
    }

    /**
     * �o�͑Ώۓ��t�i�p�^�[��10�j��ԋp����B
     * 
     * @return �o�͑Ώۓ��t�i�p�^�[��10�j
     */
    public String getDatePattern10() {
        return datePattern10;
    }

    /**
     * �o�͑Ώۓ��t�i�p�^�[��10�j��ݒ肷��B
     * 
     * @param date �o�͑Ώۓ��t�i�p�^�[��10�j
     */
    public void setDatePattern10(String datePattern10) {
        this.datePattern10 = datePattern10;
    }

}
