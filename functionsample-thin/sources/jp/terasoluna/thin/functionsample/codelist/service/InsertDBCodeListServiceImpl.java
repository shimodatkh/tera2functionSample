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

import java.util.HashMap;
import java.util.Map;

import jp.terasoluna.thin.functionsample.codelist.bean.InsertDBCodeListParam;
import jp.terasoluna.fw.dao.UpdateDAO;
import jp.terasoluna.fw.web.codelist.CodeBean;

/**
 * �c�a�ɃR�[�h���X�g��o�^����T�[�r�X
 *
 */
public class InsertDBCodeListServiceImpl implements InsertDBCodeListService {
    /**
     * �R�[�h���X�g���擾����T�[�r�X
     */
    protected CodeListService codeListService = null;
    /**
     * DAO�N���X�B
     * Spring�ɂ��C���X�^���X��������ݒ肳���B
     */
    protected UpdateDAO updateDAO = null;
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
    /**
     * updateDAO���擾����B
     * @return updateDAO
     */
    public UpdateDAO getUpdateDAO() {
        return updateDAO;
    }
    /**
     * updateDAO��ݒ肷��B
     * @param updateDAO updateDAO�B
     */
    public void setUpdateDAO(UpdateDAO updateDAO) {
        this.updateDAO = updateDAO;
    }
    
    /**
     * �V�K�R�[�h���X�g��o�^����B
     *
     * @param param �R�[�h���X�g
     * @return
     */
    public Map<String, Object> insertCodeList(InsertDBCodeListParam param){
        Map<String, Object> list = new HashMap<String, Object>();
        
        updateDAO.execute("codelist.insertCodeList", param);
        
        CodeBean[] codeListTable = codeListService.getCodeList();
        list.put("codeListTable", codeListTable);
        
        CodeBean[] mlCodeListTable = codeListService.getCodeList(param.getLocale());
        list.put("mlCodeListTable", mlCodeListTable);
        return list;
    }
}