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

package jp.terasoluna.thin.functionsample.reset.bean;

import java.io.Serializable;

/**
 * �t�H�[���v���p�e�B���Z�b�g(UC 12)�Ŏg����uresetForm�v�Ƀl�X�g���ꂽ�r�[���N���X
 * 
 *
 */
public class NestedParam implements Serializable{
    
    /**
     * �V���A���o�[�W����ID
     */
    private static final long serialVersionUID = -2588422227777413676L;

    /**
     * �l�X�g���ꂽ�p�����[�^�̒l
     */
    private String value = "On";

    /**
     * value���擾����B
     * @return value
     */
    public String getValue() {
        return value;
    }

    /**
     * value��ݒ肷��B
     * @param value value�B
     */
    public void setValue(String value) {
        this.value = value;
    }
}
