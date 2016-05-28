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
 * �Z�b�V�����X�R�[�v�ɒl��ݒ肵�A��ʑJ�ڂ��s���A�N�V����
 */
public class ClearSessionInitializeAction extends ActionEx {

    /**
     * @param mapping �A�N�V�����}�b�s���O
     * @param form �A�N�V�����t�H�[��
     * @param request ���N�G�X�g
     * @param response ���X�|���X
     * @return ActionForward �A�N�V�����t�H���[�h
     * @throws ��O
     */
    @Override
    public ActionForward doExecute(ActionMapping mapping, ActionForm form,
            HttpServletRequest request, HttpServletResponse response)
            throws Exception {
        // �Z�b�V�����ɒl��ݒ�
        HttpSession session = request.getSession();
        session.setAttribute("sessionValue1", "�Z�b�V�����l�P");
        session.setAttribute("sessionValue2", "�Z�b�V�����l�Q");
        session.setAttribute("sessionValue3", "�Z�b�V�����l�R");
        
        // �t�H���[�h
        String path = mapping.getParameter();
        
        if (path == null) {
            // �p�����[�^�������ݒ肳��Ă��Ȃ��ꍇ�A(404)�G���[��ԋp����
            response.sendError(HttpServletResponse.SC_NOT_FOUND);
        }
        
        // �A�N�V�����t�H���[�h�𐶐�
        ActionForward retVal = new ActionForward(path);
        
        return retVal;
    }
}