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

package jp.terasoluna.thin.functionsample.transaction.web.action;

import jp.terasoluna.thin.functionsample.transaction.bean.InsertAddressParam;
import jp.terasoluna.thin.functionsample.transaction.service.
        BatchInsertAddressService;
import jp.terasoluna.fw.service.thin.BLogicResult;
import jp.terasoluna.fw.web.struts.actions.AbstractBLogicAction;

/**
 * バッチ機能を使用した住所情報登録アクションクラス。
 *
 * @version 2006/02/23
 */
public class BatchInsertAddressAction extends
        AbstractBLogicAction<InsertAddressParam> {
    
    /**
     * バッチ機能を使用した住所情報登録サービス
     */
    protected BatchInsertAddressService<InsertAddressParam>
        batchInsertAddressService = null;
    
    /**
     * 住所情報登録処理を行う。
     * @param param 住所情報
     * @return 顧客コードリスト
     * @throws Exception 予期せぬ例外
     */
    @Override
    public BLogicResult doExecuteBLogic(InsertAddressParam param) 
                    throws Exception {
        
        // 処理結果を格納するためのオブジェクト
    	BLogicResult result = new BLogicResult();
        
        batchInsertAddressService.insertAddress(param);
        
        result.setResultString("success");

        return result;
    }

    /**
     * バッチ機能を使用した住所情報登録サービスを返す。
     * @return バッチ機能を使用した住所情報登録サービスサービス
     */
    public BatchInsertAddressService<InsertAddressParam>
    getBatchInsertAddressService() {
        return batchInsertAddressService;
    }

    /**
     * バッチ機能を使用した住所情報登録サービスを設定する。
     * @param batchInsertAddressService
     *         バッチ機能を使用した住所情報登録サービスサービス
     */
    public void setBatchInsertAddressService(
            BatchInsertAddressService<InsertAddressParam>
            batchInsertAddressService) {
        this.batchInsertAddressService = batchInsertAddressService;
    }
}
