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

package jp.terasoluna.thin.functionsample.codelist.bean;

import java.io.Serializable;
import java.util.Locale;

/**
 * ＤＢコードリストを登録する機能で使われるパラメータクラス
 *
 */
public class InsertDBCodeListParam implements Serializable {

    /**
     * シリアルバージョンID
     */
    private static final long serialVersionUID = 7727768588514745190L;
    /**
     * キー
     */
    private String dbKey = null;
    /**
     * バリュー
     */
    private String dbValue = null;
    
    /**
     * ロケール
     */
    private Locale locale = null;
    
    /**
     * dbKeyを取得する。
     * @return dbKey
     */
    public String getDbKey() {
        return dbKey;
    }
    /**
     * dbKeyを設定する。
     * @param dbKey dbKey。
     */
    public void setDbKey(String dbKey) {
        this.dbKey = dbKey;
    }
    /**
     * dbValueを取得する。
     * @return dbValue
     */
    public String getDbValue() {
        return dbValue;
    }
    /**
     * dbValueを設定する。
     * @param dbValue dbValue。
     */
    public void setDbValue(String dbValue) {
        this.dbValue = dbValue;
    }
    
    /**
     * localeを取得する。
     * @return locale
     */
    public Locale getLocale() {
        return locale;
    }
    
    /**
     * localeを設定する。
     * @param locale locale。
     */
    public void setLocale(Locale locale) {
        this.locale = locale;
    }
}
