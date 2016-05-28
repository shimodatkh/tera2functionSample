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

import jp.terasoluna.thin.functionsample.database.bean.BatchAddressParam;
import jp.terasoluna.thin.functionsample.database.service.ResultBatchAddressService;
import jp.terasoluna.fw.service.thin.BLogicResult;
import jp.terasoluna.fw.web.struts.actions.AbstractBLogicAction;

/**
 * バッチ処理を行うアクションクラス。
 * 
 */
public class ResultBatchAddressAction extends AbstractBLogicAction<BatchAddressParam> {

    /**
     * 一括登録処理サービス
     */
    protected ResultBatchAddressService resultBatchAddressService = null;
    
    /**
     * バッチ処理を行う。
     * @param param BatchAddressParam
     * @return BLogicResult
     * @throws Exception
     */
    @Override
    public BLogicResult doExecuteBLogic(BatchAddressParam param) throws Exception {
        // 処理結果を格納するためのオブジェクト
    	BLogicResult result = new BLogicResult();
        Map<String, Object> listAddress
        = resultBatchAddressService.batchAddress(param);
        
        // データベースに住所録データが無い時もそのまま画面に表示する。
        result.setResultObject(listAddress);
        result.setResultString("success");
        
        return result;
    }

    /**
     * resultBatchAddressServiceを取得する。
     * @return resultBatchAddressService
     */
    public ResultBatchAddressService getResultBatchAddressService() {
        return resultBatchAddressService;
    }

    /**
     * resultBatchAddressServiceを設定する。
     * @param resultBatchAddressService resultBatchAddressService。
     */
    public void setResultBatchAddressService(
            ResultBatchAddressService resultBatchAddressService) {
        this.resultBatchAddressService = resultBatchAddressService;
    }
}