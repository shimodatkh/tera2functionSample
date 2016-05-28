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

package jp.terasoluna.thin.functionsample.actionex.web.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

import jp.terasoluna.fw.web.struts.actions.ActionEx;

public class ActionExAction extends ActionEx {
    
    /**
     * �A�N�V�����g���p�A�N�V����
     * �P�D�g�����U�N�V�����g�[�N���`�F�b�N
     * 
     * @param mapping ActionMapping
     * @param form ActionForm
     * @param request HttpServletRequest
     * @param response HttpServletRequest
     */
    @Override
    public ActionForward doExecute(ActionMapping mapping, ActionForm form,
            HttpServletRequest request, HttpServletResponse response)
            throws Exception {
        
        // parameter�����i�t�H���[�h��j���擾
        String path = mapping.getParameter();
        
        if (path == null) {
          // parameter�������ݒ肳��Ă��Ȃ��ꍇ�A�i404�j�G���[��ԋp����
          response.sendError(HttpServletResponse.SC_NOT_FOUND);
        }

        // �A�N�V�����t�H���[�h�𐶐�
        ActionForward retVal = new ActionForward(path);

        return retVal;
    }
}