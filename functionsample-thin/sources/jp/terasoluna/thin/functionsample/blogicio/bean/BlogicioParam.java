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

package jp.terasoluna.thin.functionsample.blogicio.bean;

import java.io.Serializable;

/**
 * blogicioモジュールで使用するblogicパラムクラス
 */
public class BlogicioParam implements Serializable {
    
    /**
     * シリアルバージョンID
     */
    private static final long serialVersionUID = -607316458662012667L;

    /**
     * フォームデータ１
     */
    private String form1 = null;
    
    /**
     * フォームデータ２
     */
    private String form2 = null;
    
    /**
     * リクエストデータ
     */
    private String request = null;
    
    /**
     * セッションデータ
     */
    private String session = null;

    /**
     * アプリケーションデータ
     */
    private String application = null;
    
    /**
     * applicationを取得する。
     * @return application
     */
    public String getApplication() {
        return application;
    }

    /**
     * applicationを設定する。
     * @param application application
     */
    public void setApplication(String application) {
        this.application = application;
    }

    /**
     * form1を取得する。
     * @return form1
     */
    public String getForm1() {
        return form1;
    }

    /**
     * form1を設定する。
     * @param form1 form1
     */
    public void setForm1(String form1) {
        this.form1 = form1;
    }

    /**
     * form2を取得する。
     * @return form2
     */
    public String getForm2() {
        return form2;
    }

    /**
     * form2を設定する。
     * @param form2 form2
     */
    public void setForm2(String form2) {
        this.form2 = form2;
    }

    /**
     * requestを取得する。
     * @return request
     */
    public String getRequest() {
        return request;
    }

    /**
     * requestを設定する。
     * @param request request
     */
    public void setRequest(String request) {
        this.request = request;
    }

    /**
     * sessionを取得する。
     * @return session
     */
    public String getSession() {
        return session;
    }

    /**
     * sessionを設定する。
     * @param session session
     */
    public void setSession(String session) {
        this.session = session;
    }
}