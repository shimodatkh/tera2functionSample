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

package jp.terasoluna.thin.functionsample.reset.web.action;

import java.util.HashMap;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

import jp.terasoluna.thin.functionsample.reset.bean.NestedParam;
import jp.terasoluna.fw.web.struts.actions.ActionEx;
import jp.terasoluna.fw.web.struts.form.DynaValidatorActionFormEx;

/**
 * DynaValidatorActionFormEx���g�����ꍇ�A�t�H�[���v�f�̏������̂��߂̃A�N�V����
 */
public class ResetDynaFormAction extends ActionEx {

    /**
     * DynaValidatorActionFormEx���g�����ꍇ�A�t�H�[���v�f�̏��������s���B
     * 
     * @param mapping ActionMapping
     * @param form ActionForm
     * @param request HttpServletRequest
     * @param response HttpServletResponse
     * @return ActionForward
     * @throws ��O
     */
    @SuppressWarnings("unchecked")
    @Override
    public ActionForward doExecute(ActionMapping mapping, ActionForm form,
            HttpServletRequest request, HttpServletResponse response)
            throws Exception {
        
        // �t�H�[���擾
        DynaValidatorActionFormEx formEx = (DynaValidatorActionFormEx) form;
        
        // �}�b�v�擾
        HashMap<String,String> mapItems =
            (HashMap<String, String>) formEx.get("mapItems");
        
        // �l�X�g�r�[���擾
        NestedParam[] rows1 = (NestedParam[]) formEx.get("rows1");
        NestedParam[] rows2 = (NestedParam[]) formEx.get("rows2");
        
        // map�^�C�v�̃��Z�b�g���ڂ̏�����
        mapItems.put("mapItem1","On");
        mapItems.put("mapItem2","On");
        mapItems.put("mapItem3","On");
        mapItems.put("mapItem4","On");
        mapItems.put("mapItem5","On");
        
        // �l�X�g���ꂽ�r�[�����X�g���Z�b�g����1�̏�����
        rows1[0] = new NestedParam();
        rows1[1] = new NestedParam();
        rows1[2] = new NestedParam();
        rows1[3] = new NestedParam();
        rows1[4] = new NestedParam();
        
        // �l�X�g���ꂽ�r�[�����X�g���Z�b�g����2�̏�����
        rows2[0] = new NestedParam();
        rows2[1] = new NestedParam();
        rows2[2] = new NestedParam();
        rows2[3] = new NestedParam();
        rows2[4] = new NestedParam();
        
        // �e�v�f�̐ݒ�
        formEx.set("mapItems", mapItems);
        formEx.set("rows1", rows1);
        formEx.set("rows2", rows2);

        // �p�����[�^�����i�t�H���[�h��j���擾
        String path = mapping.getParameter();

        if (path == null) {
            // �p�����[�^�������ݒ肳��Ă��Ȃ��ꍇ�A(404)�G���[��ԋp����
            response.sendError(HttpServletResponse.SC_NOT_FOUND);
            return null;
        }

        // �A�N�V�����t�H���[�h�𐶐�
        ActionForward retVal = new ActionForward(path);

        return retVal;
    }
}
