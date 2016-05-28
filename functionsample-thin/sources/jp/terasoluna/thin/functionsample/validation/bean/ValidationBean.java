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
 * ���͏��ێ�Bean
 *
 */
public class ValidationBean implements Serializable {

    /**
     * �V���A���o�[�W����ID
     */
    private static final long serialVersionUID = 3796989216658853765L;

    /**
     * ���p�p�����`�F�b�N�i�ő咷�w��j�B
     */
    private String alphaNumericMax = "";

    /**
     * ���p�p�����`�F�b�N�i�ŏ����w��j�B
     */
    private String alphaNumericMin = "";
    
    /**
     * ���p�p�i�啶���j�����`�F�b�N�i�ő咷�w��j�B
     */
    private String capAlphaNumericMax = "";

    /**
     * ���p�p�i�啶���j�����`�F�b�N�i�ŏ����w��j�B
     */
    private String capAlphaNumericMin = "";
    
    /**
     * ���t�`�F�b�N�B
     */
    private String date = "";

    /**
     * ���p�����`�F�b�N�B
     */
    private String hankaku = "";
    
    /**
     * ���p�J�i�`�F�b�N�B
     */
    private String hankakuKana = "";

    /**
     * ���ꕶ���񒷃`�F�b�N�B
     */
    private String length = "";
    
    /**
     * �����`�F�b�N�B
     */
    private String number = "";

    /**
     * ����������`�F�b�N�B
     */
    private String numericString = "";
    
    /**
     * ���͋֎~�����`�F�b�N�B
     */
    private String prohibit = "";

    /**
     * ���K�\���`�F�b�N�B
     */
    private String regExp = "";
    
    /**
     * �K�{���̓`�F�b�N�B
     */
    private String required = "";

    /**
     * ���͕����񒷃`�F�b�N�i�ő咷�w��j�B
     */
    private String stringMax = "";
    
    /**
     * ���͕����񒷃`�F�b�N�i�ŏ����w��j�B
     */
    private String stringMin = "";

    /**
     * �S�p�����`�F�b�N�B
     */
    private String zenkaku = "";   
        
    /**
     * �S�p�J�i�`�F�b�N�B
     */
    private String zenkakuKana = "";

    /**
    
     * alphaNumericMax���擾����B
    
     * @return alphaNumericMax
    
     */
    
    public String getAlphaNumericMax() {
        return alphaNumericMax;
    }

    /**
    
     * alphaNumericMax��ݒ肷��B
    
     * @param alphaNumericMax alphaNumericMax�B
    
     */
    
    public void setAlphaNumericMax(String alphaNumericMax) {
        this.alphaNumericMax = alphaNumericMax;
    }

    /**
    
     * alphaNumericMin���擾����B
    
     * @return alphaNumericMin
    
     */
    
    public String getAlphaNumericMin() {
        return alphaNumericMin;
    }

    /**
    
     * alphaNumericMin��ݒ肷��B
    
     * @param alphaNumericMin alphaNumericMin�B
    
     */
    
    public void setAlphaNumericMin(String alphaNumericMin) {
        this.alphaNumericMin = alphaNumericMin;
    }

    /**
    
     * capAlphaNumericMax���擾����B
    
     * @return capAlphaNumericMax
    
     */
    
    public String getCapAlphaNumericMax() {
        return capAlphaNumericMax;
    }

    /**
    
     * capAlphaNumericMax��ݒ肷��B
    
     * @param capAlphaNumericMax capAlphaNumericMax�B
    
     */
    
    public void setCapAlphaNumericMax(String capAlphaNumericMax) {
        this.capAlphaNumericMax = capAlphaNumericMax;
    }

    /**
    
     * capAlphaNumericMin���擾����B
    
     * @return capAlphaNumericMin
    
     */
    
    public String getCapAlphaNumericMin() {
        return capAlphaNumericMin;
    }

    /**
    
     * capAlphaNumericMin��ݒ肷��B
    
     * @param capAlphaNumericMin capAlphaNumericMin�B
    
     */
    
    public void setCapAlphaNumericMin(String capAlphaNumericMin) {
        this.capAlphaNumericMin = capAlphaNumericMin;
    }

    /**
    
     * date���擾����B
    
     * @return date
    
     */
    
