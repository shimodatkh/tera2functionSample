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

package jp.terasoluna.thin.functionsample.dispatch.action;

import java.util.HashMap;
import java.util.Map;

import jp.terasoluna.thin.functionsample.dispatch.bean.UserVO;
import jp.terasoluna.thin.functionsample.dispatch.service.ListUserService;
import jp.terasoluna.fw.service.thin.BLogicResult;
import jp.terasoluna.fw.web.struts.actions.AbstractBLogicAction;

/**
 * ユーザリストを取得するアクション
 *
 */
public class ListUserAction extends AbstractBLogicAction {
    
    /**
     * ユーザリスト取得サービス
     */
    protected ListUserService listUserService = null;
    
    /**
     * データベースからユーザリストを取得する。
     *
     * @param param Object
     * @return BLogicResult
     * @throws Exception 予期せぬ例外
     */
    @Override
    public BLogicResult doExecuteBLogic(Object param) throws Exception {
        
        //処理結果を格納するためのオブジェクト
    	BLogicResult result = new BLogicResult();
        Map<String, Object> map = new HashMap<String, Object>();
        
        //ユーザリスト取得
        UserVO[] userList = listUserService.getListUser();
        
        //結果の設定
        map.put("userList", userList);

        result.setResultObject(map);
        result.setResultString("success");
        
        return result;
    }

    /**
     * ユーザリスト取得サービスを取得する。
     * @return ユーザリスト取得サービス
     */
    public ListUserService getListUserService() {
        return listUserService;
    }

    /**
     * ユーザリスト取得サービスを設定する。
     * @param listUserService ユーザリスト取得サービス
     */
    public void setListUserService(ListUserService listUserService) {
        this.listUserService = listUserService;
    }   
}