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

package jp.terasoluna.thin.functionsample.blockage.web.action;

import java.util.Map;

import jp.terasoluna.thin.functionsample.blockage.bean.ListBlockageParam;
import jp.terasoluna.thin.functionsample.blockage.service.ListBlockageService;
import jp.terasoluna.fw.service.thin.BLogicResult;
import jp.terasoluna.fw.web.struts.actions.AbstractBLogicAction;

/**
 * 業務リストと閉塞状態を取得するアクション
 *
 */
public class ListBlockageAction 
                    extends AbstractBLogicAction<ListBlockageParam> {
    /**
     * 業務リストを取得するサービス
     */
    protected ListBlockageService listBlockageService = null;
    /**
     * 業務リストを取得する。
     *
     * @param param 
     * @return BLogicResult
     * @throws Exception
     */
    @Override
    public BLogicResult doExecuteBLogic(ListBlockageParam param) 
                                                throws Exception {
        BLogicResult result = new BLogicResult();
        // 業務リストと閉塞状態を取得する。
        Map<String, Object> list = listBlockageService.getUCList();
        
        result.setResultObject(list);
        result.setResultString("success");
        return result;
    }
    /**
     * listBlockageServiceを取得する。
     * @return listBlockageService
     */
    public ListBlockageService getListBlockageService() {
        return listBlockageService;
    }
    /**
     * listBlockageServiceを設定する。
     * @param listBlockageService listBlockageService。
     */
    public void setListBlockageService
                                (ListBlockageService listBlockageService) {
        this.listBlockageService = listBlockageService;
    }
}
