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

package jp.terasoluna.thin.functionsample.messageex.web.action;

import java.util.Map;

import jp.terasoluna.thin.functionsample.messageex.bean.MessageExOriginalParam;
import jp.terasoluna.thin.functionsample.messageex.service.MessageExOriginalService;
import jp.terasoluna.fw.service.thin.BLogicMessage;
import jp.terasoluna.fw.service.thin.BLogicMessages;
import jp.terasoluna.fw.service.thin.BLogicResult;
import jp.terasoluna.fw.web.struts.actions.AbstractBLogicAction;

/**
 * �ŗL���b�Z�[�W�����A�N�V����
 *
 */
public class MessageExOriginalAction 
                extends AbstractBLogicAction<MessageExOriginalParam>{
    
    /**
     * �ŗL���b�Z�[�W�L�[�ݒ�N���X�錾
     */
    private MessageExOriginalService originalService ;

    /**
     * 1�D�T�[�r�X�N���X�̎��s���\�b�h���ďo���Ċe���b�Z�[�W���\�[�X�̌ŗL���b�Z�[�W�L�[��ݒ肷��B<br>
     * 2�D�ݒ肵�����b�Z�[�W�L�[�}�b�v���烁�b�Z�[�W�L�[���擾���ă��b�Z�[�W��ݒ肷��B
     * 2.1. �}�b�v�ɗD�揇��1�Ԗ�MessageResources�̌ŗL���b�Z�[�W��ݒ肷��B<br>
     * 2.2. �}�b�v�ɗD�揇��2�Ԗ�DB�̌ŗL���b�Z�[�W��ݒ肷��B<br>
     * 2.3. �}�b�v�ɗD�揇��3�Ԗ�application-messages�̌ŗL���b�Z�[�W��ݒ肷��B<br>
     * 2.4. �}�b�v�ɗD�揇��4�Ԗ�system-messages�̌ŗL���b�Z�[�W��ݒ肷��B<br>
     * @param param �ŗL���b�Z�[�W�A�N�V�����p�p�����^�[�N���X
     * @return ���b�Z�[�W�L�[�}�b�v
     */
    @Override
    public BLogicResult doExecuteBLogic(MessageExOriginalParam param) 
                                                    throws Exception {
    	BLogicResult result = new BLogicResult();
    	BLogicMessages msg = new BLogicMessages();
        
        // �i�[�����Ń��b�Z�[�W�L�[��ݒ肷��B
        Map<String, String> msgKey = originalService.execute(param);
        
        /*
         * �ŗL���b�Z�[�W��D�揇�ʏ��ɐݒ肷��B
         */
        msg.add("first", new BLogicMessage(msgKey.get("first")));
        msg.add("second", new BLogicMessage(msgKey.get("second")));
        msg.add("third", new BLogicMessage(msgKey.get("third")));
        msg.add("fourth", new BLogicMessage(msgKey.get("fourth")));
        
        result.setMessages(msg);
        result.setResultString("success");
        return result;
    }

    /**
     * �ŗL���b�Z�[�W�L�[�ݒ�N���X���擾����B
     * @return �ŗL���b�Z�[�W�L�[�ݒ�N���X
     */
    public MessageExOriginalService getOriginalService() {
        return originalService;
    }

    /**
     * �ŗL���b�Z�[�W�L�[�ݒ�N���X��ݒ肷��B
     * @param originalService �ŗL���b�Z�[�W�L�[�ݒ�N���X
     */
    public void setOriginalService(MessageExOriginalService originalService) {
        this.originalService = originalService;
    }
}