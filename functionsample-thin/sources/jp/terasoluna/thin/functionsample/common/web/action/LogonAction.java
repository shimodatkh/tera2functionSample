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

package jp.terasoluna.thin.functionsample.common.web.action;

import org.apache.struts.Globals;

import jp.terasoluna.thin.functionsample.common.FunctionUVO;
import jp.terasoluna.thin.functionsample.common.bean.LogonParam;
import jp.terasoluna.thin.functionsample.common.bean.LogonResult;
import jp.terasoluna.thin.functionsample.common.service.LogonService;
import jp.terasoluna.fw.service.thin.BLogicMessage;
import jp.terasoluna.fw.service.thin.BLogicMessages;
import jp.terasoluna.fw.service.thin.BLogicResult;
import jp.terasoluna.fw.web.struts.actions.AbstractBLogicAction;

/**
 * ���O�I���������s���A�N�V����
 * 
 */
public class LogonAction extends AbstractBLogicAction<LogonParam> {
    
    /**
     * ���O�I���Ɏ��s�����ꍇ�̃G���[���b�Z�[�W�R�[�h�B
     */
    private static final String LOGON_ERROR = "error.common.00014";
    
    /**
     * ���O�I���̃r�W�l�X���W�b�N�N���X
     */
    protected LogonService logonService;
    
    /**
     * LogonService���擾����B
     * @return LogonService
     */
    public LogonService getLogonService() {
        return logonService;
    }

    /**
     * LogonService��ݒ肷��B
     * @param logonService LogonService
     */
    public void setLogonService(LogonService logonService) {
        this.logonService = logonService;
    }

    /**
     * ���O�I���������s�����\�b�h�B
     * 
     * @param param LogonParam
     * @return BLogicResult
     * @throws Exception
     */
    @Override
    public BLogicResult doExecuteBLogic(LogonParam param) throws Exception {
        
        // �������ʂ��i�[���邽�߂̃I�u�W�F�N�g
    	BLogicResult result = new BLogicResult();
        
        // �F�؏���
        FunctionUVO uvo = logonService.logon(param);

        if (uvo == null) {
            // ���[�U��񂪎擾�ł��Ȃ������ꍇ�i�F�؎��s���j�̏���
            
            // �G���[���b�Z�[�W���i�[���ABLogicResult�ɐݒ肷��
        	BLogicMessages errors = new BLogicMessages();
            errors.add(Globals.ERROR_KEY, new BLogicMessage(LOGON_ERROR));
            result.setErrors(errors);
            
            result.setResultString("failure");
        } else {
            // ���[�U��񂪎擾�ł����ꍇ�i�F�ؐ������j�̏���
            
            // �o�̓I�u�W�F�N�g�𐶐����ABLogicResult�ɐݒ肷��
            LogonResult resultObj = new LogonResult();
            resultObj.setUvo(uvo);
            result.setResultObject(resultObj);
            
            result.setResultString("success");
        }

        return result;
    }
}