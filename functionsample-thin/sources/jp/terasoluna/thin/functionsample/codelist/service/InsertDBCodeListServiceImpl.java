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
 * ＤＢにコードリストを登録するサービス
 *
 */
public class InsertDBCodeListServiceImpl implements InsertDBCodeListService {
    /**
     * コードリストを取得するサービス
     */
    protected CodeListService codeListService = null;
    /**
     * DAOクラス。
     * Springによりインスタンス生成され設定される。
     */
    protected UpdateDAO updateDAO = null;
    /**
     * codeListServiceを取得する。
     * @return codeListService
     */
    public CodeListService getCodeListService() {
        return codeListService;
    }
    /**
     * codeListServiceを設定する。
     * @param codeListService codeListService。
     */
    public void setCodeListService(CodeListService codeListService) {
        this.codeListService = codeListService;
    }
    /**
     * updateDAOを取得する。
     * @return updateDAO
     */
    public UpdateDAO getUpdateDAO() {
        return updateDAO;
    }
    /**
     * updateDAOを設定する。
     * @param updateDAO updateDAO。
     */
    public void setUpdateDAO(UpdateDAO updateDAO) {
        this.updateDAO = updateDAO;
    }
    
    /**
     * 新規コードリストを登録する。
     *
     * @param param コードリスト
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