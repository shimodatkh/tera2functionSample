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
import jp.terasoluna.fw.web.codelist.CodeListLoader;

/**
 * コードリストを取得するサービス
 *
 */
public class CodeListServiceImpl implements CodeListService {
    /**
     * コードリストの読み込みを行うサービス
     */
    protected CodeListLoader codeListLoader = null;
    
    /**
     * 言語、国、バリアントコードで初期化したコードリストの読み込みを行うサービス
     */
    protected CodeListLoader mlCodeListLoader4 = null;

    
    /**
     * codeListLoaderを設定する。
     * @param codeListLoader codeListLoader。
     */
    public void setMlCodeListLoader4(CodeListLoader mlCodeListLoader4) {
        this.mlCodeListLoader4 = mlCodeListLoader4;
    }

    /**
     * codeListLoaderを取得する。
     * @return codeListLoader
     */
    public CodeListLoader getCodeListLoader() {
        return codeListLoader;
    }

    /**
     * codeListLoaderを設定する。
     * @param codeListLoader codeListLoader。
     */
    public void setCodeListLoader(CodeListLoader codeListLoader) {
        this.codeListLoader = codeListLoader;
    }
    
    /**
     * コードリスト情報を参照する。
     *
     * @return コードリスト内容
     */
    public CodeBean[] getCodeList(){
        CodeBean[] beans = codeListLoader.getCodeBeans();
        return beans;
    }
    
    /**
     * コードリスト情報を参照する。
     *
     * @return コードリスト内容
     */
    public CodeBean[] getCodeList(Locale locale){

        CodeBean[] beans = mlCodeListLoader4.getCodeBeans(locale);

        return beans;
    }
}