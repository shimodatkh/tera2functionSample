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

package jp.terasoluna.thin.functionsample.blockage.bean;

import java.io.Serializable;

/**
 * �Ɩ����X�g���N���X
 * <p>
 * �Ɩ����A�Ǐ�Ԃ�ۑ�����B
 *
 */
public class ListBlockageVO implements Serializable{

    /**
     * �V���A���o�[�W����ID
     */
    private static final long serialVersionUID = -1347056148393340176L;
    /**
     * �Ɩ���
     */
    private String ucName  = null;
    /**
     * �Ǐ��
     */
    private String checked = null;
    /**
     * checked���擾����B
     * @return checked
     */
    public String getChecked() {
        return checked;
    }
    /**
     * checked��ݒ肷��B
     * @param checked checked�B
     */
    public void setChecked(String checked) {
        this.checked = checked;
    }
    /**
     * ucName���擾����B
     * @return ucName
     */
    public String getUcName() {
        return ucName;
    }
    /**
     * ucName��ݒ肷��B
     * @param ucName ucName�B
     */
    public void setUcName(String ucName) {
        this.ucName = ucName;
    }
}
