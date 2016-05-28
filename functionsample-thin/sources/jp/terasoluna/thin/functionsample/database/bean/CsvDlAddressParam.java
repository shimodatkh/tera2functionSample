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

import java.io.OutputStream;

/**
 * CSV�_�E�����[�h�����p�p�����[�^�C���^�t�F�[�X
 * 
 */
public interface CsvDlAddressParam {
    /**
     * ���N�G�X�g�w�b�_�擾
     * @param name
     * @return
     */
    String getHeader(String name);

    /**
     * ���X�|���X�̕����G���R�[�f�B���O��ݒ�
     * @param charset
     */
    void setCharacterEncoding(java.lang.String charset);

    /**
     * �R���e���g�^�C�v�ݒ�
     * @param type
     */
    void setContentType(String type);

    /**
     * ���b�Z�[�W�{�f�B�����̒�����ݒ�
     * @param len
     */
    void setContentLength(int len);

    /**
     * �w�b�_�ǉ�
     * @param name
     * @param value
     */
    void addHeader(String name, String value);

    /**
     * OutputStream�擾
     * @return
     */
    OutputStream getOutputStream();
}
