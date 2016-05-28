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

package jp.terasoluna.thin.functionsample.blogic.bean;

/**
 * blogic���W���[���Ŏg�p����blogic�p�����N���X
 * 
 */
public class BlogicParam {

    /**
     * �o�����[�P
     */
    private String value1;
    
    /**
     * �o�����[�Q
     */
    private String value2;

    /**
     * value1���擾����B
     * @return value1
     */
    public String getValue1() {
        return value1;
    }

    /**
     * value1��ݒ肷��B
     * @param value1 value1�B
     */
    public void setValue1(String value1) {
        this.value1 = value1;
    }

    /**
     * value2���擾����B
     * @return value2
     */
    public String getValue2() {
        return value2;
    }

    /**
     * value2��ݒ肷��B
     * @param value2 value2�B
     */
    public void setValue2(String value2) {
        this.value2 = value2;
    }   
}