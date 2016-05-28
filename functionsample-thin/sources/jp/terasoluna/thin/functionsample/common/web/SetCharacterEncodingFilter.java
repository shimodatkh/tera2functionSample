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
 * �@�\�ԗ��T���v��AP�ɂ����āA���N�G�X�g�p�����[�^�̃G���R�[�f�B���O�ݒ���s���B
 * <p>
 * <code>web.xml</code> �ŏ����l��ݒ肷�鎖�ɂ��A�ȉ��̐��䂪�\�ł���B
 * </p>
 * <p>
 * <table border="1" frame='box'>
 * <tr>
 * <td>�������p�����[�^��</td>
 * <td>�f�t�H���g�l</td>
 * <td>�T�v</td>
 * </tr>
 * <tr>
 * <td><code>encoding</code></td>
 * <td><code>null</code></td>
 * <td>�����G���R�[�f�B���O���B <br>
 * �ݒ肵�Ȃ������ꍇ�́A�������s�Ȃ�Ȃ��B</td>
 * </tr>
 * <tr>
 * <td><code>ignore</code></td>
 * <td><code>false</code></td>
 * <td>���̒l�� <code>true</code> �ł������ꍇ�A�G���R�[�f�B���O�������s�Ȃ�Ȃ��B</td>
 * </tr>
 * <tr>
 * <td>more</td>
 * <td>false</td>
 * <td>�t�B���^�̕����񏈗��t���O�B <br>
 * ���̒l�� <code>false</code> �ł������ꍇ�́A
 * ��x�����������N�G�X�g�I�u�W�F�N�g�͏����ΏۊO�Ƃ���B</td>
 * </tr>
 * </table>
 * </p>
 * <p>
 * ServletAPI�o�[�W����2.4�ȏ�ɂ����ėL���B���L�̂悤��web.xml�ɐݒ肷��B
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
     * ���O�N���X�B
     */
    private static Log log
         = LogFactory.getLog(SetCharacterEncodingFilter.class);

    /**
     * �t�B���^�����ς݃t���O�B
     */
    private static final String THRU_FILTER_KEY = "THRU_FILTER_ENCODING";

    /**
     * �t�B���^�̕����񏈗��t���O�B
     */
    private boolean moreFlag = false;

    /**
     * �f�t�H���g�̃G���R�[�f�B���O�B
     */
    private String encoding = null;

    /**
     * �t�B���^�[�R���t�B�O�B
     */
    @SuppressWarnings("unused")
    private FilterConfig filterConfig = null;

    /**
     * �N���C�A���g�Ŏw�肳�ꂽ�G���R�[�f�B���O�𖳎����邩�ǂ����̃t���O�B
     */
    private boolean ignoreFlag = false;

    /**
     * �����������B
     * 
     * @param filterConfig
     *            �t�B���^�[�ݒ�
     * 
     * @exception ServletException
     *                ��O
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
     * �t�B���^�[�����B
     * 
     * <p>
     * ���N�G�X�g�p�����[�^���w�肳�ꂽ�G���R�[�f�B���O�ɐݒ肷��B
     * </p>
     * 
     * @param request
     *            ���N�G�X�g
     * @param response
     *            ���X�|���X
     * @param chain
     *            �t�B���^�[�`�F�[��
     * 
     * @exception IOException
     *                ��O
     * @exception ServletException
     *                ��O
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
    
    
        // �����σt���O���i�[
        request.setAttribute(THRU_FILTER_KEY, THRU_FILTER_KEY);
    
        chain.doFilter(request, response);
    }

    /**
     * �I���������B
     */
    public void destroy() {
        this.encoding = null;
        this.filterConfig = null;
    }

    /**
     * ��������A�t���O�𐶐�����B
     * 
     * @param value
     *            �Ώە�����B
     * @return �������ꂽ�t���O�B
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