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

import jp.terasoluna.thin.functionsample.common.FunctionUVO;
import jp.terasoluna.thin.functionsample.common.bean.LogonParam;
import jp.terasoluna.thin.functionsample.common.service.LogonService;
import jp.terasoluna.thin.functionsample.serverblockage.web.ServerBlockageController;
import jp.terasoluna.fw.service.thin.BLogicResult;
import jp.terasoluna.fw.web.struts.actions.AbstractBLogicAction;
import jp.terasoluna.fw.web.thin.ServerBlockageControlFilter;

/**
 * �T�[�o�ǂ��J������A�N�V����
 *
 * @version 2006/03/07
 */
public class CancelServerBlockageAction 
                    extends AbstractBLogicAction<LogonParam> {
    /**
     * ���O�C���T�[�r�X
     */
    private LogonService logonService = null;
    /**
     * ���O�C������������΁A�T�[�o�ǂ��J������B 
     *
     * @param param ���[�UID,�p�X���[�h���ۑ�����Ă���p�����[�^�N���X
     * @return BLogicResult
     * @throws Exception
     */
    @Override
    public BLogicResult doExecuteBLogic(LogonParam param) 
                                                throws Exception {
//      �������ʂ��i�[���邽�߂̃I�u�W�F�N�g
    	BLogicResult result = new BLogicResult();

        // �F�؏���
        FunctionUVO uvo = logonService.logon(param);
        
        if (uvo == null) {
            // ���[�U��񂪎擾�ł��Ȃ������ꍇ�i�F�؎��s���j�̏���
            result.setResultString("failure");
        } else {
            // �R���g���[���擾
            ServerBlockageController controller
                = (ServerBlockageController) 
                    ServerBlockageControlFilter.getServerBlockageController();
            // �T�[�o�ǂ���������B
            controller.open();
            result.setResultString("success");
        }

        return result;
    }
    /**
     * logonService���擾����B
     * @return logonService
     */
    public LogonService getLogonService() {
        return logonService;
    }
    /**
     * logonService��ݒ肷��B
     * @param logonService logonService�B
     */
    public void setLogonService(LogonService logonService) {
        this.logonService = logonService;
    }

}
