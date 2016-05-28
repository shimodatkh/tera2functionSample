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

package jp.terasoluna.thin.functionsample.common.service;

import jp.terasoluna.thin.functionsample.common.FunctionUVO;
import jp.terasoluna.thin.functionsample.common.bean.LogonParam;
import jp.terasoluna.fw.dao.QueryDAO;

/**
 * ���O�I�����[�U�F�؂��s���T�[�r�X�N���X
 *
 */
public class LogonServiceImpl implements LogonService {

    /**
     * DAO�N���X�B
     * Spring�ɂ��C���X�^���X��������ݒ肳���B
     */
    protected QueryDAO queryDAO = null;

    /**
     * QueryDAO��ݒ肷��B
     *
     * @param queryDAO QueryDAO
     */
    public void setQueryDAO(QueryDAO queryDAO) {
        this.queryDAO = queryDAO;
    }
    
    /**
     * �f�[�^�x�[�X���烆�[�UID�y�уp�X���[�h�ɍ��v���郆�[�U�����擾����B
     * �������擾�ł����ꍇ�́AUVO�𐶐����ĕԋp����B
     *
     * @param params ���[�UID�A�p�X���[�h��ێ�����Bean
     * @return BLogicResult
     */
    public FunctionUVO logon(LogonParam params) {
        
        // �F�؏���
        FunctionUVO uvo = queryDAO.executeForObject("default.selectUserAuthenticated",
                params, new FunctionUVO().getClass());
        
        return uvo;
    }
}