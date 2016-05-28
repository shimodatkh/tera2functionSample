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
 * ‚Q‚Â‚Ì“ü—ÍZŠî•ñ‚ğ•Û‚·‚éƒNƒ‰ƒXB
 * 
 * @version 2006/02/23
 */
public class InsertAddressParam implements Serializable {
    
    /**
     * ƒVƒŠƒAƒ‹ƒo[ƒWƒ‡ƒ“ID 
     */
    private static final long serialVersionUID = 4558989253701266161L;

    /**
     * ŒÚ‹qƒR[ƒh‚P
     */
    private String customerCode1 = null;
    
    /**
     * ŒÚ‹q–¼‚P
     */
    private String customerName1 = null;
    
    /**
     * ŒÚ‹qZŠ‚P
     */
    private String customerAddress1 = null;
    
    /**
     * ŒÚ‹q“d˜b”Ô†‚P
     */
    private String customerTel1 = null;
    
    /**
     * —X•Ö”Ô†‚P
     */
    private String postCode1 = null;
    
    /**
     * ŒÚ‹qƒR[ƒh‚Q
     */
    private String customerCode2 = null;
    
    /**
     * ŒÚ‹q–¼‚Q
     */
    private String customerName2 = null;
    
    /**
     * ŒÚ‹qZŠ‚Q
     */
    private String customerAddress2 = null;
    
    /**
     * ŒÚ‹q“d˜b”Ô†‚Q
     */
    private String customerTel2 = null;
    
    /**
     * —X•Ö”Ô†‚Q
     */
    private String postCode2 = null;

    /**
     * ŒÚ‹qZŠ1‚ğæ“¾‚·‚éB
     * @return ŒÚ‹qZŠ1
     */
    public String getCustomerAddress1() {
        return customerAddress1;
    }

    /**
     * ŒÚ‹qZŠ1‚ğİ’è‚·‚éB
     * @param customerAddress1 ŒÚ‹qZŠ1
     */
    public void setCustomerAddress1(String customerAddress1) {
        this.customerAddress1 = customerAddress1;
    }

    /**
     * ŒÚ‹qZŠ2‚ğæ“¾‚·‚éB
     * @return ŒÚ‹qZŠ2
     */
    public String getCustomerAddress2() {
        return customerAddress2;
    }

    /**
     * ŒÚ‹qZŠ2‚ğİ’è‚·‚éB
     * @param customerAddress2 ŒÚ‹qZŠ2
     */
    public void setCustomerAddress2(String customerAddress2) {
        this.customerAddress2 = customerAddress2;
    }

    /**
     * ŒÚ‹qƒR[ƒh1‚ğæ“¾‚·‚éB
     * @return ŒÚ‹qƒR[ƒh1
     */
    public String getCustomerCode1() {
        return customerCode1;
    }

    /**
     * ŒÚ‹qƒR[ƒh1‚ğİ’è‚·‚éB
     * @param customerCode1 ŒÚ‹qƒR[ƒh1
     */
    public void setCustomerCode1(String customerCode1) {
        this.customerCode1 = customerCode1;
    }

    /**
     * ŒÚ‹qƒR[ƒh2‚ğæ“¾‚·‚éB
     * @return ŒÚ‹qƒR[ƒh2
     */
    public String getCustomerCode2() {
        return customerCode2;
    }

    /**
     * ŒÚ‹qƒR[ƒh2‚ğİ’è‚·‚éB
     * @param customerCode2 ŒÚ‹qƒR[ƒh2
     */
    public void setCustomerCode2(String customerCode2) {
        this.customerCode2 = customerCode2;
    }

    /**
     * ŒÚ‹q–¼1‚ğæ“¾‚·‚éB
     * @return ŒÚ‹q–¼1
     */
    public String getCustomerName1() {
        return customerName1;
    }

    /**
     * ŒÚ‹q–¼1‚ğİ’è‚·‚éB
     * @param customerName1 ŒÚ‹q–¼1
     */
    public void setCustomerName1(String customerName1) {
        this.customerName1 = customerName1;
    }

    /**
     * ŒÚ‹q–¼2‚ğæ“¾‚·‚éB
     * @return ŒÚ‹q–¼2
     */
    public String getCustomerName2() {
        return customerName2;
    }

    /**
     * ŒÚ‹q–¼2‚ğİ’è‚·‚éB
     * @param customerName2 ŒÚ‹q–¼2
     */
    public void setCustomerName2(String customerName2) {
        this.customerName2 = customerName2;
    }

    /**
     * ŒÚ‹q“d˜b”Ô†1‚ğæ“¾‚·‚éB
     * @return ŒÚ‹q“d˜b”Ô†1
     */
    public String getCustomerTel1() {
        return customerTel1;
    }

    /**
     * ŒÚ‹q“d˜b”Ô†1‚ğİ’è‚·‚éB
     * @param customerTel1 ŒÚ‹q“d˜b”Ô†1
     */
    public void setCustomerTel1(String customerTel1) {
        this.customerTel1 = customerTel1;
    }

    /**
     * ŒÚ‹q“d˜b”Ô†2‚ğæ“¾‚·‚éB
     * @return ŒÚ‹q“d˜b”Ô†2
     */
    public String getCustomerTel2() {
        return customerTel2;
    }

    /**
     * ŒÚ‹q“d˜b”Ô†2‚ğİ’è‚·‚éB
     * @param customerTel2 ŒÚ‹q“d˜b”Ô†2
     */
    public void setCustomerTel2(String customerTel2) {
        this.customerTel2 = customerTel2;
    }

    /**
     * —X•Ö”Ô†1‚ğæ“¾‚·‚éB
     * @return —X•Ö”Ô†1
     */
    public String getPostCode1() {
        return postCode1;
    }

    /**
     * —X•Ö”Ô†1‚ğİ’è‚·‚éB
     * @param postCode1 —X•Ö”Ô†1
     */
    public void setPostCode1(String postCode1) {
        this.postCode1 = postCode1;
    }

    /**
     * —X•Ö”Ô†2‚ğæ“¾‚·‚éB
     * @return —X•Ö”Ô†2
     */
    public String getPostCode2() {
        return postCode2;
    }

    /**
     * —X•Ö”Ô†2‚ğİ’è‚·‚éB
     * @param postCode2 —X•Ö”Ô†2
     */
    public void setPostCode2(String postCode2) {
        this.postCode2 = postCode2;
    }
}
