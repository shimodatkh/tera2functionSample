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

package jp.terasoluna.thin.functionsample.formex.bean;

/**
 * フォームから取得するBean
 *
 * @version 2006/02/20
 */
public class FormExParam {
    /**
     * 項目１
     */
    private String code1 = null;
    /**
     * 項目２
     */
    private String code2 = null;
    /**
     * 項目３
     */
    private String code3 = null;
    /**
     * 項目1の値を取得する。
     * @return code1
     */
    public String getCode1() {
        return code1;
    }
    /**
     * 項目1の値を設定する。
     * @param code1 code1 を設定します。
     */
    public void setCode1(String code1) {
        this.code1 = code1;
    }
    /**
     * 項目２の値を取得する。
     * @return code2
     */
    public String getCode2() {
        return code2;
    }
    /**
     * 項目２の値を設定する。
     * @param code2 code2 を設定します。
     */
    public void setCode2(String code2) {
        this.code2 = code2;
    }
    /**
     * 項目３の値を取得する。
     * @return code3
     */
    public String getCode3() {
        return code3;
    }
    /**
     * 項目３の値を設定する。
     * @param code3 code3 を設定します。
     */
    public void setCode3(String code3) {
        this.code3 = code3;
    }   
}