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

package jp.terasoluna.thin.functionsample.blogic.web.action;

import jp.terasoluna.thin.functionsample.blogic.bean.BlogicParam;
import jp.terasoluna.thin.functionsample.blogic.service.BlogicPOJOService;
import jp.terasoluna.fw.service.thin.BLogicResult;
import jp.terasoluna.fw.web.struts.actions.AbstractBLogicAction;

/**
 * サービスクラスにPOJOを使った場合のアクションクラス
 * 
 */
public class BlogicPOJOAction extends AbstractBLogicAction<BlogicParam> {

    /**
     * POJOで実装されたサービスクラス
     */
    protected BlogicPOJOService blogicPOJOService = null;
    
    /**
     * サービスクラスにPOJOを使った場合
     * @param param BlogicParam
     * @return BLogicResult
     * @throws Exception 予期せぬ例外
     */
    @Override
    public BLogicResult doExecuteBLogic(BlogicParam param) throws Exception {
        
        BLogicResult result = new BLogicResult();
        
        result.setResultObject(blogicPOJOService.concat(param));
        
        result.setResultString("success");
        return result;
    }

    /**
     * blogicPOJOServiceを取得する。
     * @return blogicPOJOService
     */
    public BlogicPOJOService getBlogicPOJOService() {
        return blogicPOJOService;
    }

    /**
     * blogicPOJOServiceを設定する。
     * @param blogicPOJOService blogicPOJOService。
     */
    public void setBlogicPOJOService(BlogicPOJOService blogicPOJOService) {
        this.blogicPOJOService = blogicPOJOService;
    }   
}