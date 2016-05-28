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

package jp.terasoluna.thin.functionsample.left.web.form;

import jp.terasoluna.fw.web.struts.form.ValidatorActionFormEx;

/**
 * left�@�\�Ŏg����ActionForm
 * 
 */
public class LeftForm extends ValidatorActionFormEx {

    /**
     * �V���A���o�[�W����ID
     */
    private static final long serialVersionUID = 2194503077305736360L;

    /**
     * �o�͑Ώە�����B
     */
    private String left = "��������������������";

    /**
     * �o�͑Ώە������ԋp����B
     * 
     * @return �o�͑Ώە�����
     */
    public String getLeft() {
        return left;
    }

    /**
     * �o�͑Ώە������ݒ肷��B
     * 
     * @param left �o�͑Ώە�����
     */
    public void setLeft(String left) {
        this.left = left;
    }
}