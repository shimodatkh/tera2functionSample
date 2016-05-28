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

import java.util.Map;

import jp.terasoluna.thin.functionsample.dispatch.bean.UserDivisionVO;
import jp.terasoluna.fw.dao.UpdateDAO;

/**
 * ユーザ権限更新サービスの実装クラス
 *
 */
public class UpdateUserDivisionServiceImpl implements
        UpdateUserDivisionService {
    
    
    /**
     * ユーザ権限更新用DAOクラス<br>
     * Springによりインスタンス生成され設定される。
     */
    protected UpdateDAO updateDAO = null;
    
    /**
     * 入力されたデータを基にデータベースのユーザ権限を更新する。
     *
     * @param params 入力されたユーザ権限情報 
     * @exception Exception 予期せぬ例外
     */
    public void updateUserDivision(Map params) throws Exception {
        //ユーザコードの取得
        String[] userCodes = (String[]) params.get("userCode");
        //ユーザ権限の取得
        String[] userDivision = (String[]) params.get("userDivision");
        
        //データベースのデータの更新
        for (int i = 0; i < userCodes.length; i++) {
            updateDAO.execute("dispatch.updateUserDivision",
                    new UserDivisionVO(userCodes[i], userDivision[i]));
        }
    }

    /**
     * ユーザ権限更新用DAOクラスを取得する。
     * @return ユーザ権限更新用DAOクラス
     */
    public UpdateDAO getUpdateDAO() {
        return updateDAO;
    }

    /**
     * ユーザ権限更新用DAOクラスを設定する。
     * @param updateDAO ユーザ権限更新用DAOクラス
     */
    public void setUpdateDAO(UpdateDAO updateDAO) {
        this.updateDAO = updateDAO;
    }

}