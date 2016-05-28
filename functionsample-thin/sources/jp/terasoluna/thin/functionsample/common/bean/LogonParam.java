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

package jp.terasoluna.thin.functionsample.common.bean;

/**
 * ���O�I�������Ŏg����p�����[�^�N���X
 * 
 */
public class LogonParam {
    
    /**
     * ���[�UID
     */
    private String userID;
    
    /**
     * �p�X���[�h
     */
    private String password;
    
    /**
     * �p�X���[�h���擾����B
     * @return �p�X���[�h
     */
    public String getPassword() {
        return password;
    }
    
    /**
     * �p�X���[�h��ݒ肷��B
     * @param password
     */
    public void setPassword(String password) {
        this.password = password;
    }
    
    /**
     * ���[�UID���擾����B
     * @return ���[�UID
     */
    public String getUserID() {
        return userID;
    }
    
    /**
     * ���[�UID��ݒ肷��B
     * @param userID
     */
    public void setUserID(String userID) {
        this.userID = userID;
    }
}