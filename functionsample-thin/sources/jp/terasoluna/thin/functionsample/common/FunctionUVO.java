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
 * TERASOLUNA-Spring機能網羅サンプルAPのユーザ情報クラス
 * <p>
 * ログインしたユーザのユーザIDとユーザ名、ユーザ区分を保持する。
 * </p>
 * @see jp.terasoluna.fw.web.UserValueObject
 */
public class FunctionUVO extends UserValueObject {

    /**
     * シリアルバージョンID 
     */
    private static final long serialVersionUID = 3918411986746162087L;

    /**
     * ユーザID。
     */
    private String userID = null;
    
    /**
     * ユーザ名。
     */
    private String userName = null;
    
    /**
     * ユーザ区別。
     */
    private String auth = null;
    
    /**
     * ユーザIDを設定する。
     * @param userID ユーザID
     */
    public void setUserID(String userID) {
        this.userID = userID;
    }
    
    /**
     * ユーザIDを取得する。
     * @return ユーザID
     */
    public String getUserID() {
        return userID;
    }
    
    /**
     * ユーザ名を取得する。
     * @return ユーザ氏名
     */
    public String getUserName() {
        return userName;
    }
    
    /**
     * ユーザ名を設定する。
     * @param userName ユーザ氏名
     */
    public void setUserName(String userName) {
        this.userName = userName;
    }
    
    /**
     * ユーザ区分を取得する。
     * @return ユーザ区分
     */
    public String getAuth() {
        return auth;
    }
    
    /**
     * ユーザ区分を設定する。
     * @param auth ユーザ区分 
     */
    public void setAuth(String auth) {
        this.auth = auth;
    }
}