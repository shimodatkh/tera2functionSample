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
 * DynaValidatorActionFormExを使った場合、フォーム要素の初期化のためのアクション
 */
public class ResetDynaFormAction extends ActionEx {

    /**
     * DynaValidatorActionFormExを使った場合、フォーム要素の初期化を行う。
     * 
     * @param mapping ActionMapping
     * @param form ActionForm
     * @param request HttpServletRequest
     * @param response HttpServletResponse
     * @return ActionForward
     * @throws 例外
     */
    @SuppressWarnings("unchecked")
    @Override
    public ActionForward doExecute(ActionMapping mapping, ActionForm form,
            HttpServletRequest request, HttpServletResponse response)
            throws Exception {
        
        // フォーム取得
        DynaValidatorActionFormEx formEx = (DynaValidatorActionFormEx) form;
        
        // マップ取得
        HashMap<String,String> mapItems =
            (HashMap<String, String>) formEx.get("mapItems");
        
        // ネストビーン取得
        NestedParam[] rows1 = (NestedParam[]) formEx.get("rows1");
        NestedParam[] rows2 = (NestedParam[]) formEx.get("rows2");
        
        // mapタイプのリセット項目の初期化
        mapItems.put("mapItem1","On");
        mapItems.put("mapItem2","On");
        mapItems.put("mapItem3","On");
        mapItems.put("mapItem4","On");
        mapItems.put("mapItem5","On");
        
        // ネストされたビーンリストリセット項目1の初期化
        rows1[0] = new NestedParam();
        rows1[1] = new NestedParam();
        rows1[2] = new NestedParam();
        rows1[3] = new NestedParam();
        rows1[4] = new NestedParam();
        
        // ネストされたビーンリストリセット項目2の初期化
        rows2[0] = new NestedParam();
        rows2[1] = new NestedParam();
        rows2[2] = new NestedParam();
        rows2[3] = new NestedParam();
        rows2[4] = new NestedParam();
        
        // 各要素の設定
        formEx.set("mapItems", mapItems);
        formEx.set("rows1", rows1);
        formEx.set("rows2", rows2);

        // パラメータ属性（フォワード先）を取得
        String path = mapping.getParameter();

        if (path == null) {
            // パラメータ属性が設定されていない場合、(404)エラーを返却する
            response.sendError(HttpServletResponse.SC_NOT_FOUND);
            return null;
        }

        // アクションフォワードを生成
        ActionForward retVal = new ActionForward(path);

        return retVal;
    }
}
