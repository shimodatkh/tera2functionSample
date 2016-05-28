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
 * 新規登録画面で使われるActionForm
 *
 */
public class InsertForm extends ValidatorActionFormEx {
    
    /**
     * シリアルバージョンID 
     */
    private static final long serialVersionUID = 4686817915652930831L;

    /**
     * 顧客コード
     */
    private String customerCode = null;
    
    /**
     * 顧客氏名
     */
    private String customerName = null;
    
    /**
     * 郵便番号
     */
    private String postCode = null;
    
    /**
     * 住所
     */
    private String customerAddress = null;
    
    /**
     * 電話番号
     */
    private String customerTel = null;

    /**
     * customerAddressを取得する。
     * @return customerAddress
     */
    public String getCustomerAddress() {
        return customerAddress;
    }

    /**
     * customerAddressを設定する。
     * @param customerAddress customerAddress。
     */
    public void setCustomerAddress(String customerAddress) {
        this.customerAddress = customerAddress;
    }

    /**
     * customerCodeを取得する。
     * @return customerCode
     */
    public String getCustomerCode() {
        return customerCode;
    }

    /**
     * customerCodeを設定する。
     * @param customerCode customerCode。
     */
    public void setCustomerCode(String customerCode) {
        this.customerCode = customerCode;
    }

    /**
     * customerNameを取得する。
     * @return customerName
     */
    public String getCustomerName() {
        return customerName;
    }

    /**
     * customerNameを設定する。
     * @param customerName customerName。
     */
    public void setCustomerName(String customerName) {
        this.customerName = customerName;
    }

    /**
     * customerTelを取得する。
     * @return customerTel
     */
    public String getCustomerTel() {
        return customerTel;
    }

    /**
     * customerTelを設定する。
     * @param customerTel customerTel。
     */
    public void setCustomerTel(String customerTel) {
        this.customerTel = customerTel;
    }

    /**
     * postCodeを取得する。
     * @return postCode
     */
    public String getPostCode() {
        return postCode;
    }

    /**
     * postCodeを設定する。
     * @param postCode postCode。
     */
    public void setPostCode(String postCode) {
        this.postCode = postCode;
    }
}