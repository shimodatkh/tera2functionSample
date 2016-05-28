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

package jp.terasoluna.thin.functionsample.dispatch.service;

import jp.terasoluna.thin.functionsample.dispatch.bean.UserVO;
import jp.terasoluna.fw.dao.QueryDAO;

/**
 * ユーザリスト取得サービスの実装クラス
 *
 */
public class ListUserServiceImpl implements ListUserService {

    /**
     * ユーザリスト取得用DAOクラス<br>
     * Springによりインスタンス生成され設定される。
     */
    private QueryDAO queryDAO = null;

    /**
     * データベースからユーザリストを取得する｡
     *
     * @return ユーザリスト
     * @exception Exception 予期せぬ例外
     */
    public UserVO[] getListUser()  throws Exception {
        
        // ユーザリストを取得する。
        return queryDAO.executeForObjectArray(
                "dispatch.selectListUser", null, UserVO.class);
    }

    /**
     * ユーザリスト取得用DAOクラスを取得する。
     * @return ユーザリスト取得用DAOクラス
     */
    public QueryDAO getQueryDAO() {
        return queryDAO;
    }

    /**
     * ユーザリスト取得用DAOクラスを設定する。
     * @param queryDAO ユーザリスト取得用DAOクラス
     */
    public void setQueryDAO(QueryDAO queryDAO) {
        this.queryDAO = queryDAO;
    }
}