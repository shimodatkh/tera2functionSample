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
 * �Q�̓��͏Z������ێ�����N���X�B
 * 
 * @version 2006/02/23
 */
public class InsertAddressParam implements Serializable {
    
    /**
     * �V���A���o�[�W����ID 
     */
    private static final long serialVersionUID = 4558989253701266161L;

    /**
     * �ڋq�R�[�h�P
     */
    private String customerCode1 = null;
    
    /**
     * �ڋq���P
     */
    private String customerName1 = null;
    
    /**
     * �ڋq�Z���P
     */
    private String customerAddress1 = null;
    
    /**
     * �ڋq�d�b�ԍ��P
     */
    private String customerTel1 = null;
    
    /**
     * �X�֔ԍ��P
     */
    private String postCode1 = null;
    
    /**
     * �ڋq�R�[�h�Q
     */
    private String customerCode2 = null;
    
    /**
     * �ڋq���Q
     */
    private String customerName2 = null;
    
    /**
     * �ڋq�Z���Q
     */
    private String customerAddress2 = null;
    
    /**
     * �ڋq�d�b�ԍ��Q
     */
    private String customerTel2 = null;
    
    /**
     * �X�֔ԍ��Q
     */
    private String postCode2 = null;

    /**
     * �ڋq�Z��1���擾����B
     * @return �ڋq�Z��1
     */
    public String getCustomerAddress1() {
        return customerAddress1;
    }

    /**
     * �ڋq�Z��1��ݒ肷��B
     * @param customerAddress1 �ڋq�Z��1
     */
    public void setCustomerAddress1(String customerAddress1) {
        this.customerAddress1 = customerAddress1;
    }

    /**
     * �ڋq�Z��2���擾����B
     * @return �ڋq�Z��2
     */
    public String getCustomerAddress2() {
        return customerAddress2;
    }

    /**
     * �ڋq�Z��2��ݒ肷��B
     * @param customerAddress2 �ڋq�Z��2
     */
    public void setCustomerAddress2(String customerAddress2) {
        this.customerAddress2 = customerAddress2;
    }

    /**
     * �ڋq�R�[�h1���擾����B
     * @return �ڋq�R�[�h1
     */
    public String getCustomerCode1() {
        return customerCode1;
    }

    /**
     * �ڋq�R�[�h1��ݒ肷��B
     * @param customerCode1 �ڋq�R�[�h1
     */
    public void setCustomerCode1(String customerCode1) {
        this.customerCode1 = customerCode1;
    }

    /**
     * �ڋq�R�[�h2���擾����B
     * @return �ڋq�R�[�h2
     */
    public String getCustomerCode2() {
        return customerCode2;
    }

    /**
     * �ڋq�R�[�h2��ݒ肷��B
     * @param customerCode2 �ڋq�R�[�h2
     */
    public void setCustomerCode2(String customerCode2) {
        this.customerCode2 = customerCode2;
    }

    /**
     * �ڋq��1���擾����B
     * @return �ڋq��1
     */
    public String getCustomerName1() {
        return customerName1;
    }

    /**
     * �ڋq��1��ݒ肷��B
     * @param customerName1 �ڋq��1
     */
    public void setCustomerName1(String customerName1) {
        this.customerName1 = customerName1;
    }

    /**
     * �ڋq��2���擾����B
     * @return �ڋq��2
     */
    public String getCustomerName2() {
        return customerName2;
    }

    /**
     * �ڋq��2��ݒ肷��B
     * @param customerName2 �ڋq��2
     */
    public void setCustomerName2(String customerName2) {
        this.customerName2 = customerName2;
    }

    /**
     * �ڋq�d�b�ԍ�1���擾����B
     * @return �ڋq�d�b�ԍ�1
     */
    public String getCustomerTel1() {
        return customerTel1;
    }

    /**
     * �ڋq�d�b�ԍ�1��ݒ肷��B
     * @param customerTel1 �ڋq�d�b�ԍ�1
     */
    public void setCustomerTel1(String customerTel1) {
        this.customerTel1 = customerTel1;
    }

    /**
     * �ڋq�d�b�ԍ�2���擾����B
     * @return �ڋq�d�b�ԍ�2
     */
    public String getCustomerTel2() {
        return customerTel2;
    }

    /**
     * �ڋq�d�b�ԍ�2��ݒ肷��B
     * @param customerTel2 �ڋq�d�b�ԍ�2
     */
    public void setCustomerTel2(String customerTel2) {
        this.customerTel2 = customerTel2;
    }

    /**
     * �X�֔ԍ�1���擾����B
     * @return �X�֔ԍ�1
     */
    public String getPostCode1() {
        return postCode1;
    }

    /**
     * �X�֔ԍ�1��ݒ肷��B
     * @param postCode1 �X�֔ԍ�1
     */
    public void setPostCode1(String postCode1) {
        this.postCode1 = postCode1;
    }

    /**
     * �X�֔ԍ�2���擾����B
     * @return �X�֔ԍ�2
     */
    public String getPostCode2() {
        return postCode2;
    }

    /**
     * �X�֔ԍ�2��ݒ肷��B
     * @param postCode2 �X�֔ԍ�2
     */
    public void setPostCode2(String postCode2) {
        this.postCode2 = postCode2;
    }
}
