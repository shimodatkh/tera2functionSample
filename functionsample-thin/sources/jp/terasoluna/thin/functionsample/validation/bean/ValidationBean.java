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

package jp.terasoluna.thin.functionsample.validation.bean;

import java.io.Serializable;

/**
 * 入力情報保持Bean
 *
 */
public class ValidationBean implements Serializable {

    /**
     * シリアルバージョンID
     */
    private static final long serialVersionUID = 3796989216658853765L;

    /**
     * 半角英数字チェック（最大長指定）。
     */
    private String alphaNumericMax = "";

    /**
     * 半角英数字チェック（最小長指定）。
     */
    private String alphaNumericMin = "";
    
    /**
     * 半角英（大文字）数字チェック（最大長指定）。
     */
    private String capAlphaNumericMax = "";

    /**
     * 半角英（大文字）数字チェック（最小長指定）。
     */
    private String capAlphaNumericMin = "";
    
    /**
     * 日付チェック。
     */
    private String date = "";

    /**
     * 半角文字チェック。
     */
    private String hankaku = "";
    
    /**
     * 半角カナチェック。
     */
    private String hankakuKana = "";

    /**
     * 同一文字列長チェック。
     */
    private String length = "";
    
    /**
     * 数字チェック。
     */
    private String number = "";

    /**
     * 数字文字列チェック。
     */
    private String numericString = "";
    
    /**
     * 入力禁止文字チェック。
     */
    private String prohibit = "";

    /**
     * 正規表現チェック。
     */
    private String regExp = "";
    
    /**
     * 必須入力チェック。
     */
    private String required = "";

    /**
     * 入力文字列長チェック（最大長指定）。
     */
    private String stringMax = "";
    
    /**
     * 入力文字列長チェック（最小長指定）。
     */
    private String stringMin = "";

    /**
     * 全角文字チェック。
     */
    private String zenkaku = "";   
        
    /**
     * 全角カナチェック。
     */
    private String zenkakuKana = "";

    /**
    
     * alphaNumericMaxを取得する。
    
     * @return alphaNumericMax
    
     */
    
    public String getAlphaNumericMax() {
        return alphaNumericMax;
    }

    /**
    
     * alphaNumericMaxを設定する。
    
     * @param alphaNumericMax alphaNumericMax。
    
     */
    
    public void setAlphaNumericMax(String alphaNumericMax) {
        this.alphaNumericMax = alphaNumericMax;
    }

    /**
    
     * alphaNumericMinを取得する。
    
     * @return alphaNumericMin
    
     */
    
    public String getAlphaNumericMin() {
        return alphaNumericMin;
    }

    /**
    
     * alphaNumericMinを設定する。
    
     * @param alphaNumericMin alphaNumericMin。
    
     */
    
    public void setAlphaNumericMin(String alphaNumericMin) {
        this.alphaNumericMin = alphaNumericMin;
    }

    /**
    
     * capAlphaNumericMaxを取得する。
    
     * @return capAlphaNumericMax
    
     */
    
    public String getCapAlphaNumericMax() {
        return capAlphaNumericMax;
    }

    /**
    
     * capAlphaNumericMaxを設定する。
    
     * @param capAlphaNumericMax capAlphaNumericMax。
    
     */
    
    public void setCapAlphaNumericMax(String capAlphaNumericMax) {
        this.capAlphaNumericMax = capAlphaNumericMax;
    }

    /**
    
     * capAlphaNumericMinを取得する。
    
     * @return capAlphaNumericMin
    
     */
    
    public String getCapAlphaNumericMin() {
        return capAlphaNumericMin;
    }

    /**
    
     * capAlphaNumericMinを設定する。
    
     * @param capAlphaNumericMin capAlphaNumericMin。
    
     */
    
    public void setCapAlphaNumericMin(String capAlphaNumericMin) {
        this.capAlphaNumericMin = capAlphaNumericMin;
    }

    /**
    
     * dateを取得する。
    
     * @return date
    
     */
    
    public String getDate() {
        return date;
    }

    /**
    
     * dateを設定する。
    
     * @param date date。
    
     */
    
