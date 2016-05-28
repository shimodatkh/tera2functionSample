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

package jp.terasoluna.thin.functionsample.pagelink.service;

import java.util.Map;

public interface ListService {

    /**
     * データベースから一覧情報を取得する。
     * 引数から1ページの表示件数と開始インデックスを取得し、QueryDAOに渡す。
     * また、一覧情報の全件数も取得し返却する。
     *
     * @param map 表示件数、開始インデックスを保持したMap
     * @return 一覧情報、全件数を保持したMap
     */
    Map<String, Object> getUserList(Map<String, String> map);
}