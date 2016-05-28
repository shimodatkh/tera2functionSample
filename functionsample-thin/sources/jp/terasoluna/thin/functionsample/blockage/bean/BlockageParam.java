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
 * �Ɩ��ǋ@�\�Ŏg����p�����[�^�N���X
 *
 */
public class BlockageParam implements Serializable{

    /**
     * �V���A���o�[�W����ID
     */
    private static final long serialVersionUID = 5231193317084927554L;
    /**
     * �Ɩ��Ǐ��
     */
    private String[] checked = null;

    /**
     * checked���擾����B
     * @return checked
     */
    public String[] getChecked() {
        return checked;
    }

    /**
     * checked��ݒ肷��B
     * @param checked checked�B
     */
    public void setChecked(String[] checked) {
        this.checked = checked;
    }

}
