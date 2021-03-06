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
 * 住所情報を保持するクラス。
 *
 * @version 2006/02/23
 */
public class AddressVO implements Serializable {
    
    /**
     * シリアルバージョンID 
     */
    private static final long serialVersionUID = 6732135539782683576L;

    /**
     * 顧客コード
     */
    private String customerCode = null;
    
    /**
     * 顧客氏名
     */
    private String customerName = null;
    
    /**
     * 顧客住所
     */
    private String customerAddress = null;
    
    /**
     * 顧客電話番号
     */
    private String customerTel = null;
    
    /**
     * 郵便番号
     */
    private String postCode = null;
    
    /**
     * 顧客住所を取得する。
     * @return customerAddress 顧客住所。
     */
    public String getCustomerAddress() {
        return customerAddress;
    }
    
    /**
     * 顧客住所を設定する。
     * @param customerAddress 顧客住所
     */
    public void setCustomerAddress(String customerAddress) {
        this.customerAddress = customerAddress;
    }
    
    /**
     * 顧客コードを取得する。
     * @return 顧客コード
     */
    public String getCustomerCode() {
        return customerCode;
    }
    
    /**
     * 顧客コードを設定する。
     * @param customerCode 顧客コード
     */
    public void setCustomerCode(String customerCode) {
        this.customerCode = customerCode;
    }
    
    /**
     * 顧客氏名を取得する。
     * @return 顧客氏名
     */
    public String getCustomerName() {
        return customerName;
    }
    
    /**
     * 顧客氏名を設定する。
     * @param customerName 顧客氏名
     */
    public void setCustomerName(String customerName) {
        this.customerName = customerName;
    }
    
    /**
     * 顧客電話番号を取得する。
     * @return 顧客電話番号
     */
    public String getCustomerTel() {
        return customerTel;
    }
    
    /**
     * 顧客電話番号を設定する。
     * @param customerTel 顧客電話番号
     */
    public void setCustomerTel(String customerTel) {
        this.customerTel = customerTel;
    }
    
    /**
     * 郵便番号を取得する。
     * @return 郵便番号
     */
    public String getPostCode() {
        return postCode;
    }
    
    /**
     * 郵便番号を設定する。
     * @param postCode 郵便番号
     */
    public void setPostCode(String postCode) {
        this.postCode = postCode;
    }   
}
