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

package jp.terasoluna.thin.functionsample.dispatch.action;

import java.util.Map;

import jp.terasoluna.thin.functionsample.dispatch.service.UpdateUserDivisionService;
import jp.terasoluna.fw.service.thin.BLogicResult;
import jp.terasoluna.fw.web.struts.actions.AbstractBLogicAction;

/**
 * ���[�U�������X�V����A�N�V����
 *
 */
public class UpdateUserDivisionAction extends AbstractBLogicAction<Map> {
    
    /**
     * ���[�U�����X�V�T�[�r�X
     */
    protected UpdateUserDivisionService updateUserDivisionService = null;
    
    /**
     * ���͂��ꂽ����������Ƀf�[�^�x�[�X�̏����X�V����B
     *
     * @param param java.util.Map
     * @return BLogicResult
     * @throws Exception �\�����ʗ�O
     */
    @Override
    public BLogicResult doExecuteBLogic(Map param) throws Exception {
        
        // �������ʂ��i�[���邽�߂̃I�u�W�F�N�g
    	BLogicResult result = new BLogicResult();
        
        //�f�[�^�x�[�X�̏��̍X�V
        updateUserDivisionService.updateUserDivision(param);
        
        result.setResultString("success");
        
        return result;
    }

    /**
     * ���[�U�����X�V�T�[�r�X��ݒ肷��B
     * @param updateUserDivisionService ���[�U�����X�V�T�[�r�X
     */
    public void setUpdateUserDivisionService(
            UpdateUserDivisionService updateUserDivisionService) {
        this.updateUserDivisionService = updateUserDivisionService;
    }
}