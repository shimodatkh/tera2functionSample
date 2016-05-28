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

package jp.terasoluna.thin.functionsample.clearsession.web.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

import jp.terasoluna.fw.web.struts.actions.ActionEx;

/**
 * セッションスコープに値を設定し、画面遷移を行うアクション
 */
public class ClearSessionInitializeAction extends ActionEx {

    /**
     * @param mapping アクションマッピング
     * @param form アクションフォーム
     * @param request リクエスト
     * @param response レスポンス
     * @return ActionForward アクションフォワード
     * @throws 例外
     */
    @Override
    public ActionForward doExecute(ActionMapping mapping, ActionForm form,
            HttpServletRequest request, HttpServletResponse response)
            throws Exception {
        // セッションに値を設定
        HttpSession session = request.getSession();
        session.setAttribute("sessionValue1", "セッション値１");
        session.setAttribute("sessionValue2", "セッション値２");
        session.setAttribute("sessionValue3", "セッション値３");
        
        // フォワード
        String path = mapping.getParameter();
        
        if (path == null) {
            // パラメータ属性が設定されていない場合、(404)エラーを返却する
            response.sendError(HttpServletResponse.SC_NOT_FOUND);
        }
        
        // アクションフォワードを生成
        ActionForward retVal = new ActionForward(path);
        
        return retVal;
    }
}