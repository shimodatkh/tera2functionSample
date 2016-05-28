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
 * ユーザ権限情報オブジェクト
 *
 */
public class UserDivisionVO implements Serializable {

    /**
     * シリアルバージョンID
     */
    private static final long serialVersionUID = 5315171258954903057L;

    /**
     * コンストラクター<br>
     * ユーザ権限がon、若しくはtrueの場合は管理者権限「0」、その以外の場合はユーザ権限「1」を設定する。
     * @param userCode ユーザコード
     * @param userDivision ユーザ権限
     */
    public UserDivisionVO(String userCode, String userDivision) {
        super();
        setUserCode(userCode);
        setUserDivision(userDivision);
    }

    
    /**
     * ユーザコード
     */
    private String userCode = null;
    
    /**
     * ユーザ権限<br>
     * <li>0 : 管理者</li>
     * <li>1 : ユーザ</li>
     */
    private String userDivision = null;

    /**
     * ユーザコードを取得する。
     * @return ユーザコード
     */
    public String getUserCode() {
        return userCode;
    }

    /**
     * ユーザコードを設定する。
     * @param userCode ユーザコード
     */
    public void setUserCode(String userCode) {
        this.userCode = userCode;
    }

    /**
     * ユーザ権限を取得する。
     * @return ユーザ権限
     */
    public String getUserDivision() {
        return userDivision;
    }

    /**
     * ユーザ権限を設定する。
     * ユーザ権限がon、若しくはtrueの場合は管理者権限「0」、その以外の場合はユーザ権限「1」を設定する。
     * 
     * @param userDivision ユーザ権限
     */
    public void setUserDivision(String userDivision) {
        
        Boolean value = null;
        
        if ("on".equalsIgnoreCase(userDivision)) {
            this.userDivision = "0";
            return;
        } else {
            value = new Boolean(userDivision);
            if (value) {
                this.userDivision = "0";   
            } else {
                this.userDivision = "1";
            }
        }
    }

}