    public void setDate(String date) {
        this.date = date;
    }

    /**
    
     * hankakuを取得する。
    
     * @return hankaku
    
     */
    
    public String getHankaku() {
        return hankaku;
    }

    /**
    
     * hankakuを設定する。
    
     * @param hankaku hankaku。
    
     */
    
    public void setHankaku(String hankaku) {
        this.hankaku = hankaku;
    }

    /**
    
     * hankakuKanaを取得する。
    
     * @return hankakuKana
    
     */
    
    public String getHankakuKana() {
        return hankakuKana;
    }

    /**
    
     * hankakuKanaを設定する。
    
     * @param hankakuKana hankakuKana。
    
     */
    
    public void setHankakuKana(String hankakuKana) {
        this.hankakuKana = hankakuKana;
    }

    /**
    
     * lengthを取得する。
    
     * @return length
    
     */
    
    public String getLength() {
        return length;
    }

    /**
    
     * lengthを設定する。
    
     * @param length length。
    
     */
    
    public void setLength(String length) {
        this.length = length;
    }

    /**
    
     * numberを取得する。
    
     * @return number
    
     */
    
    public String getNumber() {
        return number;
    }

    /**
    
     * numberを設定する。
    
     * @param number number。
    
     */
    
    public void setNumber(String number) {
        this.number = number;
    }

    /**
    
     * numericStringを取得する。
    
     * @return numericString
    
     */
    
    public String getNumericString() {
        return numericString;
    }

    /**
    
     * numericStringを設定する。
    
     * @param numericString numericString。
    
     */
    
    public void setNumericString(String numericString) {
        this.numericString = numericString;
    }

    /**
    
     * prohibitを取得する。
    
     * @return prohibit
    
     */
    
    public String getProhibit() {
        return prohibit;
    }

    /**
    
     * prohibitを設定する。
    
     * @param prohibit prohibit。
    
     */
    
    public void setProhibit(String prohibit) {
        this.prohibit = prohibit;
    }

    /**
    
     * regExpを取得する。
    
     * @return regExp
    
     */
    
    public String getRegExp() {
        return regExp;
    }

    /**
    
     * regExpを設定する。
    
     * @param regExp regExp。
    
     */
    
    public void setRegExp(String regExp) {
        this.regExp = regExp;
    }

    /**
    
     * requiredを取得する。
    
     * @return required
    
     */
    
    public String getRequired() {
        return required;
    }

    /**
    
     * requiredを設定する。
    
     * @param required required。
    
     */
    
    public void setRequired(String required) {
        this.required = required;
    }

    /**
    
     * stringMaxを取得する。
    
     * @return stringMax
    
     */
    
    public String getStringMax() {
        return stringMax;
    }

    /**
    
     * stringMaxを設定する。
    
     * @param stringMax stringMax。
    
     */
    
    public void setStringMax(String stringMax) {
        this.stringMax = stringMax;
    }

    /**
    
     * stringMinを取得する。
    
     * @return stringMin
    
     */
    
    public String getStringMin() {
        return stringMin;
    }

    /**
    
     * stringMinを設定する。
    
     * @param stringMin stringMin。
    
     */
    
    public void setStringMin(String stringMin) {
        this.stringMin = stringMin;
    }

    /**
    
     * zenkakuを取得する。
    
     * @return zenkaku
    
     */
    
    public String getZenkaku() {
        return zenkaku;
    }

    /**
    
     * zenkakuを設定する。
    
     * @param zenkaku zenkaku。
    
     */
    
    public void setZenkaku(String zenkaku) {
        this.zenkaku = zenkaku;
    }

    /**
    
     * zenkakuKanaを取得する。
    
     * @return zenkakuKana
    
     */
    
    public String getZenkakuKana() {
        return zenkakuKana;
    }

    /**
    
     * zenkakuKanaを設定する。
    
     * @param zenkakuKana zenkakuKana。
    
     */
    
    public void setZenkakuKana(String zenkakuKana) {
        this.zenkakuKana = zenkakuKana;
    }
    
}
