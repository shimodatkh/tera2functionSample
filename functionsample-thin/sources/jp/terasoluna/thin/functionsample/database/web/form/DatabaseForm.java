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

package jp.terasoluna.thin.functionsample.database.web.form;

import jp.terasoluna.fw.web.struts.form.ValidatorActionFormEx;

/**
 * �Z���^�ꗗ�\����ʂŎg����ActionForm
 *
 */
public class DatabaseForm extends ValidatorActionFormEx {

    /**
     * �V���A���o�[�W����ID
     */
    private static final long serialVersionUID = 4819083873772832966L;
    
    /**
     * �ڋq�R�[�h
     */
    private String customerCode = null;

    /**
     * customerCode���擾����B
     * @return customerCode
     */
    public String getCustomerCode() {
        return customerCode;
    }

    /**
     * customerCode��ݒ肷��B
     * @param customerCode customerCode�B
     */
    public void setCustomerCode(String customerCode) {
        this.customerCode = customerCode;
    }
}
