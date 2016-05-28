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

package jp.terasoluna.thin.functionsample.database.bean;

import java.io.IOException;
import java.io.OutputStream;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;

/**
 * CSV�_�E�����[�h�����p�p�����[�^
 * 
 */
public class CsvDlAddressParamImpl implements CsvDlAddressParam {

    /**
     * ���O�C���X�^���X
     */
    private static Log log = LogFactory.getLog(CsvDlAddressParamImpl.class);

    /**
     * HttpServletResponse
     */
    private HttpServletRequest request = null;

    /**
     * HttpServletResponse
     */
    private HttpServletResponse response = null;

    /**
     * �R���X�g���N�^
     * @param HttpServletRequest��ݒ�
     * @param HttpServletResponse��ݒ�
     */
    public CsvDlAddressParamImpl(HttpServletRequest request,
            HttpServletResponse response) {
        this.request = request;
        this.response = response;
    }

    /**
     * �w�b�_�ǉ�
     * @param name
     * @param value
     */
    public void addHeader(String name, String value) {
        this.response.addHeader(name, value);
    }

    /**
     * ���N�G�X�g�w�b�_�擾
     * @param name
     * @return
     */
    public String getHeader(String name) {
        return this.request.getHeader(name);
    }

    /**
     * OutputStream�擾
     * @return
     */
    public OutputStream getOutputStream() {
        try {
            return this.response.getOutputStream();
        } catch (IOException e) {
            log.error("OutputStream Error.", e);
        }
        return null;
    }

    /**
     * ���X�|���X�̕����G���R�[�f�B���O��ݒ�
     * @param charset
     */
    public void setCharacterEncoding(String charset) {
        this.response.setCharacterEncoding(charset);
    }

    /**
     * ���b�Z�[�W�{�f�B�����̒�����ݒ�
     * @param len
     */
    public void setContentLength(int len) {
        this.response.setContentLength(len);
    }

    /**
     * �R���e���g�^�C�v�ݒ�
     * @param type
     */
    public void setContentType(String type) {
        this.response.setContentType(type);
    }

}
