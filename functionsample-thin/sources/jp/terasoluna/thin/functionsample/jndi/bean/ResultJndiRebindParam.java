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

package jp.terasoluna.thin.functionsample.jndi.bean;

/**
 * JNDI���\�[�X�ύX�@�\�Ŏg����p�����[�^�N���X
 *
 */
public class ResultJndiRebindParam {
    /**
     * JNDI��
     */
    private String valueName = null;
    /**
     * JNDI���\�[�X���e
     */
    private String valueData = null;
    /**
     * valueData���擾����B
     * @return valueData
     */
    public String getValueData() {
        return valueData;
    }
    /**
     * valueData��ݒ肷��B
     * @param valueData valueData�B
     */
    public void setValueData(String valueData) {
        this.valueData = valueData;
    }
    /**
     * valueName���擾����B
     * @return valueName
     */
    public String getValueName() {
        return valueName;
    }
    /**
     * valueName��ݒ肷��B
     * @param valueName valueName�B
     */
    public void setValueName(String valueName) {
        this.valueName = valueName;
    }
}