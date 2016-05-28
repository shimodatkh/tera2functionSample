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

package jp.terasoluna.thin.functionsample.common.service;

import jp.terasoluna.thin.functionsample.common.FunctionUVO;
import jp.terasoluna.thin.functionsample.common.bean.LogonParam;
import jp.terasoluna.fw.dao.QueryDAO;

/**
 * ログオンユーザ認証を行うサービスクラス
 *
 */
public class LogonServiceImpl implements LogonService {

    /**
     * DAOクラス。
     * Springによりインスタンス生成され設定される。
     */
    protected QueryDAO queryDAO = null;

    /**
     * QueryDAOを設定する。
     *
     * @param queryDAO QueryDAO
     */
    public void setQueryDAO(QueryDAO queryDAO) {
        this.queryDAO = queryDAO;
    }
    
    /**
     * データベースからユーザID及びパスワードに合致するユーザ情報を取得する。
     * 正しく取得できた場合は、UVOを生成して返却する。
     *
     * @param params ユーザID、パスワードを保持したBean
     * @return BLogicResult
     */
    public FunctionUVO logon(LogonParam params) {
        
        // 認証処理
        FunctionUVO uvo = queryDAO.executeForObject("default.selectUserAuthenticated",
                params, new FunctionUVO().getClass());
        
        return uvo;
    }
}