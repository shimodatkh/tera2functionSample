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
 * ZŠî•ñ‚ğ•Û‚·‚éƒNƒ‰ƒXB
 *
 * @version 2006/02/23
 */
public class AddressVO implements Serializable {
    
    /**
     * ƒVƒŠƒAƒ‹ƒo[ƒWƒ‡ƒ“ID 
     */
    private static final long serialVersionUID = 6732135539782683576L;

    /**
     * ŒÚ‹qƒR[ƒh
     */
    private String customerCode = null;
    
    /**
     * ŒÚ‹q–¼
     */
    private String customerName = null;
    
    /**
     * ŒÚ‹qZŠ
     */
    private String customerAddress = null;
    
    /**
     * ŒÚ‹q“d˜b”Ô†
     */
    private String customerTel = null;
    
    /**
     * —X•Ö”Ô†
     */
    private String postCode = null;
    
    /**
     * ŒÚ‹qZŠ‚ğæ“¾‚·‚éB
     * @return customerAddress ŒÚ‹qZŠB
     */
    public String getCustomerAddress() {
        return customerAddress;
    }
    
    /**
     * ŒÚ‹qZŠ‚ğİ’è‚·‚éB
     * @param customerAddress ŒÚ‹qZŠ
     */
    public void setCustomerAddress(String customerAddress) {
        this.customerAddress = customerAddress;
    }
    
    /**
     * ŒÚ‹qƒR[ƒh‚ğæ“¾‚·‚éB
     * @return ŒÚ‹qƒR[ƒh
     */
    public String getCustomerCode() {
        return customerCode;
    }
    
    /**
     * ŒÚ‹qƒR[ƒh‚ğİ’è‚·‚éB
     * @param customerCode ŒÚ‹qƒR[ƒh
     */
    public void setCustomerCode(String customerCode) {
        this.customerCode = customerCode;
    }
    
    /**
     * ŒÚ‹q–¼‚ğæ“¾‚·‚éB
     * @return ŒÚ‹q–¼
     */
    public String getCustomerName() {
        return customerName;
    }
    
    /**
     * ŒÚ‹q–¼‚ğİ’è‚·‚éB
     * @param customerName ŒÚ‹q–¼
     */
    public void setCustomerName(String customerName) {
        this.customerName = customerName;
    }
    
    /**
     * ŒÚ‹q“d˜b”Ô†‚ğæ“¾‚·‚éB
     * @return ŒÚ‹q“d˜b”Ô†
     */
    public String getCustomerTel() {
        return customerTel;
    }
    
    /**
     * ŒÚ‹q“d˜b”Ô†‚ğİ’è‚·‚éB
     * @param customerTel ŒÚ‹q“d˜b”Ô†
     */
    public void setCustomerTel(String customerTel) {
        this.customerTel = customerTel;
    }
    
    /**
     * —X•Ö”Ô†‚ğæ“¾‚·‚éB
     * @return —X•Ö”Ô†
     */
    public String getPostCode() {
        return postCode;
    }
    
    /**
     * —X•Ö”Ô†‚ğİ’è‚·‚éB
     * @param postCode —X•Ö”Ô†
     */
    public void setPostCode(String postCode) {
        this.postCode = postCode;
    }   
}
