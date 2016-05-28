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
/**
 * 
 * コードリスト情報を取得する機能のインタフェース
 *
 */
public interface CodeListService {
    /**
     * コードリスト情報を参照する。
     *
     * @return コードリスト内容
     */
    CodeBean[] getCodeList();

    CodeBean[] getCodeList(Locale locale);

}