    public String getDate() {
        return date;
    }

    /**
    
     * date��ݒ肷��B
    
     * @param date date�B
    
     */
    
    public void setDate(String date) {
        this.date = date;
    }

    /**
    
     * hankaku���擾����B
    
     * @return hankaku
    
     */
    
    public String getHankaku() {
        return hankaku;
    }

    /**
    
     * hankaku��ݒ肷��B
    
     * @param hankaku hankaku�B
    
     */
    
    public void setHankaku(String hankaku) {
        this.hankaku = hankaku;
    }

    /**
    
     * hankakuKana���擾����B
    
     * @return hankakuKana
    
     */
    
    public String getHankakuKana() {
        return hankakuKana;
    }

    /**
    
     * hankakuKana��ݒ肷��B
    
     * @param hankakuKana hankakuKana�B
    
     */
    
    public void setHankakuKana(String hankakuKana) {
        this.hankakuKana = hankakuKana;
    }

    /**
    
     * length���擾����B
    
     * @return length
    
     */
    
    public String getLength() {
        return length;
    }

    /**
    
     * length��ݒ肷��B
    
     * @param length length�B
    
     */
    
    public void setLength(String length) {
        this.length = length;
    }

    /**
    
     * number���擾����B
    
     * @return number
    
     */
    
    public String getNumber() {
        return number;
    }

    /**
    
     * number��ݒ肷��B
    
     * @param number number�B
    
     */
    
    public void setNumber(String number) {
        this.number = number;
    }

    /**
    
     * numericString���擾����B
    
     * @return numericString
    
     */
    
    public String getNumericString() {
        return numericString;
    }

    /**
    
     * numericString��ݒ肷��B
    
     * @param numericString numericString�B
    
     */
    
    public void setNumericString(String numericString) {
        this.numericString = numericString;
    }

    /**
    
     * prohibit���擾����B
    
     * @return prohibit
    
     */
    
    public String getProhibit() {
        return prohibit;
    }

    /**
    
     * prohibit��ݒ肷��B
    
     * @param prohibit prohibit�B
    
     */
    
    public void setProhibit(String prohibit) {
        this.prohibit = prohibit;
    }

    /**
    
     * regExp���擾����B
    
     * @return regExp
    
     */
    
    public String getRegExp() {
        return regExp;
    }

    /**
    
     * regExp��ݒ肷��B
    
     * @param regExp regExp�B
    
     */
    
    public void setRegExp(String regExp) {
        this.regExp = regExp;
    }

    /**
    
     * required���擾����B
    
     * @return required
    
     */
    
    public String getRequired() {
        return required;
    }

    /**
    
     * required��ݒ肷��B
    
     * @param required required�B
    
     */
    
    public void setRequired(String required) {
        this.required = required;
    }

    /**
    
     * stringMax���擾����B
    
     * @return stringMax
    
     */
    
    public String getStringMax() {
        return stringMax;
    }

    /**
    
     * stringMax��ݒ肷��B
    
     * @param stringMax stringMax�B
    
     */
    
    public void setStringMax(String stringMax) {
        this.stringMax = stringMax;
    }

    /**
    
     * stringMin���擾����B
    
     * @return stringMin
    
     */
    
    public String getStringMin() {
        return stringMin;
    }

    /**
    
     * stringMin��ݒ肷��B
    
     * @param stringMin stringMin�B
    
     */
    
    public void setStringMin(String stringMin) {
        this.stringMin = stringMin;
    }

    /**
    
     * zenkaku���擾����B
    
     * @return zenkaku
    
     */
    
    public String getZenkaku() {
        return zenkaku;
    }

    /**
    
     * zenkaku��ݒ肷��B
    
     * @param zenkaku zenkaku�B
    
     */
    
    public void setZenkaku(String zenkaku) {
        this.zenkaku = zenkaku;
    }

    /**
    
     * zenkakuKana���擾����B
    
     * @return zenkakuKana
    
     */
    
    public String getZenkakuKana() {
        return zenkakuKana;
    }

    /**
    
     * zenkakuKana��ݒ肷��B
    
     * @param zenkakuKana zenkakuKana�B
    
     */
    
    public void setZenkakuKana(String zenkakuKana) {
        this.zenkakuKana = zenkakuKana;
    }
    
}
