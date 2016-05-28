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
 * �c�a�R�[�h���X�g��o�^����@�\�Ŏg����p�����[�^�N���X
 *
 */
public class InsertDBCodeListParam implements Serializable {

    /**
     * �V���A���o�[�W����ID
     */
    private static final long serialVersionUID = 7727768588514745190L;
    /**
     * �L�[
     */
    private String dbKey = null;
    /**
     * �o�����[
     */
    private String dbValue = null;
    
    /**
     * ���P�[��
     */
    private Locale locale = null;
    
    /**
     * dbKey���擾����B
     * @return dbKey
     */
    public String getDbKey() {
        return dbKey;
    }
    /**
     * dbKey��ݒ肷��B
     * @param dbKey dbKey�B
     */
    public void setDbKey(String dbKey) {
        this.dbKey = dbKey;
    }
    /**
     * dbValue���擾����B
     * @return dbValue
     */
    public String getDbValue() {
        return dbValue;
    }
    /**
     * dbValue��ݒ肷��B
     * @param dbValue dbValue�B
     */
    public void setDbValue(String dbValue) {
        this.dbValue = dbValue;
    }
    
    /**
     * locale���擾����B
     * @return locale
     */
    public Locale getLocale() {
        return locale;
    }
    
    /**
     * locale��ݒ肷��B
     * @param locale locale�B
     */
    public void setLocale(Locale locale) {
        this.locale = locale;
    }
}
