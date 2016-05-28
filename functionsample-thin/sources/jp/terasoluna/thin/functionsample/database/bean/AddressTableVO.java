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

package jp.terasoluna.thin.functionsample.database.bean;

/**
 * データベーステーブルVO
 *
 */
public class AddressTableVO {
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
     * 住所を取得する。
     * @return customerAddress
     */
    public String getCustomerAddress() {
        return customerAddress;
    }
    
    /**
     * 住所を設定する。
     * @param customerAddress 主所
     */
    public void setCustomerAddress(String customerAddress) {
        this.customerAddress = customerAddress;
    }
    
    /**
     * 顧客コードを取得する。
     * @return customerCode
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
     * @return customerName
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
     * 電話番号を取得する。
     * @return customerTel
     */
    public String getCustomerTel() {
        return customerTel;
    }
    
    /**
     * 電話番号を設定する。
     * @param customerTel 電話番号
     */
    public void setCustomerTel(String customerTel) {
        this.customerTel = customerTel;
    }
    
    /**
     * 郵便番号を取得する。
     * @return postCode
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

    @Override
    public String toString() {
        StringBuilder builder = new StringBuilder();
        builder.append("AddressTableVO [");
        if (customerCode != null) {
            builder.append("customerCode=");
            builder.append(customerCode);
            builder.append(", ");
        }
        if (customerName != null) {
            builder.append("customerName=");
            builder.append(customerName);
            builder.append(", ");
        }
        if (postCode != null) {
            builder.append("postCode=");
            builder.append(postCode);
            builder.append(", ");
        }
        if (customerAddress != null) {
            builder.append("customerAddress=");
            builder.append(customerAddress);
            builder.append(", ");
        }
        if (customerTel != null) {
            builder.append("customerTel=");
            builder.append(customerTel);
        }
        builder.append("]");
        return builder.toString();
    }
}