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

package jp.terasoluna.thin.functionsample.common.web.form;

import jp.terasoluna.fw.web.struts.form.ValidatorActionFormEx;

/**
 * ログオン機能で使われるActionForm
 * 
 */
public class LogonForm extends ValidatorActionFormEx {

    /**
     * シリアルバージョンID
     */
    private static final long serialVersionUID = 5000593762515534317L;

    /**
     * ユーザID
     */
    private String userID;
    
    /**
     * パスワード
     */
    private String password;
    
    /**
     * パスワードを取得する。
     * @return パスワード
     */
    public String getPassword() {
        return password;
    }
    
    /**
     * パスワードを設定する。
     * @param password
     */
    public void setPassword(String password) {
        this.password = password;
    }
    
    /**
     * ユーザIDを取得する。
     * @return ユーザID
     */
    public String getUserID() {
        return userID;
    }
    
    /**
     * ユーザIDを設定する。
     * @param userID
     */
    public void setUserID(String userID) {
        this.userID = userID;
    }
}