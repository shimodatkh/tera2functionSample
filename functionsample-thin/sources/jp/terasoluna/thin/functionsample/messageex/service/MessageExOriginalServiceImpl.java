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

package jp.terasoluna.thin.functionsample.messageex.service;

import java.util.HashMap;
import java.util.Map;

import jp.terasoluna.thin.functionsample.messageex.bean.MessageExOriginalParam;

/**
 *  �ŗL���b�Z�[�W�L�[�ݒ�����N���X
 *
 */
public class MessageExOriginalServiceImpl 
                                    implements MessageExOriginalService {

    /**
     * 1. �D�惁�b�Z�[�W�I����ʂɕ\�������ŗL���b�Z�[�W�L�[��ݒ肷��B<br>
     * 1.1. �}�b�v�ɗD�揇��1�Ԗ�MessageResources�̌ŗL���b�Z�[�W�L�[��ݒ肷��B<br>
     * 1.2. �}�b�v�ɗD�揇��2�Ԗ�DB�̌ŗL���b�Z�[�W�L�[��ݒ肷��B<br>
     * 1.3. �}�b�v�ɗD�揇��3�Ԗ�application-messages�̌ŗL���b�Z�[�W�L�[��ݒ肷��B<br>
     * 1.4. �}�b�v�ɗD�揇��4�Ԗ�system-messages�̌ŗL���b�Z�[�W�L�[��ݒ肷��B<br>
     *
     * @param param �ŗL���b�Z�[�W�A�N�V�����p�p�����[�^�[�N���X
     * @return ���b�Z�[�W�L�[�}�b�v
     */
    public Map<String, String> execute(MessageExOriginalParam param) {
        Map<String, String> messageKey = new HashMap<String, String>();
        messageKey.put("first", "info.UC21.00008");
        messageKey.put("second", "info.UC21.00004");
        messageKey.put("third", "info.UC21.00002");
        messageKey.put("fourth", "info.UC21.00001");
        return messageKey;
    }
}