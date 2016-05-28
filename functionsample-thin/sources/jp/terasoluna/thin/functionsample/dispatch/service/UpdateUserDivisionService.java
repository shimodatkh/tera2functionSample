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

/**
 * ユーザ権限更新サービスのインタフェース
 *
 */
public interface UpdateUserDivisionService {

    /**
     * 入力されたデータを基にデータベースのユーザ権限を更新する。
     *
     * @param params 入力されたユーザ権限情報 
     * @exception Exception 予期せぬ例外
     */
    void updateUserDivision(Map params) throws Exception;
}