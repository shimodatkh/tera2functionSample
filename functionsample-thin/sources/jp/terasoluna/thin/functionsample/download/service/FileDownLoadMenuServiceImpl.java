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

package jp.terasoluna.thin.functionsample.download.service;

import java.util.HashMap;
import java.util.Map;

import jp.terasoluna.thin.functionsample.download.bean.FileDownLoadMenuBean;
import jp.terasoluna.fw.dao.QueryDAO;

/**
 * �ꗗ���擾�r�W�l�X���W�b�N�B
 * 
 * �f�[�^�x�[�X�����ʂɕ\����������擾����B �܂��A�ꗗ���̑S�������擾����B
 * 
 */
public class FileDownLoadMenuServiceImpl implements FileDownLoadMenuService {

    /**
     * DAO�N���X�B Spring�ɂ��C���X�^���X��������ݒ肳���B
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
     * @param dao
     *            QueryDAO
     */
    public void setDao(QueryDAO dao) {
        this.dao = dao;
    }

    /**
     * �f�[�^�x�[�X����ꗗ�����擾����B �܂��A�ꗗ���̑S�������擾���ԋp����B
     * 
     * @param arg0
     *            �I�u�W�F�N�g
     * @return �ꗗ���
     */
    public Map<String, Object> getFileList(Object arg0) {

        FileDownLoadMenuBean[] beans = dao.executeForObjectArray(
                "upload.selectListDownload", null, FileDownLoadMenuBean.class);

        Map<String, Object> retMap = new HashMap<String, Object>();
        // �ꗗ���̑S�������擾����
        retMap.put("totalCount", getFileCount());
        // �ꗗ�����擾����
        retMap.put("fileBeans", beans);

        return retMap;

    }

    /**
     * �ꗗ���̑S�������擾���ĕԋp����B
     * 
     * @return �擾��������������
     */
    private Integer getFileCount() {

        Integer count = (Integer) dao.executeForObject("upload.selectFileCount", null,
                Integer.class);

        return count;
    }

}