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

package jp.terasoluna.thin.functionsample.codelist.service;

import java.util.Locale;
import jp.terasoluna.fw.web.codelist.CodeBean;
import jp.terasoluna.fw.web.codelist.CodeListLoader;

/**
 * �R�[�h���X�g���擾����T�[�r�X
 *
 */
public class CodeListServiceImpl implements CodeListService {
    /**
     * �R�[�h���X�g�̓ǂݍ��݂��s���T�[�r�X
     */
    protected CodeListLoader codeListLoader = null;
    
    /**
     * ����A���A�o���A���g�R�[�h�ŏ����������R�[�h���X�g�̓ǂݍ��݂��s���T�[�r�X
     */
    protected CodeListLoader mlCodeListLoader4 = null;

    
    /**
     * codeListLoader��ݒ肷��B
     * @param codeListLoader codeListLoader�B
     */
    public void setMlCodeListLoader4(CodeListLoader mlCodeListLoader4) {
        this.mlCodeListLoader4 = mlCodeListLoader4;
    }

    /**
     * codeListLoader���擾����B
     * @return codeListLoader
     */
    public CodeListLoader getCodeListLoader() {
        return codeListLoader;
    }

    /**
     * codeListLoader��ݒ肷��B
     * @param codeListLoader codeListLoader�B
     */
    public void setCodeListLoader(CodeListLoader codeListLoader) {
        this.codeListLoader = codeListLoader;
    }
    
    /**
     * �R�[�h���X�g�����Q�Ƃ���B
     *
     * @return �R�[�h���X�g���e
     */
    public CodeBean[] getCodeList(){
        CodeBean[] beans = codeListLoader.getCodeBeans();
        return beans;
    }
    
    /**
     * �R�[�h���X�g�����Q�Ƃ���B
     *
     * @return �R�[�h���X�g���e
     */
    public CodeBean[] getCodeList(Locale locale){

        CodeBean[] beans = mlCodeListLoader4.getCodeBeans(locale);

        return beans;
    }
}