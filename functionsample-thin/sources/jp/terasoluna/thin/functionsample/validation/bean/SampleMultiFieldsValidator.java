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

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;

import jp.terasoluna.fw.web.struts.form.MultiFieldValidator;

/**
 * コーディングによる入力チェックするクラス
 *
 */
public class SampleMultiFieldsValidator implements MultiFieldValidator {
    /**
     * ログクラス。
     */
    private Log log =
        LogFactory.getLog(SampleMultiFieldsValidator.class);
    
    /**
     * 相関チェックを行なう。
     *
     * @param value 検証対象の値
     * @param fields 検証に必要な他のフィールドの値配列
     * @return エラーがなければ true
     */
    public boolean validate(String value, String[] fields) {
        
        // NullPointerException防止
        if (fields == null) {
            return true;
        }
        
        if(value.equals("") && fields[0].equals("") && fields[1].equals("")){
            return true;
         }
        
        int field = 0;
        int field1 = 0;
        int field2 = 0;
        
        // valueのパース
        try {
            field = Integer.parseInt(value);
        } catch (NumberFormatException e) {
            if (log.isDebugEnabled()) {
                log.debug("複数フィールド相関チェック[field]には数値を入力してください。");
            }
            return false;
        }
        
        // fields[0]パース
        try {
            field1 = Integer.parseInt(fields[0]);
        } catch (NumberFormatException e) {
            if (log.isDebugEnabled()) {
                log.debug("複数フィールド相関チェック[field[0]]には数値数を入力してください。");
            }
            return false;
        }
        
        // fields[1]パース
        try {
            field2 = Integer.parseInt(fields[1]);
        } catch (NumberFormatException e) {
            if (log.isDebugEnabled()) {
                log.debug("複数フィールド相関チェック[field[1]]には数値数を入力してください。");
            }
            return false;
        }        
        return (field1<=field && field<=field2);
    }
}
