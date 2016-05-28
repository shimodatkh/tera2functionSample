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

package jp.terasoluna.thin.functionsample.common.web;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;

/**
 * 機能網羅サンプルAPにおいて、リクエストパラメータのエンコーディング設定を行う。
 * <p>
 * <code>web.xml</code> で初期値を設定する事により、以下の制御が可能である。
 * </p>
 * <p>
 * <table border="1" frame='box'>
 * <tr>
 * <td>初期化パラメータ名</td>
 * <td>デフォルト値</td>
 * <td>概要</td>
 * </tr>
 * <tr>
 * <td><code>encoding</code></td>
 * <td><code>null</code></td>
 * <td>文字エンコーディング名。 <br>
 * 設定しなかった場合は、処理を行なわない。</td>
 * </tr>
 * <tr>
 * <td><code>ignore</code></td>
 * <td><code>false</code></td>
 * <td>この値が <code>true</code> であった場合、エンコーディング処理を行なわない。</td>
 * </tr>
 * <tr>
 * <td>more</td>
 * <td>false</td>
 * <td>フィルタの複数回処理フラグ。 <br>
 * この値が <code>false</code> であった場合は、
 * 一度処理したリクエストオブジェクトは処理対象外とする。</td>
 * </tr>
 * </table>
 * </p>
 * <p>
 * ServletAPIバージョン2.4以上において有効。下記のようにweb.xmlに設定する。
 * </p>
 * &lt;filter&gt; <br>
 * &lt;filter-name&gt;Set Character Encoding&lt;/filter-name&gt; <br>
 * &lt;filter-class&gt; <br>
 * jp.terasoluna.thin.functionsample.common.web.SetCharacterEncodingFilter <br>
 * &lt;/filter-class&gt; <br>
 * &lt;init-param&gt; <br>
 * &lt;param-name&gt;encoding&lt;/param-name&gt; <br>
 * &lt;param-value&gt;Windows31-J&lt;/param-value&gt; <br>
 * &lt;/init-param&gt; <br>
 * &lt;init-param&gt; <br>
 * &lt;param-name&gt;more&lt;/param-name&gt; <br>
 * &lt;param-value&gt;false&lt;/param-value&gt; <br>
 * &lt;/init-param&gt; <br>
 * &lt;/filter&gt; <br>
 * &lt;filter-mapping&gt; <br>
 * &lt;filter-name&gt;Set Character Encoding&lt;/filter-name&gt; <br>
 * &lt;url-pattern&gt;/&lt;/url-pattern&gt; <br>
 * &lt;/filter-mapping&gt; <br>
 * 
 */
public class SetCharacterEncodingFilter implements Filter {

    /**
     * ログクラス。
     */
    private static Log log
         = LogFactory.getLog(SetCharacterEncodingFilter.class);

    /**
     * フィルタ処理済みフラグ。
     */
    private static final String THRU_FILTER_KEY = "THRU_FILTER_ENCODING";

    /**
     * フィルタの複数回処理フラグ。
     */
    private boolean moreFlag = false;

    /**
     * デフォルトのエンコーディング。
     */
    private String encoding = null;

    /**
     * フィルターコンフィグ。
     */
    @SuppressWarnings("unused")
    private FilterConfig filterConfig = null;

    /**
     * クライアントで指定されたエンコーディングを無視するかどうかのフラグ。
     */
    private boolean ignoreFlag = false;

    /**
     * 初期化処理。
     * 
     * @param filterConfig
     *            フィルター設定
     * 
     * @exception ServletException
     *                例外
     */
    public void init(FilterConfig filterConfig) throws ServletException {

        // Log
        if (log.isDebugEnabled()) {
            log.debug("init() called.");
        }

        this.filterConfig = filterConfig;
        this.encoding = filterConfig.getInitParameter("encoding");

        if (log.isDebugEnabled()) {
            log.debug("this.encoding = " + this.encoding);
        }

        String ignoreValue = filterConfig.getInitParameter("ignore");
        if (ignoreValue != null) {
            this.ignoreFlag = this.createFlag(ignoreValue);
        }

        String moreValue = filterConfig.getInitParameter("more");
        if (moreValue != null) {
            this.moreFlag = this.createFlag(moreValue);
        }
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
    
        if (!this.moreFlag && request.getAttribute(THRU_FILTER_KEY) != null) {
            chain.doFilter(request, response);
            return;
        }
    
        if (!ignoreFlag && encoding != null) {
            // Log
            if (log.isDebugEnabled()) {
                log.debug("set encoding(" + encoding + ") to request.");
            }
            request.setCharacterEncoding(encoding);
        }
    
    
        // 処理済フラグを格納
        request.setAttribute(THRU_FILTER_KEY, THRU_FILTER_KEY);
    
        chain.doFilter(request, response);
    }

    /**
     * 終了時処理。
     */
    public void destroy() {
        this.encoding = null;
        this.filterConfig = null;
    }

    /**
     * 文字列より、フラグを生成する。
     * 
     * @param value
     *            対象文字列。
     * @return 生成されたフラグ。
     */
    private boolean createFlag(String value) {
    
        if (value == null) {
            return false;
        } else if ("true".equalsIgnoreCase(value)) {
            return true;
        } else if ("yes".equalsIgnoreCase(value)) {
            return true;
        }
        return false;
    }
}