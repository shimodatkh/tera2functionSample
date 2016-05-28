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

package jp.terasoluna.thin.functionsample.write.web.form;

import jp.terasoluna.fw.web.struts.form.ValidatorActionFormEx;

/**
 * write�@�\�Ŏg����ActionForm
 * 
 */
public class WriteForm extends ValidatorActionFormEx {

    /**
     * �V���A���o�[�W����ID
     */
    private static final long serialVersionUID = -17204792830066817L;

    /**
     * �o�͑Ώە�����P�B
     */
    private String write1 = "write�^�O�T���v���P";

    /**
     * �o�͑Ώە�����Q�B
     */
    private String write2 = null;

    /**
     * �o�͑Ώە�����P��ԋp����B
     * 
     * @return �o�͑Ώە�����P
     */
    public String getWrite1() {
        return write1;
    }
    
    /**
     * �o�͑Ώە�����P��ݒ肷��B
     * 
     * @param write1 �o�͑Ώە�����P
     */
    public void setWrite1(String write1) {
        this.write1 = write1;
    }
    
    /**
     * �o�͑Ώە�����Q��ԋp����B
     * 
     * @return �o�͑Ώە�����Q
     */
    public String getWrite2() {
        return write2;
    }
    
    /**
     * �o�͑Ώە�����Q��ݒ肷��B
     * 
     * @param write2 �o�͑Ώە�����Q
     */
    public void setWrite2(String write2) {
        this.write2 = write2;
    }
}
