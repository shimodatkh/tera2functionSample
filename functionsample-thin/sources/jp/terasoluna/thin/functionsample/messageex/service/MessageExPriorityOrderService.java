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

import java.util.Map;

import jp.terasoluna.thin.functionsample.messageex.bean.MessageExPriorityOrderParam;

/**
 * �g�����b�Z�[�W���\�[�X�擾�C���^�t�F�[�X
 *
 */
public interface MessageExPriorityOrderService {
    
    /**
     * �P�D���͂��ꂽ�p�����[�^�̒��ŗD�揇�ʃ��b�Z�[�W�L�[���擾
     * �Q�D�I�������`�F�b�N�{�b�N�X�ɂ���ă��b�Z�[�W�L�[���擾
     * @param params �D�揇�ʃ��b�Z�[�W�I����̓N���X
     * @return ���b�Z�[�W�L�[
     */
    Map<String, String> execute(MessageExPriorityOrderParam params) ;
}