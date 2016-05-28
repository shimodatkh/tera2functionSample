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

package jp.terasoluna.thin.functionsample.reset.web.form;


import java.util.HashMap;
import java.util.Map;

import jp.terasoluna.thin.functionsample.reset.bean.NestedParam;
import jp.terasoluna.fw.web.struts.form.ValidatorActionFormEx;
/**
 * �t�H�[���v���p�e�B���Z�b�g(UC 12)�Ŏg����A�N�V�����t�H�[��
 * 
 *
 */
public class ResetForm extends ValidatorActionFormEx {

    /**
     * �V���A���o�[�W����ID
     */
    private static final long serialVersionUID = 1446454138509651127L;

    /**
     * ��ʃ��Z�b�g���ڂP
     */
    private Boolean testItem1 = null;
    
    /**
     * ��ʃ��Z�b�g����2
     */
    private Boolean testItem2 = null;
    
    /**
     * ��ʃ��Z�b�g����3
     */
    private Boolean testItem3 = null;
    
    /**
     * ��ʃ��Z�b�g����4
     */
    private Boolean testItem4 = null;
    
    /**
     * ��ʃ��Z�b�g����5
     */
    private Boolean testItem5 = null;

    /**
     * map�^�C�v�̃��Z�b�g����
     */
    private Map<String,String> mapItems = new HashMap<String,String>();
    
    /**
     * �l�X�g���ꂽ�r�[�����X�g���Z�b�g����1
     */
    private NestedParam[] rows1 = new NestedParam[5];
    
    /**
     * �l�X�g���ꂽ�r�[�����X�g���Z�b�g����2
     */
    private NestedParam[] rows2 = new NestedParam[5];
    
    /**
     * �A�N�V�����t�H�[���̐������̏���
     */
    public ResetForm() {
        
        //��ʃ��Z�b�g���ڂ̏�����
        this.testItem1 = true;
        this.testItem2 = true;
        this.testItem3 = true;
        this.testItem4 = true;
        this.testItem5 = true;
        
        // map�^�C�v�̃��Z�b�g���ڂ̏�����
        this.mapItems.put("mapItem1","On");
        this.mapItems.put("mapItem2","On");
        this.mapItems.put("mapItem3","On");
        this.mapItems.put("mapItem4","On");
        this.mapItems.put("mapItem5","On");
        
        // �l�X�g���ꂽ�r�[�����X�g���Z�b�g����1�̏�����
        this.rows1[0] = new NestedParam();
        this.rows1[1] = new NestedParam();
        this.rows1[2] = new NestedParam();
        this.rows1[3] = new NestedParam();
        this.rows1[4] = new NestedParam();
        
        // �l�X�g���ꂽ�r�[�����X�g���Z�b�g����2�̏�����
        this.rows2[0] = new NestedParam();
        this.rows2[1] = new NestedParam();
        this.rows2[2] = new NestedParam();
        this.rows2[3] = new NestedParam();
        this.rows2[4] = new NestedParam();
    }

    /**
     * mapItems���擾����B
     * @return mapItems
     */
    public Map<String, String> getMapItems() {
        return mapItems;
    }

    /**
     * mapItems��ݒ肷��B
     * @param mapItems mapItems�B
     */
    public void setMapItems(Map<String, String> mapItems) {
        this.mapItems = mapItems;
    }

    /**
     * rows1���擾����B
     * @return rows1
     */
    public NestedParam[] getRows1() {
        return rows1;
    }

    /**
     * rows1��ݒ肷��B
     * @param rows1 rows1�B
     */
    public void setRows1(NestedParam[] rows1) {
        this.rows1 = rows1;
    }

    /**
     * rows2���擾����B
     * @return rows2
     */
    public NestedParam[] getRows2() {
        return rows2;
    }

    /**
     * rows2��ݒ肷��B
     * @param rows2 rows2�B
     */
    public void setRows2(NestedParam[] rows2) {
        this.rows2 = rows2;
    }

    /**
     * testItem1���擾����B
     * @return testItem1
     */
    public Boolean getTestItem1() {
        return testItem1;
    }

    /**
     * testItem1��ݒ肷��B
     * @param testItem1 testItem1�B
     */
    public void setTestItem1(Boolean testItem1) {
        this.testItem1 = testItem1;
    }

    /**
     * testItem2���擾����B
     * @return testItem2
     */
    public Boolean getTestItem2() {
        return testItem2;
    }

    /**
     * testItem2��ݒ肷��B
     * @param testItem2 testItem2�B
     */
    public void setTestItem2(Boolean testItem2) {
        this.testItem2 = testItem2;
    }

    /**
     * testItem3���擾����B
     * @return testItem3
     */
    public Boolean getTestItem3() {
        return testItem3;
    }

    /**
     * testItem3��ݒ肷��B
     * @param testItem3 testItem3�B
     */
    public void setTestItem3(Boolean testItem3) {
        this.testItem3 = testItem3;
    }

    /**
     * testItem4���擾����B
     * @return testItem4
     */
    public Boolean getTestItem4() {
        return testItem4;
    }

    /**
     * testItem4��ݒ肷��B
     * @param testItem4 testItem4�B
     */
    public void setTestItem4(Boolean testItem4) {
        this.testItem4 = testItem4;
    }

    /**
     * testItem5���擾����B
     * @return testItem5
     */
    public Boolean getTestItem5() {
        return testItem5;
    }

    /**
     * testItem5��ݒ肷��B
     * @param testItem5 testItem5�B
     */
    public void setTestItem5(Boolean testItem5) {
        this.testItem5 = testItem5;
    }
}
