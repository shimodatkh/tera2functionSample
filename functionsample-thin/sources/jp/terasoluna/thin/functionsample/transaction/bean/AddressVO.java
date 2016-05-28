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
 * �Z������ێ�����N���X�B
 *
 * @version 2006/02/23
 */
public class AddressVO implements Serializable {
    
    /**
     * �V���A���o�[�W����ID 
     */
    private static final long serialVersionUID = 6732135539782683576L;

    /**
     * �ڋq�R�[�h
     */
    private String customerCode = null;
    
    /**
     * �ڋq����
     */
    private String customerName = null;
    
    /**
     * �ڋq�Z��
     */
    private String customerAddress = null;
    
    /**
     * �ڋq�d�b�ԍ�
     */
    private String customerTel = null;
    
    /**
     * �X�֔ԍ�
     */
    private String postCode = null;
    
    /**
     * �ڋq�Z�����擾����B
     * @return customerAddress �ڋq�Z���B
     */
    public String getCustomerAddress() {
        return customerAddress;
    }
    
    /**
     * �ڋq�Z����ݒ肷��B
     * @param customerAddress �ڋq�Z��
     */
    public void setCustomerAddress(String customerAddress) {
        this.customerAddress = customerAddress;
    }
    
    /**
     * �ڋq�R�[�h���擾����B
     * @return �ڋq�R�[�h
     */
    public String getCustomerCode() {
        return customerCode;
    }
    
    /**
     * �ڋq�R�[�h��ݒ肷��B
     * @param customerCode �ڋq�R�[�h
     */
    public void setCustomerCode(String customerCode) {
        this.customerCode = customerCode;
    }
    
    /**
     * �ڋq�������擾����B
     * @return �ڋq����
     */
    public String getCustomerName() {
        return customerName;
    }
    
    /**
     * �ڋq������ݒ肷��B
     * @param customerName �ڋq����
     */
    public void setCustomerName(String customerName) {
        this.customerName = customerName;
    }
    
    /**
     * �ڋq�d�b�ԍ����擾����B
     * @return �ڋq�d�b�ԍ�
     */
    public String getCustomerTel() {
        return customerTel;
    }
    
    /**
     * �ڋq�d�b�ԍ���ݒ肷��B
     * @param customerTel �ڋq�d�b�ԍ�
     */
    public void setCustomerTel(String customerTel) {
        this.customerTel = customerTel;
    }
    
    /**
     * �X�֔ԍ����擾����B
     * @return �X�֔ԍ�
     */
    public String getPostCode() {
        return postCode;
    }
    
    /**
     * �X�֔ԍ���ݒ肷��B
     * @param postCode �X�֔ԍ�
     */
    public void setPostCode(String postCode) {
        this.postCode = postCode;
    }   
}
