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


import java.util.HashMap;
import java.util.Map;

import jp.terasoluna.thin.functionsample.transaction.bean.AddressVO;
import jp.terasoluna.thin.functionsample.transaction.bean.
        GeneralWithBatchInsertAddressParam;
import jp.terasoluna.thin.functionsample.transaction.service.
        SelectAddressService;
import jp.terasoluna.fw.service.thin.BLogicResult;
import jp.terasoluna.fw.web.struts.actions.AbstractBLogicAction;

/**
 * 住所情報取得処理アクションクラス。
 *
 */
public class GeneralWithBatchSInsertedAddressAction extends
        AbstractBLogicAction<GeneralWithBatchInsertAddressParam> {
    
    /**
     * 住所情報取得処理サービス
     */
    protected SelectAddressService selectAddressService = null;
    
    /**
     * 住所情報取得処理を行う。
     * @param param 顧客コードリスト
     * @return BLogicResult
     * @throws Exception 予期せぬ例外
     */
    @Override
    public BLogicResult doExecuteBLogic(
            GeneralWithBatchInsertAddressParam param) throws Exception {
        
        // 処理結果を格納するためのオブジェクト
    	BLogicResult result = new BLogicResult();
        Map<String, Object> retMap = new HashMap<String, Object>();
        
        //登録されたデータ取得処理
        AddressVO[] searchResult = new AddressVO[3];
        
        searchResult[0] =
            selectAddressService.getListAddress(param.getCustomerCode1());
        searchResult[1] =
            selectAddressService.getListAddress(param.getCustomerCode2());
        searchResult[2] =
            selectAddressService.getListAddress(param.getCustomerCode3());
        
        retMap.put("searchResult", searchResult);
            
        result.setResultObject(retMap);
        result.setResultString("success");

        return result;
    }

    /**
     * 住所情報取得処理サービスを返す。
     * @return 住所情報取得処理サービス
     */
    public SelectAddressService getSelectAddressService() {
        return selectAddressService;
    }

    /**
     * 住所情報取得処理サービスを設定する。
     * @param selectAddressService 住所情報取得処理サービス
     */
    public void setSelectAddressService(
            SelectAddressService selectAddressService) {
        this.selectAddressService = selectAddressService;
    }
}
