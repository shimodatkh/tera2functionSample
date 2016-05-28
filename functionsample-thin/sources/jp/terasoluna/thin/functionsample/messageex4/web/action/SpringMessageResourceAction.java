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

package jp.terasoluna.thin.functionsample.messageex4.web.action;

import jp.terasoluna.fw.service.thin.BLogicMessage;
import jp.terasoluna.fw.service.thin.BLogicMessages;
import jp.terasoluna.fw.service.thin.BLogicResult;
import jp.terasoluna.fw.web.struts.actions.AbstractBLogicAction;

/**
 * �v���p�e�B���b�Z�[�W���\�[�X��BLogicMessages�Ɋi�[����A�N�V����
 *
 * @version 2006/03/09
 */
public class SpringMessageResourceAction 
                extends AbstractBLogicAction {

    /**
     * �v���p�e�B���b�Z�[�W���\�[�X��BLogicMessages�Ɋi�[����B
     *
     * @param param �ŗL���b�Z�[�W�A�N�V�����p�p�����[�^�[�N���X
     * @return ���b�Z�[�W�L�[�}�b�v
     */
    @Override
    public BLogicResult doExecuteBLogic(Object param) 
                                                    throws Exception {
    	BLogicResult result = new BLogicResult();
    	BLogicMessages msg = new BLogicMessages();
        
        msg.add("1", new BLogicMessage("info.UC21.00031"));
        msg.add("2", new BLogicMessage("info.UC21.00032"));
        msg.add("3", new BLogicMessage("info.UC21.00033"));
        
        result.setMessages(msg);
        result.setResultString("success");
        return result;
    }
}