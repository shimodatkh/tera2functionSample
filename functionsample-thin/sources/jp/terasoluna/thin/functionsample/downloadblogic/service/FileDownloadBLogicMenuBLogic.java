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

package jp.terasoluna.thin.functionsample.downloadblogic.service;

import java.util.HashMap;
import java.util.Map;

import jp.terasoluna.fw.dao.QueryDAO;
import jp.terasoluna.fw.service.thin.BLogic;
import jp.terasoluna.fw.service.thin.BLogicResult;
import jp.terasoluna.thin.functionsample.downloadblogic.bean.DownloadFileBLogicInput;

/**
 * �ꗗ���擾�r�W�l�X���W�b�N�B
 * 
 * �f�[�^�x�[�X�����ʂɕ\����������擾����B �܂��A�ꗗ���̑S�������擾����B
 */
public class FileDownloadBLogicMenuBLogic implements BLogic<Object> {

    /**
     * DAO�N���X�B Spring�ɂ��C���X�^���X��������ݒ肳���B
     */
    protected QueryDAO queryDAO = null;

    /**
     * QueryDAO��ԋp����B
     * 
     * @return �ێ�����QueryDAO
     */
    public QueryDAO getQueryDAO() {
        return queryDAO;
    }

    /**
     * QueryDAO��ݒ肷��B
     * 
     * @param queryDAO
     *            QueryDAO
     */
    public void setQueryDAO(QueryDAO dao) {
        this.queryDAO = dao;
    }

    /**
     * �f�[�^�x�[�X����ꗗ�����擾����B �܂��A�ꗗ���̑S�������擾���ԋp����B
     * 
     * @param params
     *            �I�u�W�F�N�g
     * @return �ꗗ���
     */
    public BLogicResult execute(Object params) {

        Map<String, Object> retMap = new HashMap<String, Object>();
        // �ꗗ���̑S�������擾����
        Integer count = (Integer) queryDAO.executeForObject(
                "upload.selectFileCount", null, Integer.class);
        retMap.put("totalCount", count);
        // �ꗗ�����擾����
        DownloadFileBLogicInput[] beans = queryDAO.executeForObjectArray(
                "upload.selectListDownloadBLogic", null, DownloadFileBLogicInput.class);
        retMap.put("fileBeans", beans);

        // BLogicResult�̐����A���ʂ̐ݒ�
        BLogicResult result = new BLogicResult();

        result.setResultString("success");
        result.setResultObject(retMap);
        return result;
    }

}