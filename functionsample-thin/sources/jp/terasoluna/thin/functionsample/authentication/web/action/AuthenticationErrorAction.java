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

package jp.terasoluna.thin.functionsample.authentication.web.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

import jp.terasoluna.fw.web.struts.actions.ActionEx;

public class AuthenticationErrorAction extends ActionEx {

    /**
     * ログクラス。
     */
    private static Log log = LogFactory.getLog(AuthenticationErrorAction.class);
    
    private static final String FORWARD_SUCCESS = "success";
    
    @Override
    public ActionForward doExecute(ActionMapping mapping, ActionForm form,
            HttpServletRequest req, HttpServletResponse res)
            throws Exception {

        // 利用中のセッションを無効化する
        HttpSession session = req.getSession(false);
        if (session != null) {
            session.invalidate();
        }

        // つねにsuccessにフォワードする
        ActionForward actionForward = mapping.findForward(FORWARD_SUCCESS);
        if (log.isDebugEnabled()) {
            log.debug("forward = " + FORWARD_SUCCESS
                + " (" + ((actionForward == null)
                ? "null" : actionForward.getPath()) + ")");
        }
        
        return actionForward;
    }
}
