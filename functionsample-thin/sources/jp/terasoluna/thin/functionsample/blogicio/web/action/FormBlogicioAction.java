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

package jp.terasoluna.thin.functionsample.blogicio.web.action;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;

import jp.terasoluna.thin.functionsample.blogicio.bean.BlogicioParam;
import jp.terasoluna.thin.functionsample.blogicio.bean.BlogicioResult;
import jp.terasoluna.fw.service.thin.BLogicResult;
import jp.terasoluna.fw.web.struts.actions.AbstractBLogicAction;

/**
 * Blogicio�����Ńt�H�[���𗘗p�����ꍇ�̃A�N�V�����N���X
 */
public class FormBlogicioAction extends AbstractBLogicAction<BlogicioParam> {

    /**
     * ���O�N���X�B
     */
    private static Log log = LogFactory.getLog(FormBlogicioAction.class);
    
    /**
     * Blogicio�����Ńt�H�[���𗘗p�����ꍇ
     * 
     * @param param �t�H�[������擾�����f�[�^
     * @return ���ʃf�[�^
     * @throws Exception �\�����ʗ�O
     */
    @Override
    public BLogicResult doExecuteBLogic(BlogicioParam param) throws
            Exception {
        if (log.isInfoEnabled()) {
            log.info("**** Inputdata *** ------------------------------------");
            log.info("**** Inputdata *** form1 data : " + param.getForm1());
            log.info("**** Inputdata *** form2 data : " + param.getForm2());
            log.info("**** Inputdata *** request data : " + param.getRequest());
            log.info("**** Inputdata *** session data : " + param.getSession());
            log.info("**** Inputdata *** application data : "
                    + param.getApplication());
            log.info("**** Inputdata *** ------------------------------------");
        }
        
        // JSP�ɕ\������BLogicParam���e
        StringBuilder paramLog = new StringBuilder();
        paramLog.append("form1:");
        paramLog.append(param.getForm1());
        paramLog.append(",form2:");
        paramLog.append(param.getForm2());
        paramLog.append(",request:");
        paramLog.append(param.getRequest());
        paramLog.append(",session:");
        paramLog.append(param.getSession());
        paramLog.append(",application:");
        paramLog.append(param.getApplication());
        
        BlogicioResult blogicioResult = new BlogicioResult();
        BLogicResult result = new BLogicResult();
        blogicioResult.setForm1("�A�N�V�����ŕύX���ꂽ�t�H�[���f�[�^�P");
        blogicioResult.setForm2("�A�N�V�����ŕύX���ꂽ�t�H�[���f�[�^�Q");
        
        // BLogicParam���e
        blogicioResult.setParamLog(paramLog.toString());

        result.setResultObject(blogicioResult);
        
        result.setResultString("success");
        return result;
    }
}