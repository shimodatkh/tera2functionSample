/*
 * Copyright (c) 2009 NTT DATA Corporation
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

package jp.terasoluna.thin.functionsample.database.service;

import java.io.BufferedWriter;
import java.io.IOException;
import java.io.OutputStreamWriter;

import jp.terasoluna.fw.dao.QueryRowHandleDAO;
import jp.terasoluna.thin.functionsample.database.bean.CsvDlAddressParam;

import org.apache.commons.lang.StringUtils;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;

/**
 * CSV�_�E�����[�h�������s���T�[�r�X�B
 * 
 */
public class ResultCsvDlAddressServiceImpl implements ResultCsvDlAddressService {

    /**
     * Log.
     */
    private static Log log = LogFactory
            .getLog(ResultCsvDlAddressServiceImpl.class);

    /**
     * �t�@�C���ۑ��_�C�A���O�B
     */
    private static final String DISPOSITION_TYPE_ATTACHMENT = "attachment;";

    /**
     * CSV�_�E�����[�h��1�s����������n���h���B
     */
    private CsvDownloadDataRowHandler csvDownloadDataRowHandler = null;

    /**
     * QueryRowHandleDAO�B
     */
    private QueryRowHandleDAO queryRowHandleDAO = null;

    /**
     * QueryRowHandleDAO��ݒ肷��B
     * @param queryRowHandleDAO �ݒ肷�� queryRowHandleDAO
     */
    public void setQueryRowHandleDAO(QueryRowHandleDAO queryRowHandleDAO) {
        this.queryRowHandleDAO = queryRowHandleDAO;
    }

    /**
     * CSV�_�E�����[�h��1�s����������n���h����ݒ肷��B
     * @param csvDownloadDataRowHandler �ݒ肷�� csvDownloadDataRowHandler
     */
    public void setCsvDownloadDataRowHandler(
            CsvDownloadDataRowHandler csvDownloadDataRowHandler) {
        this.csvDownloadDataRowHandler = csvDownloadDataRowHandler;
    }

    /**
     * CSV�_�E�����[�h����
     * @param CsvDlAddressParam param
     */
    public void csvDownload(CsvDlAddressParam param) {

        // �I���W�i���t�@�C����
        String fileName = "address.csv";

        // User-Agent�擾
        String userAgent = param.getHeader("User-Agent");

        // �_�E�����[�h�ɕK�v�ȃw�b�_��ݒ�
        param.addHeader("Content-Disposition", DISPOSITION_TYPE_ATTACHMENT
                + " filename=" + fileName);
        if (StringUtils.contains(userAgent, "MSIE")) {
            // IE�p�w�b�_�o�͏���
        } else {
            // ���̑��u���E�U�p�w�b�_�o�͏���
        }

        // Writer����
        BufferedWriter writer = null;
        writer = new BufferedWriter(new OutputStreamWriter(param
                .getOutputStream()));

        // Writer��CsvDownloadDataRowHandler�ɐݒ�
        csvDownloadDataRowHandler.setWriter(writer);

        // SQL���s
        this.queryRowHandleDAO.executeWithRowHandler(
                "database.selectListAddress", null, csvDownloadDataRowHandler);

        // �㏈��
        try {
            writer.flush();
            writer.close();
        } catch (IOException e) {
            e.printStackTrace();
        }

        if (log.isDebugEnabled()) {
            log.debug("END");
        }

    }

}
