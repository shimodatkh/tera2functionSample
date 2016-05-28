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

package jp.terasoluna.thin.functionsample.pagelink.bean;

import java.io.Serializable;

/**
 * ���[�U���ێ�Bean�B
 * 
 * �f�[�^�x�[�X����̎擾���A��ʂ���̓��͎��Ɏg�p�����B
 *
 */
public class UserBean implements Serializable {

    /**
     * �V���A���o�[�W����ID�B
     */
    private static final long serialVersionUID = 161610379384156463L;

    /**
     * ���[�UID�B
     */
    private String id = null;

    /**
     * ���[�U���B
     */
    private String name = null;

    /**
     * �N��B
     */
    private String age = null;

    /**
     * ���N�����B
     */
    private String birth = null;

    /**
     * ���[�UID��ԋp����B
     * 
     * @return �ێ����郆�[�UID
     */
    public String getId() {
        return id;
    }

    /**
     * ���[�UID��ݒ肷��B
     * 
     * @param id ���[�UID
     */
    public void setId(String id) {
        this.id = id;
    }

    /**
     * ���[�U����ԋp����B
     * 
     * @return �ێ����郆�[�U��
     */
    public String getName() {
        return name;
    }

    /**
     * ���[�U����ݒ肷��B
     * 
     * @param name ���[�U��
     */
    public void setName(String name) {
        this.name = name;
    }

    /**
     * �N���ԋp����B
     * 
     * @return �ێ�����N��
     */
    public String getAge() {
        return age;
    }

    /**
     * �N���ݒ肷��B
     * 
     * @param age �N��
     */
    public void setAge(String age) {
        this.age = age;
    }

    /**
     * ���N������ԋp����B
     * 
     * @return �ێ����鐶�N����
     */
    public String getBirth() {
        return birth;
    }

    /**
     * ���N������ݒ肷��B
     * 
     * @param birth ���N����
     */
    public void setBirth(String birth) {
        this.birth = birth;
    }
}
