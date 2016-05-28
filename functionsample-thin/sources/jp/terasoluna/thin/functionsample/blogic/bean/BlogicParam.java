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
 * blogicモジュールで使用するblogicパラムクラス
 * 
 */
public class BlogicParam {

    /**
     * バリュー１
     */
    private String value1;
    
    /**
     * バリュー２
     */
    private String value2;

    /**
     * value1を取得する。
     * @return value1
     */
    public String getValue1() {
        return value1;
    }

    /**
     * value1を設定する。
     * @param value1 value1。
     */
    public void setValue1(String value1) {
        this.value1 = value1;
    }

    /**
     * value2を取得する。
     * @return value2
     */
    public String getValue2() {
        return value2;
    }

    /**
     * value2を設定する。
     * @param value2 value2。
     */
    public void setValue2(String value2) {
        this.value2 = value2;
    }   
}