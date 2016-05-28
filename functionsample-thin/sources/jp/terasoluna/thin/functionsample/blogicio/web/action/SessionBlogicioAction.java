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

import java.util.HashMap;
import java.util.Map;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;

import jp.terasoluna.thin.functionsample.blogicio.bean.BlogicioParam;
import jp.terasoluna.fw.service.thin.BLogicResult;
import jp.terasoluna.fw.web.struts.actions.AbstractBLogicAction;

/**
 * Blogicio�����ŃZ�b�V�����X�R�[�v�𗘗p�����ꍇ�̃A�N�V�����N���X
 */
public class SessionBlogicioAction
        extends AbstractBLogicAction<BlogicioParam> {

    /**
     * ���O�N���X�B
     */
    private static Log log = LogFactory.getLog(SessionBlogicioAction.class);
    
    /**
     * Blogicio�����ŃZ�b�V�����𗘗p�����ꍇ
     * 
     * @param param �Z�b�V��������擾�����f�[�^
     * @return ���ʃf�[�^
     * @throws Exception �\�����ʗ�O
     */
    @Override
    public BLogicResult doExecuteBLogic(BlogicioParam param) throws Exception {
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
        
        Map<String, Object> map = new HashMap<String, Object>();
        BLogicResult result = new BLogicResult();
        
        map.put("session", "�A�N�V�����ŕύX���ꂽ�Z�b�V�����f�[�^");
        // BLogicParam���e
        map.put("paramLog", paramLog.toString());
        result.setResultObject(map);
        
        result.setResultString("success");
        return result;
    }
}