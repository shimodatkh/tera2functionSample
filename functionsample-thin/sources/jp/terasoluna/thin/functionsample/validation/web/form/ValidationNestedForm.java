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

package jp.terasoluna.thin.functionsample.validation.web.form;

import jp.terasoluna.thin.functionsample.validation.bean.ValidationBean;
import jp.terasoluna.fw.web.struts.form.ValidatorActionFormEx;

/**
 * validation�@�\�Ŏg����ActionForm
 * 
 */
public class ValidationNestedForm extends ValidatorActionFormEx {

    /**
     * �V���A���o�[�W����ID
     */
    private static final long serialVersionUID = 6177015074134719129L;

    /**
    * �f�[�^�ԍ����X�g�B
    */
    private String[] dataNoList = new String[] {"1", "2"};
    
    /**
     * ���̓`�F�b�N�p�̃r�[���z��B
     */
    private ValidationBean[] beanList = new ValidationBean[2];

    /**
    
     * beanList��ݒ肷��B
   
     */
    public ValidationNestedForm() {
        beanList[0] = new ValidationBean();
        beanList[1] = new ValidationBean();
    }

    /**
    
     * beanList���擾����B
    
     * @return beanList
    
     */
    
    public ValidationBean[] getBeanList() {
        return beanList;
    }

    /**
    
     * beanList��ݒ肷��B
    
     * @param beanList beanList�B
    
     */
    
    public void setBeanList(ValidationBean[] beanList) {
        this.beanList = beanList;
    }

    /**
    
     * dataNoList���擾����B
    
     * @return dataNoList
    
     */
    
    public String[] getDataNoList() {
        return dataNoList;
    }

    /**
    
     * dataNoList��ݒ肷��B
    
     * @param dataNoList dataNoList�B
    
     */
    
    public void setDataNoList(String[] dataNoList) {
        this.dataNoList = dataNoList;
    }
}
