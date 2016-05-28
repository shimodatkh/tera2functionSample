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

package jp.terasoluna.thin.functionsample.blogicio.web;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;

/**
 * リクエストのパラメータデータをスコープに格納するフィルタークラス。<br>
 * パラメータ名によってパラメータデータをスコープに格納する。<br><br>
 * 各パラメータ名に対する格納先は以下です。<br>
 * <table border="1" frame='box'>
 *   <tr>
 *     <td>パラメータ名</td>
 *     <td>格納先スコープ</td>
 *   </tr>
 *   <tr>
 *     <td>requestData</td>
 *     <td>requestスコープ</td>
 *   </tr>
 *   <tr>
 *     <td>sessionData</td>
 *     <td>sessionスコープ</td>
 *   </tr>
 *   <tr>
 *     <td>applicationData</td>
 *     <td>applicationスコープ</td>
 *   </tr>
 * </table>
 * <br>
 * これ以外のパラメータは無視する。
 * 
 */
public class BlogicioFilter implements Filter {

    /**
     * ログクラス。
     */
    private static Log log = LogFactory.getLog(BlogicioFilter.class);

    /**
     * 初期化処理。
     * 
     * @param filterConfig フィルター設定
     * 
     * @exception ServletException 例外
     */
    public void init(FilterConfig filterConfig) throws ServletException {
    }

    /**
     * フィルター処理。
     * 
     * <p>
     * リクエストパラメータを指定されたエンコーディングに設定する。
     * </p>
     * 
     * @param request
     *            リクエスト
     * @param response
     *            レスポンス
     * @param chain
     *            フィルターチェーン
     * 
     * @exception IOException
     *                例外
     * @exception ServletException
     *                例外
     */
    public void doFilter(ServletRequest request, ServletResponse response,
            FilterChain chain) throws IOException, ServletException {
        
        String requestData = request.getParameter("requestData");
        String sessionData = request.getParameter("sessionData");
        String applicationData = request.getParameter("applicationData");
        
        if (requestData instanceof String) {
            request.setAttribute("requestData", requestData);
            
            // Log
            if (log.isDebugEnabled()) {
                log.debug("set requestData(" + requestData + ") to request.");
            }
        }
        
        if (sessionData instanceof String) {
            HttpSession session = ((HttpServletRequest) request).getSession();
            session.setAttribute("sessionData", sessionData);
            // Log
            if (log.isDebugEnabled()) {
                log.debug("set sessionData(" + sessionData + ") to session.");
            }
        }
        
        if (applicationData instanceof String) {
            HttpSession session = ((HttpServletRequest) request).getSession();
            ServletContext context = session.getServletContext();
            context.setAttribute("applicationData", applicationData);
            // Log
            if (log.isDebugEnabled()) {
                log.debug("set applicationData(" + applicationData + ") to application.");
            }
        } 
    
        chain.doFilter(request, response);
    }

    /**
     * 終了時処理。
     */
    public void destroy() {
    }
}