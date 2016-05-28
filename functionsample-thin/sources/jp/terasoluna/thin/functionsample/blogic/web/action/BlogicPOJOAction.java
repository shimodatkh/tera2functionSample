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
 * �T�[�r�X�N���X��POJO���g�����ꍇ�̃A�N�V�����N���X
 * 
 */
public class BlogicPOJOAction extends AbstractBLogicAction<BlogicParam> {

    /**
     * POJO�Ŏ������ꂽ�T�[�r�X�N���X
     */
    protected BlogicPOJOService blogicPOJOService = null;
    
    /**
     * �T�[�r�X�N���X��POJO���g�����ꍇ
     * @param param BlogicParam
     * @return BLogicResult
     * @throws Exception �\�����ʗ�O
     */
    @Override
    public BLogicResult doExecuteBLogic(BlogicParam param) throws Exception {
        
        BLogicResult result = new BLogicResult();
        
        result.setResultObject(blogicPOJOService.concat(param));
        
        result.setResultString("success");
        return result;
    }

    /**
     * blogicPOJOService���擾����B
     * @return blogicPOJOService
     */
    public BlogicPOJOService getBlogicPOJOService() {
        return blogicPOJOService;
    }

    /**
     * blogicPOJOService��ݒ肷��B
     * @param blogicPOJOService blogicPOJOService�B
     */
    public void setBlogicPOJOService(BlogicPOJOService blogicPOJOService) {
        this.blogicPOJOService = blogicPOJOService;
    }   
}