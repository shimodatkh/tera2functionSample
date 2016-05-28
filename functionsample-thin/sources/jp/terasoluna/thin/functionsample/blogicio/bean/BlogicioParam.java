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

package jp.terasoluna.thin.functionsample.blogicio.bean;

import java.io.Serializable;

/**
 * blogicio���W���[���Ŏg�p����blogic�p�����N���X
 */
public class BlogicioParam implements Serializable {
    
    /**
     * �V���A���o�[�W����ID
     */
    private static final long serialVersionUID = -607316458662012667L;

    /**
     * �t�H�[���f�[�^�P
     */
    private String form1 = null;
    
    /**
     * �t�H�[���f�[�^�Q
     */
    private String form2 = null;
    
    /**
     * ���N�G�X�g�f�[�^
     */
    private String request = null;
    
    /**
     * �Z�b�V�����f�[�^
     */
    private String session = null;

    /**
     * �A�v���P�[�V�����f�[�^
     */
    private String application = null;
    
    /**
     * application���擾����B
     * @return application
     */
    public String getApplication() {
        return application;
    }

    /**
     * application��ݒ肷��B
     * @param application application
     */
    public void setApplication(String application) {
        this.application = application;
    }

    /**
     * form1���擾����B
     * @return form1
     */
    public String getForm1() {
        return form1;
    }

    /**
     * form1��ݒ肷��B
     * @param form1 form1
     */
    public void setForm1(String form1) {
        this.form1 = form1;
    }

    /**
     * form2���擾����B
     * @return form2
     */
    public String getForm2() {
        return form2;
    }

    /**
     * form2��ݒ肷��B
     * @param form2 form2
     */
    public void setForm2(String form2) {
        this.form2 = form2;
    }

    /**
     * request���擾����B
     * @return request
     */
    public String getRequest() {
        return request;
    }

    /**
     * request��ݒ肷��B
     * @param request request
     */
    public void setRequest(String request) {
        this.request = request;
    }

    /**
     * session���擾����B
     * @return session
     */
    public String getSession() {
        return session;
    }

    /**
     * session��ݒ肷��B
     * @param session session
     */
    public void setSession(String session) {
        this.session = session;
    }
}