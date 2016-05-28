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

package jp.terasoluna.thin.functionsample.messageex.bean;

/**
 * �D�揇�ʃ��b�Z�[�W�I����̓N���X
 *
 */
public class MessageExPriorityOrderParam {
    
    /**
     * MessageResources.properties�̃��b�Z�[�W
     */
    private Boolean check1 = false;
    /**
     * DB�̃��b�Z�[�W
     */
    private Boolean check2 = false;
    /**
     * application-messages.properties�̃��b�Z�[�W
     */
    private Boolean check3 = false;
    /**
     * System-messages.properties�̃��b�Z�[�W
     */
    private Boolean check4 = false;
    /**
     * MessageResources.properties�̃��b�Z�[�W�`�F�b�N���擾����B
     * @return MessageResources.properties�̃��b�Z�[�W�`�F�b�N
     */
    public Boolean getCheck1() {
        return check1;
    }
    /**
     * MessageResources.properties�̃��b�Z�[�W�`�F�b�N��ݒ肷��B
     * @param check1 MessageResources.properties�̃��b�Z�[�W�`�F�b�N
     */
    public void setCheck1(Boolean check1) {
        this.check1 = check1;
    }
    /**
     * DB�̃��b�Z�[�W�`�F�b�N���擾����B
     * @return DB�̃��b�Z�[�W�`�F�b�N
     */
    public Boolean getCheck2() {
        return check2;
    }
    /**
     * DB�̃��b�Z�[�W�`�F�b�N��ݒ肷��B
     * @param check2 DB�̃��b�Z�[�W�`�F�b�N
     */
    public void setCheck2(Boolean check2) {
        this.check2 = check2;
    }
    /**
     * application-messages.properties�̃��b�Z�[�W�`�F�b�N���擾����B
     * @return application-messages.properties�̃��b�Z�[�W�`�F�b�N
     */
    public Boolean getCheck3() {
        return check3;
    }
    /**
     * application-messages.properties�̃��b�Z�[�W�`�F�b�N��ݒ肷��B
     * @param check3 application-messages.properties�̃��b�Z�[�W�`�F�b�N
     */
    public void setCheck3(Boolean check3) {
        this.check3 = check3;
    }
    /**
     * System-messages.properties�̃��b�Z�[�W�`�F�b�N���擾����B
     * @return System-messages.properties�̃��b�Z�[�W�`�F�b�N
     */
    public Boolean getCheck4() {
        return check4;
    }
    /**
     * System-messages.properties�̃��b�Z�[�W�`�F�b�N��ݒ肷��B
     * @param check4 System-messages.properties�̃��b�Z�[�W�`�F�b�N
     */
    public void setCheck4(Boolean check4) {
        this.check4 = check4;
    }
}