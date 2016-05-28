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

package jp.terasoluna.thin.functionsample.pagelink.bean;

import java.io.Serializable;

/**
 * ユーザ情報保持Bean。
 * 
 * データベースからの取得時、画面からの入力時に使用される。
 *
 */
public class UserBean implements Serializable {

    /**
     * シリアルバージョンID。
     */
    private static final long serialVersionUID = 161610379384156463L;

    /**
     * ユーザID。
     */
    private String id = null;

    /**
     * ユーザ名。
     */
    private String name = null;

    /**
     * 年齢。
     */
    private String age = null;

    /**
     * 生年月日。
     */
    private String birth = null;

    /**
     * ユーザIDを返却する。
     * 
     * @return 保持するユーザID
     */
    public String getId() {
        return id;
    }

    /**
     * ユーザIDを設定する。
     * 
     * @param id ユーザID
     */
    public void setId(String id) {
        this.id = id;
    }

    /**
     * ユーザ名を返却する。
     * 
     * @return 保持するユーザ名
     */
    public String getName() {
        return name;
    }

    /**
     * ユーザ名を設定する。
     * 
     * @param name ユーザ名
     */
    public void setName(String name) {
        this.name = name;
    }

    /**
     * 年齢を返却する。
     * 
     * @return 保持する年齢
     */
    public String getAge() {
        return age;
    }

    /**
     * 年齢を設定する。
     * 
     * @param age 年齢
     */
    public void setAge(String age) {
        this.age = age;
    }

    /**
     * 生年月日を返却する。
     * 
     * @return 保持する生年月日
     */
    public String getBirth() {
        return birth;
    }

    /**
     * 生年月日を設定する。
     * 
     * @param birth 生年月日
     */
    public void setBirth(String birth) {
        this.birth = birth;
    }
}
