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

package jp.terasoluna.thin.functionsample.pagelink.web.action;

import java.util.Map;

import jp.terasoluna.thin.functionsample.pagelink.service.ListService;
import jp.terasoluna.fw.service.thin.BLogicResult;
import jp.terasoluna.fw.web.struts.actions.AbstractBLogicAction;

/**
 * �ꗗ���擾�A�N�V�����B
 *
 * �ꗗ���擾�r�W�l�X���W�b�N���ĂсA�ꗗ�����擾����B
 *
 */
public class ListAction extends AbstractBLogicAction<Map<String, String>> {

    /**
     * ���s����r�W�l�X���W�b�N�N���X�B
     */
    private ListService listService = null;

    /**
     * �r�W�l�X���W�b�N��ԋp����B
     *
     * @return �ێ�����r�W�l�X���W�b�N
     */
    public ListService getListService() {
        return listService;
    }

    /**
     * �r�W�l�X���W�b�N��ݒ肷��B
     *
     * @param listService �r�W�l�X���W�b�N
     */
    public void setListService(ListService listService) {
        this.listService = listService;
    }

    /**
     * �r�W�l�X���W�b�N�����s���A�ꗗ�����擾�A�ԋp����B
     *
     * @param map �ꗗ���擾�̂��߂̕ϐ���ێ�����Map
     * @return �ꗗ����ێ�����BLogicResult
     * @throws Exception ��O
     */
    @Override
    public BLogicResult doExecuteBLogic(Map<String, String> map) 
        throws Exception {

        //�r�W�l�X���W�b�N�̎��s�A���ʂ̎擾
        Map<String, Object> retMap = listService.getUserList(map);

        //BLogicResult�̐����A���ʂ̐ݒ�
        BLogicResult result = new BLogicResult();
        result.setResultString("success");
        result.setResultObject(retMap);

        return result;
    }
}