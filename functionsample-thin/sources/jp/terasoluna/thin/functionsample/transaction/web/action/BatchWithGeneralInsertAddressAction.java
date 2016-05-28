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

import jp.terasoluna.thin.functionsample.transaction.bean.GeneralWithBatchInsertAddressParam;
import jp.terasoluna.thin.functionsample.transaction.service.BatchWithGeneralInsertAddressService;
import jp.terasoluna.fw.service.thin.BLogicResult;
import jp.terasoluna.fw.web.struts.actions.AbstractBLogicAction;

/**
 * 一般機能とバッチ機能を一緒に使用した住所情報登録アクションクラス。<br>
 * バッチ機能処理後、一般機能処理を行う。
 *
 * @version 2006/02/23
 */
public class BatchWithGeneralInsertAddressAction extends
        AbstractBLogicAction<GeneralWithBatchInsertAddressParam> {
    
    /**
     * 一般機能とバッチ機能を一緒に使用した住所情報登録サービス
     */
    protected BatchWithGeneralInsertAddressService
        <GeneralWithBatchInsertAddressParam>
        batchWithGeneralInsertAddressService = null;
    
    /**
     * 住所情報登録処理を行う。
     * @param param 住所情報
     * @return 顧客コードリスト
     * @throws Exception 予期せぬ例外
     */
    @Override
    public BLogicResult doExecuteBLogic(
            GeneralWithBatchInsertAddressParam param) 
            throws Exception {
        
        // 処理結果を格納するためのオブジェクト
    	BLogicResult result = new BLogicResult();
        
        batchWithGeneralInsertAddressService.insertAddress(param);
            
        result.setResultString("success");

        return result;
    }

    /**
     * 一般機能とバッチ機能を一緒に使用した住所情報登録サービスを返す。
     * @return 一般機能とバッチ機能を一緒に使用した住所情報登録サービス
     */
    public BatchWithGeneralInsertAddressService
            <GeneralWithBatchInsertAddressParam>
            getBatchWithGeneralInsertAddressService() {
        return batchWithGeneralInsertAddressService;
    }

    /**
     * 一般機能とバッチ機能を一緒に使用した住所情報登録サービスを設定する。<br>
     * バッチ機能処理後、一般機能処理を行う。
     * @param batchWithGeneralInsertAddressService 
     *         一般機能とバッチ機能を一緒に使用した住所情報登録サービス
     */
    public void setBatchWithGeneralInsertAddressService(
            BatchWithGeneralInsertAddressService
            <GeneralWithBatchInsertAddressParam>
            batchWithGeneralInsertAddressService) {
        this.batchWithGeneralInsertAddressService =
            batchWithGeneralInsertAddressService;
    }
}
