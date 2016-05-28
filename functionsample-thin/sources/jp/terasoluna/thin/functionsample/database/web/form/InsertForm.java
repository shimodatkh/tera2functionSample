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
 * �V�K�o�^��ʂŎg����ActionForm
 *
 */
public class InsertForm extends ValidatorActionFormEx {
    
    /**
     * �V���A���o�[�W����ID 
     */
    private static final long serialVersionUID = 4686817915652930831L;

    /**
     * �ڋq�R�[�h
     */
    private String customerCode = null;
    
    /**
     * �ڋq����
     */
    private String customerName = null;
    
    /**
     * �X�֔ԍ�
     */
    private String postCode = null;
    
    /**
     * �Z��
     */
    private String customerAddress = null;
    
    /**
     * �d�b�ԍ�
     */
    private String customerTel = null;

    /**
     * customerAddress���擾����B
     * @return customerAddress
     */
    public String getCustomerAddress() {
        return customerAddress;
    }

    /**
     * customerAddress��ݒ肷��B
     * @param customerAddress customerAddress�B
     */
    public void setCustomerAddress(String customerAddress) {
        this.customerAddress = customerAddress;
    }

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

    /**
     * customerName���擾����B
     * @return customerName
     */
    public String getCustomerName() {
        return customerName;
    }

    /**
     * customerName��ݒ肷��B
     * @param customerName customerName�B
     */
    public void setCustomerName(String customerName) {
        this.customerName = customerName;
    }

    /**
     * customerTel���擾����B
     * @return customerTel
     */
    public String getCustomerTel() {
        return customerTel;
    }

    /**
     * customerTel��ݒ肷��B
     * @param customerTel customerTel�B
     */
    public void setCustomerTel(String customerTel) {
        this.customerTel = customerTel;
    }

    /**
     * postCode���擾����B
     * @return postCode
     */
    public String getPostCode() {
        return postCode;
    }

    /**
     * postCode��ݒ肷��B
     * @param postCode postCode�B
     */
    public void setPostCode(String postCode) {
        this.postCode = postCode;
    }
}