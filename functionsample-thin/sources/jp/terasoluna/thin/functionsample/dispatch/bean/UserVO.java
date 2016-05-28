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

package jp.terasoluna.thin.functionsample.dispatch.bean;

import java.io.Serializable;

/**
 * ���[�U���I�u�W�F�N�g
 *
 */
public class UserVO implements Serializable {
    
    /**
     * �V���A���o�[�W����ID
     */
    private static final long serialVersionUID = -3384154772376864410L;

    /**
     * ���[�U�R�[�h
     */
    private String userCode = null;
    
    /**
     * ���[�U��
     */
    private String userName = null;
    
    /**
     * ���[�U����<br>
     * <li>0 : �Ǘ���</li>
     * <li>1 : ���[�U</li>
     */
    private String userDivision = null;

    /**
     * ���[�U�R�[�h���擾����B
     * @return ���[�U�R�[�h
     */
    public String getUserCode() {
        return userCode;
    }

    /**
     * ���[�U�R�[�h��ݒ肷��B
     * @param userCode ���[�U�R�[�h
     */
    public void setUserCode(String userCode) {
        this.userCode = userCode;
    }

    /**
     * ���[�U�������擾����B
     * @return ���[�U����
     */
    public String getUserDivision() {
        return userDivision;
    }

    /**
     * ���[�U������ݒ肷��B
     * @param userDivision ���[�U����
     */
    public void setUserDivision(String userDivision) {
        this.userDivision = userDivision;
    }

    /**
     * ���[�U�����擾����B
     * @return ���[�U��
     */
    public String getUserName() {
        return userName;
    }

    /**
     * ���[�U����ݒ肷��B
     * @param userName ���[�U��
     */
    public void setUserName(String userName) {
        this.userName = userName;
    }
    
}