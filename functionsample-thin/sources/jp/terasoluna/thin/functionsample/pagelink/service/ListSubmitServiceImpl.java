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

package jp.terasoluna.thin.functionsample.pagelink.service;

import java.util.HashMap;
import java.util.Map;

import jp.terasoluna.thin.functionsample.pagelink.bean.UserBean;
import jp.terasoluna.fw.dao.QueryDAO;

/**
 * �ꗗ���擾�r�W�l�X���W�b�N�B
 *
 * �f�[�^�x�[�X�����ʂɕ\�����錏���݈̂ꗗ���(�T�u�~�b�g�g�p)���擾����B
 * �܂��A�ꗗ���̑S�������擾����B
 *
 */
public class ListSubmitServiceImpl implements ListSubmitService {

    /**
     * DAO�N���X�B
     * Spring�ɂ��C���X�^���X��������ݒ肳���B
     */
    protected QueryDAO dao = null;

    /**
     * QueryDAO��ԋp����B
     *
     * @return �ێ�����QueryDAO
     */
    public QueryDAO getDao() {
        return dao;
    }

    /**
     * QueryDAO��ݒ肷��B
     *
     * @param dao QueryDAO
     */
    public void setDao(QueryDAO dao) {
        this.dao = dao;
    }

    /**
     * �f�[�^�x�[�X����ꗗ�����擾����B
     * ��������1�y�[�W�̕\�������ƊJ�n�C���f�b�N�X���擾���AQueryDAO�ɓn���B
     * �܂��A�ꗗ���̑S�������擾���ԋp����B
     *
     * @param map �\�������A�J�n�C���f�b�N�X��ێ�����Map
     * @return �ꗗ���A�S������ێ�����Map
     */
    public Map<String, Object> getUserList(Map<String, String> map) {
        
        String strIndex = map.get("startIndex");
        String strRow = map.get("row");
        
        int startIndex = 0;
        int row = 5;
        if (strIndex != null) {
            try {
                startIndex = Integer.parseInt(strIndex);
            } catch (NumberFormatException e) {
                startIndex = 0;
            }
        }
        if (strRow != null) {
            try {
                row = Integer.parseInt(strRow);
            } catch (NumberFormatException e) {
                row = 5;
            }
        }
        
        UserBean[] bean = dao.executeForObjectArray(
                "pageLink.selectUserList", null,
                UserBean.class, startIndex, row);

        Map<String, Object> retMap = new HashMap<String, Object>();
        retMap.put("totalCount", getUserCount());
        retMap.put("userBeans3", bean);
        
        return retMap;

    }

    /**
     * �ꗗ���̑S�������擾���ĕԋp����B
     *
     * @return �擾��������������
     */
    private String getUserCount() {

        String count
            = dao.executeForObject(
                    "pageLink.selectUserCount", null, String.class);
        if (count == null || "".equals(count)) {
            count = "0";
        }
        return count;
    }
}
