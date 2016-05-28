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
 * �t�H�[������擾����Bean
 *
 * @version 2006/02/20
 */
public class FormExParam {
    /**
     * ���ڂP
     */
    private String code1 = null;
    /**
     * ���ڂQ
     */
    private String code2 = null;
    /**
     * ���ڂR
     */
    private String code3 = null;
    /**
     * ����1�̒l���擾����B
     * @return code1
     */
    public String getCode1() {
        return code1;
    }
    /**
     * ����1�̒l��ݒ肷��B
     * @param code1 code1 ��ݒ肵�܂��B
     */
    public void setCode1(String code1) {
        this.code1 = code1;
    }
    /**
     * ���ڂQ�̒l���擾����B
     * @return code2
     */
    public String getCode2() {
        return code2;
    }
    /**
     * ���ڂQ�̒l��ݒ肷��B
     * @param code2 code2 ��ݒ肵�܂��B
     */
    public void setCode2(String code2) {
        this.code2 = code2;
    }
    /**
     * ���ڂR�̒l���擾����B
     * @return code3
     */
    public String getCode3() {
        return code3;
    }
    /**
     * ���ڂR�̒l��ݒ肷��B
     * @param code3 code3 ��ݒ肵�܂��B
     */
    public void setCode3(String code3) {
        this.code3 = code3;
    }   
}