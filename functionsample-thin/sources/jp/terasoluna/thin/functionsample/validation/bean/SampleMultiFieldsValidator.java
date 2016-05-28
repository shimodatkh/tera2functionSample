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
 * �R�[�f�B���O�ɂ����̓`�F�b�N����N���X
 *
 */
public class SampleMultiFieldsValidator implements MultiFieldValidator {
    /**
     * ���O�N���X�B
     */
    private Log log =
        LogFactory.getLog(SampleMultiFieldsValidator.class);
    
    /**
     * ���փ`�F�b�N���s�Ȃ��B
     *
     * @param value ���ؑΏۂ̒l
     * @param fields ���؂ɕK�v�ȑ��̃t�B�[���h�̒l�z��
     * @return �G���[���Ȃ���� true
     */
    public boolean validate(String value, String[] fields) {
        
        // NullPointerException�h�~
        if (fields == null) {
            return true;
        }
        
        if(value.equals("") && fields[0].equals("") && fields[1].equals("")){
            return true;
         }
        
        int field = 0;
        int field1 = 0;
        int field2 = 0;
        
        // value�̃p�[�X
        try {
            field = Integer.parseInt(value);
        } catch (NumberFormatException e) {
            if (log.isDebugEnabled()) {
                log.debug("�����t�B�[���h���փ`�F�b�N[field]�ɂ͐��l����͂��Ă��������B");
            }
            return false;
        }
        
        // fields[0]�p�[�X
        try {
            field1 = Integer.parseInt(fields[0]);
        } catch (NumberFormatException e) {
            if (log.isDebugEnabled()) {
                log.debug("�����t�B�[���h���փ`�F�b�N[field[0]]�ɂ͐��l������͂��Ă��������B");
            }
            return false;
        }
        
        // fields[1]�p�[�X
        try {
            field2 = Integer.parseInt(fields[1]);
        } catch (NumberFormatException e) {
            if (log.isDebugEnabled()) {
                log.debug("�����t�B�[���h���փ`�F�b�N[field[1]]�ɂ͐��l������͂��Ă��������B");
            }
            return false;
        }        
        return (field1<=field && field<=field2);
    }
}
