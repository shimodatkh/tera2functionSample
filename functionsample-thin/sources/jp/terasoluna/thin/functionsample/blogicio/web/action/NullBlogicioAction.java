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

package jp.terasoluna.thin.functionsample.blogicio.web.action;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.apache.struts.Globals;

import jp.terasoluna.fw.service.thin.BLogicMessage;
import jp.terasoluna.fw.service.thin.BLogicMessages;
import jp.terasoluna.fw.service.thin.BLogicResult;
import jp.terasoluna.fw.web.struts.actions.AbstractBLogicAction;

/**
 * Blogicio�����œ��o�͒l���Ȃ��ꍇ�̃A�N�V�����N���X
 */
public class NullBlogicioAction extends AbstractBLogicAction {

    /**
     * ���O�N���X�B
     */
    private static Log log = LogFactory.getLog(NullBlogicioAction.class);
    
    /**
     * Blogicio�����Ńt�H�[���𗘗p�����ꍇ
     * 
     * @param param �t�H�[������擾�����f�[�^
     * @return ���ʃf�[�^
     * @throws Exception �\�����ʗ�O
     */
    @Override
    public BLogicResult doExecuteBLogic(Object param) throws
            Exception {
        if (log.isInfoEnabled()) {
            log.info("**** Inputdata *** ------------------------------------");
            log.info("**** Inputdata *** BlogicioParam : " + param);
            log.info("**** Inputdata *** ------------------------------------");
        }
        
        BLogicResult result = new BLogicResult();
        
        //���b�Z�[�W��ݒ�
        BLogicMessages messages = new BLogicMessages();
        messages.add(Globals.MESSAGE_KEY,
                new BLogicMessage("message.UC23.00001"));
        result.setMessages(messages);
        result.setResultString("success");
        return result;
    }
}