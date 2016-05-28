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

package jp.terasoluna.thin.functionsample.sessiondir.web.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import jp.terasoluna.fw.service.thin.BLogicResult;
import jp.terasoluna.fw.util.FileUtil;
import jp.terasoluna.fw.web.struts.actions.AbstractBLogicAction;

/**
 * 直接セッションディレクトリを作成するアクション
 *
 */
public class MakeSessionDirAction extends AbstractBLogicAction {

    /**
     * 出力値に成功を設定する。
     *
     * @param param
     * @return BLogicResult
     * @throws Exception
     */
    @Override
    public BLogicResult doExecuteBLogic(Object param) throws Exception {
    	BLogicResult result = new BLogicResult();
        
        result.setResultString("success");
        return result;
    }
    /**
     * 
     * ビジネスロジックが実行される前に呼び出されるメソッド
     * <p>
     * requestからセッション情報を取得し、
     * <p>
     * セッションIDを引数にセッションディレクトリを作成する。 
     *
     * @param request
     * @param response
     * @param params
     * @throws Exception
     */
    protected void preDoExecuteBLogic(HttpServletRequest request,
            HttpServletResponse response, Object params) throws Exception {
        // requestからセッション情報を取得
        HttpSession session = (HttpSession) request.getSession();
        
        // セッションディレクトリを作成
        FileUtil.makeSessionDirectory(session.getId()) ;
    }
}
