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

package jp.terasoluna.thin.functionsample.blogic.service;

import jp.terasoluna.thin.functionsample.blogic.bean.BlogicParam;
import jp.terasoluna.thin.functionsample.blogic.bean.BlogicResult;
import jp.terasoluna.fw.service.thin.BLogic;
import jp.terasoluna.fw.service.thin.BLogicResult;

/**
 * 文字列を連結するBLogicインタフェースをを実装したビジネスロジック
 */
public class BlogicBLogic implements BLogic<BlogicParam> {

    /**
     * パラメータで渡された文字列value1とvalue2を連結する。
     * value1 + " and " + value2の形式で連結する。
     * @param params BlogicParam
     * @return BLogicResult
     */
    public BLogicResult execute(BlogicParam params) {
        // パラメータ取得
        String value1 = params.getValue1();
        String value2 = params.getValue2();
        
        BLogicResult result = new BLogicResult();
        
        // 結果クラスに文字列を連結して設定する。
        BlogicResult r = new BlogicResult();
        r.setResult(value1 + " and " + value2);
        
        result.setResultObject(r);
        result.setResultString("success");
        
        return result;
    }
}