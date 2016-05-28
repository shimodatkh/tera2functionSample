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

package jp.terasoluna.thin.functionsample.codelist.web.action;

import java.util.HashMap;
import java.util.Locale;
import java.util.Map;

import jp.terasoluna.thin.functionsample.codelist.service.CodeListService;
import jp.terasoluna.fw.service.thin.BLogicResult;
import jp.terasoluna.fw.web.codelist.CodeBean;
import jp.terasoluna.fw.web.struts.actions.AbstractBLogicAction;

/**
 * �R�[�h���X�g���e���擾����A�N�V����
 *
 */
public class CodeListAction extends AbstractBLogicAction<Map<String, Object>> {
    /**
     * �R�[�h���X�g���擾����T�[�r�X
     */
    protected CodeListService codeListService = null;
    /**
     * �T�[�r�X����R�[�h���X�g���擾���A�߂�l�Ƃ��ĕԂ��B
     *
     * @param param
     * @return �R�[�h���X�g
     * @throws Exception
     */
    @Override
    public BLogicResult doExecuteBLogic(Map<String, Object> param) throws Exception {
    	BLogicResult result = new BLogicResult();
    	
        // ���P�[���w��Ȃ��ŃR�[�h���X�g���擾
    	CodeBean[] codeListTable = codeListService.getCodeList();
    	
    	// ���P�[���w��L�ŃR�[�h���X�g���擾
    	Locale locale = (Locale) param.get("locale");
    	CodeBean[] mlCodeListTable = codeListService.getCodeList(locale);
    	
        Map<String, Object> list = new HashMap<String, Object>();
        list.put("codeListTable", codeListTable);
        list.put("mlCodeListTable", mlCodeListTable);
    	
        result.setResultObject(list);
        result.setResultString("success");
        
        return result;
    }
    /**
     * codeListService���擾����B
     * @return codeListService
     */
    public CodeListService getCodeListService() {
        return codeListService;
    }
    /**
     * codeListService��ݒ肷��B
     * @param codeListService codeListService�B
     */
    public void setCodeListService(CodeListService codeListService) {
        this.codeListService = codeListService;
    }

}
