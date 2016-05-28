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

import java.util.HashMap;
import java.util.Map;

import jp.terasoluna.thin.functionsample.dispatch.bean.UserVO;
import jp.terasoluna.thin.functionsample.dispatch.service.ListUserService;
import jp.terasoluna.fw.service.thin.BLogicResult;
import jp.terasoluna.fw.web.struts.actions.AbstractBLogicAction;

/**
 * ���[�U���X�g���擾����A�N�V����
 *
 */
public class ListUserAction extends AbstractBLogicAction {
    
    /**
     * ���[�U���X�g�擾�T�[�r�X
     */
    protected ListUserService listUserService = null;
    
    /**
     * �f�[�^�x�[�X���烆�[�U���X�g���擾����B
     *
     * @param param Object
     * @return BLogicResult
     * @throws Exception �\�����ʗ�O
     */
    @Override
    public BLogicResult doExecuteBLogic(Object param) throws Exception {
        
        //�������ʂ��i�[���邽�߂̃I�u�W�F�N�g
    	BLogicResult result = new BLogicResult();
        Map<String, Object> map = new HashMap<String, Object>();
        
        //���[�U���X�g�擾
        UserVO[] userList = listUserService.getListUser();
        
        //���ʂ̐ݒ�
        map.put("userList", userList);

        result.setResultObject(map);
        result.setResultString("success");
        
        return result;
    }

    /**
     * ���[�U���X�g�擾�T�[�r�X���擾����B
     * @return ���[�U���X�g�擾�T�[�r�X
     */
    public ListUserService getListUserService() {
        return listUserService;
    }

    /**
     * ���[�U���X�g�擾�T�[�r�X��ݒ肷��B
     * @param listUserService ���[�U���X�g�擾�T�[�r�X
     */
    public void setListUserService(ListUserService listUserService) {
        this.listUserService = listUserService;
    }   
}