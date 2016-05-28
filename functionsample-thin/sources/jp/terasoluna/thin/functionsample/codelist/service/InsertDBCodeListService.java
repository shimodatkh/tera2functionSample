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

import java.util.Map;

import jp.terasoluna.thin.functionsample.codelist.bean.InsertDBCodeListParam;
/**
 * ＤＢにコードリストを登録する機能のインタフェース
 *
 */
public interface InsertDBCodeListService {
    /**
     * 新規コードリストを登録する。
     *
     * @param param コードリスト
     * @return
     */
    Map<String, Object> insertCodeList(InsertDBCodeListParam param);

}