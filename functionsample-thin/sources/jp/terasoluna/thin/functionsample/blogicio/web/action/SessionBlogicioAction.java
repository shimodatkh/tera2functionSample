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
 * Blogicio処理でセッションスコープを利用した場合のアクションクラス
 */
public class SessionBlogicioAction
        extends AbstractBLogicAction<BlogicioParam> {

    /**
     * ログクラス。
     */
    private static Log log = LogFactory.getLog(SessionBlogicioAction.class);
    
    /**
     * Blogicio処理でセッションを利用した場合
     * 
     * @param param セッションから取得したデータ
     * @return 結果データ
     * @throws Exception 予期せぬ例外
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
        
        // JSPに表示するBLogicParam内容
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
        
        map.put("session", "アクションで変更されたセッションデータ");
        // BLogicParam内容
        map.put("paramLog", paramLog.toString());
        result.setResultObject(map);
        
        result.setResultString("success");
        return result;
    }
}