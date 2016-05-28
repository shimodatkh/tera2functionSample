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

package jp.terasoluna.thin.functionsample.database.web.action;

import java.util.Map;

import jp.terasoluna.thin.functionsample.database.bean.AddressTableVO;
import jp.terasoluna.thin.functionsample.database.service.ResultInsertAddressService;
import jp.terasoluna.fw.service.thin.BLogicResult;
import jp.terasoluna.fw.web.struts.actions.AbstractBLogicAction;

/**
 * 新規データを登録するアクション
 * 
 */
public class ResultInsertAddressAction extends
        AbstractBLogicAction<AddressTableVO> {
    
    /**
     * 住所録登録サービス
     */
    protected ResultInsertAddressService resultInsertAddressService = null;
    
    /**
     * 住所情報を新規登録する。
     *
     * @param param AddressTableVO
     * @return BLogicResult
     * @throws Exception 
     */
    @Override
    public BLogicResult doExecuteBLogic(AddressTableVO param)
                                                        throws Exception {
        
        // 処理結果を格納するためのオブジェクト
    	BLogicResult result = new BLogicResult();
        Map<String, Object> listAddress =
            resultInsertAddressService.insertAddress(param);
            
        // データベースに住所録データが無い時もそのまま画面に表示する。
        result.setResultObject(listAddress);
        result.setResultString("success");
        
        return result;
    }

    /**
     * resultInsertAddressServiceを取得する。
     * @return resultInsertAddressService
     */
    public ResultInsertAddressService getResultInsertAddressService() {
        return resultInsertAddressService;
    }

    /**
     * resultInsertAddressServiceを設定する。
     * @param resultInsertAddressService resultInsertAddressService。
     */
    public void setResultInsertAddressService(
            ResultInsertAddressService resultInsertAddressService) {
        this.resultInsertAddressService = resultInsertAddressService;
    }
}