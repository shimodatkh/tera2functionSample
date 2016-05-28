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
 * ���N�G�X�g�̃p�����[�^�f�[�^���X�R�[�v�Ɋi�[����t�B���^�[�N���X�B<br>
 * �p�����[�^���ɂ���ăp�����[�^�f�[�^���X�R�[�v�Ɋi�[����B<br><br>
 * �e�p�����[�^���ɑ΂���i�[��͈ȉ��ł��B<br>
 * <table border="1" frame='box'>
 *   <tr>
 *     <td>�p�����[�^��</td>
 *     <td>�i�[��X�R�[�v</td>
 *   </tr>
 *   <tr>
 *     <td>requestData</td>
 *     <td>request�X�R�[�v</td>
 *   </tr>
 *   <tr>
 *     <td>sessionData</td>
 *     <td>session�X�R�[�v</td>
 *   </tr>
 *   <tr>
 *     <td>applicationData</td>
 *     <td>application�X�R�[�v</td>
 *   </tr>
 * </table>
 * <br>
 * ����ȊO�̃p�����[�^�͖�������B
 * 
 */
public class BlogicioFilter implements Filter {

    /**
     * ���O�N���X�B
     */
    private static Log log = LogFactory.getLog(BlogicioFilter.class);

    /**
     * �����������B
     * 
     * @param filterConfig �t�B���^�[�ݒ�
     * 
     * @exception ServletException ��O
     */
    public void init(FilterConfig filterConfig) throws ServletException {
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
     * �I���������B
     */
    public void destroy() {
    }
}