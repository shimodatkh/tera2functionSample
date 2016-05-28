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

import jp.terasoluna.thin.functionsample.messageex.bean.MessageExPriorityOrderParam;

/**
 * �g�����b�Z�[�W���\�[�X�擾�����N���X
 *
 */
public class MessageExPriorityOrderServiceImpl 
                    implements MessageExPriorityOrderService {

    /**
     * 1. �}�b�v�ɑI�������D�揇�ʂ����b�Z�[�W�̒u���u���������ݒ肷��B<br>
     * 2. �I�������f�[�^�̂�胁�b�Z�[�W�L�[�����肷��B<br>
     * ���b�Z�[�W�L�[�̌��胍�W�b�N<br>
     * <table>
     *   <tr>
     *     <td>�D�揇��1</td>
     *     <td>�D�揇��2</td>
     *     <td>�D�揇��3</td>
     *     <td>�D�揇��4</td>
     *     <td>���I��l</td>
     *   </tr>
     *   <tf>
     *     <td align="center">0</td>
     *     <td align="center">0</td>
     *     <td align="center">0</td>
     *     <td align="center">0</td>
     *     <td>��bit�l</td>
     * </table>
     * �Ⴆ�ΗD�揇��1�ƗD�揇��4��I�������ꍇ�A<br>
     * bit�l��1001�ɂȂ�B
     * <br>���b�Z�[�W�L�[��1001��9�ɒu������"info.UC21.000"��"09"��ǉ�����B<br>
     * ���ʓI�Ƀ��b�Z�[�W�L�["info.UC21.00009"���}�b�v�ɐݒ肳���B<br>
     * 3. "���X���b�Z�[�W���\�[�X��I�����܂����B�擾�������b�Z�[�W�͈ȉ��ł��B"�̃��b�Z�[�W�L�[��<br>
     * info.UC2100016����19�܂Őݒ肳��Ă���̂őI�������D�揇�ʃ��b�Z�[�W���\�[�X�̌��ɂ��<br>
     * ���b�Z�[�W�L�[���ݒ肳���B<br>
     * 4. �����I�����Ȃ������ꍇ�A�}�b�v�ɊY�����b�Z�[�W�L�[��ݒ肷��B
     *
     * @param params �D�揇�ʃ`�F�b�N�{�b�N�X�N���X
     * @return ���b�Z�[�W�L�[�}�b�v
     */
    public Map<String, String> execute(MessageExPriorityOrderParam params) {
        
        int messageNo = 0 ; //���b�Z�[�W�L�[����ϐ�
        int messageTitleNo = 0 ; //���b�Z�[�W�����̃��b�Z�[�W�L�[����
        
        //�I��D�揇�ʒu��������
        String first = "�D�揇��1";
        String second = "�D�揇��2";
        String third = "�D�揇��3";
        String fourth = "�D�揇��4";
        
        String common = "info.UC21.000"; //���ʕ�����
        String key = null; //���b�Z�[�W�L�[
        String explKey = null; //���b�Z�[�W�����̃��b�Z�[�W�L�[
        Map<String, String> messageKey = new HashMap<String, String>();
        
        if (params.getCheck1()) {//�D�揇��1
            messageNo = messageNo + 8 ;
            messageKey.put(""+messageTitleNo, first);
            messageTitleNo ++ ;
            
        }

        if (params.getCheck2()) {//�D�揇��2
            messageNo = messageNo + 4 ;
            messageKey.put(""+messageTitleNo, second);
            messageTitleNo ++ ;

            
        }

        if (params.getCheck3()) {//�D�揇��3
            messageNo = messageNo + 2 ;
            messageKey.put(""+messageTitleNo, third);
            messageTitleNo ++ ;

            
        }
        if (params.getCheck4()) {//�D�揇��4
            messageNo = messageNo + 1 ;
            messageKey.put(""+messageTitleNo, fourth);
            messageTitleNo ++ ;
        }
        
        if ( messageNo < 10) {//���b�Z�[�W�L�[������
            key = common + "0" + messageNo;
        } else {
            key = common + messageNo;
        }
        
        switch (messageTitleNo) {//�I��D�揇�ʃ��b�Z�[�W�L�[�Z�b�g
        case 1:
            explKey = common + "16";
            break;
        case 2:
            explKey = common + "17";
            break;
        case 3:
            explKey = common + "18";
            break;
        case 4:
            explKey = common + "19";
            break;
        case 0:
            explKey = common + "20";
            break;
        }
        
        messageKey.put("message", key); //���b�Z�[�W�L�[
        messageKey.put("select", explKey); //���b�Z�[�W�����̃��b�Z�[�W�L�[
        return messageKey;
    }
}