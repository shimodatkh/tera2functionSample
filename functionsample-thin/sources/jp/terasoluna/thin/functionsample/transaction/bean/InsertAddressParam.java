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

package jp.terasoluna.thin.functionsample.transaction.bean;

import java.io.Serializable;

/**
 * ２つの入力住所情報を保持するクラス。
 * 
 * @version 2006/02/23
 */
public class InsertAddressParam implements Serializable {
    
    /**
     * シリアルバージョンID 
     */
    private static final long serialVersionUID = 4558989253701266161L;

    /**
     * 顧客コード１
     */
    private String customerCode1 = null;
    
    /**
     * 顧客名１
     */
    private String customerName1 = null;
    
    /**
     * 顧客住所１
     */
    private String customerAddress1 = null;
    
    /**
     * 顧客電話番号１
     */
    private String customerTel1 = null;
    
    /**
     * 郵便番号１
     */
    private String postCode1 = null;
    
    /**
     * 顧客コード２
     */
    private String customerCode2 = null;
    
    /**
     * 顧客名２
     */
    private String customerName2 = null;
    
    /**
     * 顧客住所２
     */
    private String customerAddress2 = null;
    
    /**
     * 顧客電話番号２
     */
    private String customerTel2 = null;
    
    /**
     * 郵便番号２
     */
    private String postCode2 = null;

    /**
     * 顧客住所1を取得する。
     * @return 顧客住所1
     */
    public String getCustomerAddress1() {
        return customerAddress1;
    }

    /**
     * 顧客住所1を設定する。
     * @param customerAddress1 顧客住所1
     */
    public void setCustomerAddress1(String customerAddress1) {
        this.customerAddress1 = customerAddress1;
    }

    /**
     * 顧客住所2を取得する。
     * @return 顧客住所2
     */
    public String getCustomerAddress2() {
        return customerAddress2;
    }

    /**
     * 顧客住所2を設定する。
     * @param customerAddress2 顧客住所2
     */
    public void setCustomerAddress2(String customerAddress2) {
        this.customerAddress2 = customerAddress2;
    }

    /**
     * 顧客コード1を取得する。
     * @return 顧客コード1
     */
    public String getCustomerCode1() {
        return customerCode1;
    }

    /**
     * 顧客コード1を設定する。
     * @param customerCode1 顧客コード1
     */
    public void setCustomerCode1(String customerCode1) {
        this.customerCode1 = customerCode1;
    }

    /**
     * 顧客コード2を取得する。
     * @return 顧客コード2
     */
    public String getCustomerCode2() {
        return customerCode2;
    }

    /**
     * 顧客コード2を設定する。
     * @param customerCode2 顧客コード2
     */
    public void setCustomerCode2(String customerCode2) {
        this.customerCode2 = customerCode2;
    }

    /**
     * 顧客名1を取得する。
     * @return 顧客名1
     */
    public String getCustomerName1() {
        return customerName1;
    }

    /**
     * 顧客名1を設定する。
     * @param customerName1 顧客名1
     */
    public void setCustomerName1(String customerName1) {
        this.customerName1 = customerName1;
    }

    /**
     * 顧客名2を取得する。
     * @return 顧客名2
     */
    public String getCustomerName2() {
        return customerName2;
    }

    /**
     * 顧客名2を設定する。
     * @param customerName2 顧客名2
     */
    public void setCustomerName2(String customerName2) {
        this.customerName2 = customerName2;
    }

    /**
     * 顧客電話番号1を取得する。
     * @return 顧客電話番号1
     */
    public String getCustomerTel1() {
        return customerTel1;
    }

    /**
     * 顧客電話番号1を設定する。
     * @param customerTel1 顧客電話番号1
     */
    public void setCustomerTel1(String customerTel1) {
        this.customerTel1 = customerTel1;
    }

    /**
     * 顧客電話番号2を取得する。
     * @return 顧客電話番号2
     */
    public String getCustomerTel2() {
        return customerTel2;
    }

    /**
     * 顧客電話番号2を設定する。
     * @param customerTel2 顧客電話番号2
     */
    public void setCustomerTel2(String customerTel2) {
        this.customerTel2 = customerTel2;
    }

    /**
     * 郵便番号1を取得する。
     * @return 郵便番号1
     */
    public String getPostCode1() {
        return postCode1;
    }

    /**
     * 郵便番号1を設定する。
     * @param postCode1 郵便番号1
     */
    public void setPostCode1(String postCode1) {
        this.postCode1 = postCode1;
    }

    /**
     * 郵便番号2を取得する。
     * @return 郵便番号2
     */
    public String getPostCode2() {
        return postCode2;
    }

    /**
     * 郵便番号2を設定する。
     * @param postCode2 郵便番号2
     */
    public void setPostCode2(String postCode2) {
        this.postCode2 = postCode2;
    }
}
