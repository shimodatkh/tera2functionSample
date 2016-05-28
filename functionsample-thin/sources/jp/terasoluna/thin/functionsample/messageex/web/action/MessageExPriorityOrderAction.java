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
import jp.terasoluna.thin.functionsample.messageex.bean.MessageExPriorityOrderParam;
import jp.terasoluna.thin.functionsample.messageex.service.MessageExPriorityOrderService;
import jp.terasoluna.fw.service.thin.BLogicMessage;
import jp.terasoluna.fw.service.thin.BLogicMessages;
import jp.terasoluna.fw.service.thin.BLogicResult;
import jp.terasoluna.fw.web.struts.actions.AbstractBLogicAction;

/**
 * ��ʂ���擾�����f�[�^�𗘗p���ăr�W�l�X���W�b�N���ďo
 *
 */
public class MessageExPriorityOrderAction 
            extends AbstractBLogicAction<MessageExPriorityOrderParam> {
    
    private MessageExPriorityOrderService messageExService ;

    /**
     * 1. ���b�Z�[�W�L�[���擾����B<br>
     * 2. �I��������b�Z�[�W�����b�Z�[�W�N���X�ɓ��͂���B<br>
     * 3. �D�揇�ʃ��b�Z�[�W�����b�Z�[�W�N���X�ɓ��͂���B<br>
     *
     * @param param �D�揇�ʃ`�F�b�N�{�b�N�X�N���X
     * @return ���ʃN���X
     */
    @Override
    public BLogicResult doExecuteBLogic(MessageExPriorityOrderParam params) 
                                                    throws Exception {
    	BLogicResult result = new BLogicResult();

        /*
         * �D�揇�ʃ��b�Z�[�W�I���N���X�̕ϐ���null�ɐݒ肳�����B
         * ������null�l�ϐ���false�ɍď���������B
         */
        if(params.getCheck1()==null) {
            params.setCheck1(false);            
        } if(params.getCheck2()==null) {
            params.setCheck2(false);            
        } if(params.getCheck3()==null) {
            params.setCheck3(false);            
        } if(params.getCheck4()==null) {
            params.setCheck4(false);            
        }
        
        Map<String, String> mapKey = messageExService.execute(params);
        if (mapKey != null) {
        	BLogicMessages mess = new BLogicMessages();
            // �I��������b�Z�[�W�����b�Z�[�W�N���X�ɓ��͂���B
            mess.add("select", 
                    new BLogicMessage(mapKey.get("select"), mapKey.get("0"),
                            mapKey.get("1"), mapKey.get("2"), 
                            mapKey.get("3")));
            
            // �D�揇�ʃ��b�Z�[�W�����b�Z�[�W�N���X�ɓ��͂���B
            mess.add("message", 
                    new BLogicMessage(mapKey.get("message")));
            result.setMessages(mess);
            result.setResultString("success");
        }
        
        return result;
    }
    
    /**
     * messageExService���擾����B
     * @return �g�����b�Z�[�W���\�[�X�擾�N���X
     */
    public MessageExPriorityOrderService getMessageExService() {
        return messageExService;
    }

    /**
     * messageExService��ݒ肷��B
     * @param messageExService �g�����b�Z�[�W���\�[�X�擾�N���X
     */
    public void setMessageExService
                (MessageExPriorityOrderService messageExService) {
        this.messageExService = messageExService;
    }
}