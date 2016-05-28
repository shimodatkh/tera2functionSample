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
 * �f�[�^�x�[�X�e�[�u��VO
 *
 */
public class AddressTableVO {
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
     * �Z�����擾����B
     * @return customerAddress
     */
    public String getCustomerAddress() {
        return customerAddress;
    }
    
    /**
     * �Z����ݒ肷��B
     * @param customerAddress �及
     */
    public void setCustomerAddress(String customerAddress) {
        this.customerAddress = customerAddress;
    }
    
    /**
     * �ڋq�R�[�h���擾����B
     * @return customerCode
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
     * @return customerName
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
     * �d�b�ԍ����擾����B
     * @return customerTel
     */
    public String getCustomerTel() {
        return customerTel;
    }
    
    /**
     * �d�b�ԍ���ݒ肷��B
     * @param customerTel �d�b�ԍ�
     */
    public void setCustomerTel(String customerTel) {
        this.customerTel = customerTel;
    }
    
    /**
     * �X�֔ԍ����擾����B
     * @return postCode
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