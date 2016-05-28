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

package jp.terasoluna.thin.functionsample.common;

import jp.terasoluna.fw.web.UserValueObject;

/**
 * TERASOLUNA-Spring�@�\�ԗ��T���v��AP�̃��[�U���N���X
 * <p>
 * ���O�C���������[�U�̃��[�UID�ƃ��[�U���A���[�U�敪��ێ�����B
 * </p>
 * @see jp.terasoluna.fw.web.UserValueObject
 */
public class FunctionUVO extends UserValueObject {

    /**
     * �V���A���o�[�W����ID 
     */
    private static final long serialVersionUID = 3918411986746162087L;

    /**
     * ���[�UID�B
     */
    private String userID = null;
    
    /**
     * ���[�U���B
     */
    private String userName = null;
    
    /**
     * ���[�U��ʁB
     */
    private String auth = null;
    
    /**
     * ���[�UID��ݒ肷��B
     * @param userID ���[�UID
     */
    public void setUserID(String userID) {
        this.userID = userID;
    }
    
    /**
     * ���[�UID���擾����B
     * @return ���[�UID
     */
    public String getUserID() {
        return userID;
    }
    
    /**
     * ���[�U�����擾����B
     * @return ���[�U����
     */
    public String getUserName() {
        return userName;
    }
    
    /**
     * ���[�U����ݒ肷��B
     * @param userName ���[�U����
     */
    public void setUserName(String userName) {
        this.userName = userName;
    }
    
    /**
     * ���[�U�敪���擾����B
     * @return ���[�U�敪
     */
    public String getAuth() {
        return auth;
    }
    
    /**
     * ���[�U�敪��ݒ肷��B
     * @param auth ���[�U�敪 
     */
    public void setAuth(String auth) {
        this.auth = auth;
    }
}