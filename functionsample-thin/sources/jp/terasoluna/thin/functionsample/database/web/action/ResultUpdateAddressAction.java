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
import jp.terasoluna.thin.functionsample.database.service.ResultUpdateAddressService;
import jp.terasoluna.fw.service.thin.BLogicResult;
import jp.terasoluna.fw.web.struts.actions.AbstractBLogicAction;

/**
 * 住所情報を変更するアクション
 *
 */
public class ResultUpdateAddressAction extends
        AbstractBLogicAction<AddressTableVO> {
    
    /**
     * 住所更新サービス
     */
    protected ResultUpdateAddressService resultUpdateAddressService = null;
    
    /**
     * 
     * １．該当顧客コードが登録されているかどうかチェックする。
     * ２．該当顧客コードが無ければ、エラーを設定し、エラー画面を表示する。
     * ３．該当顧客コードがあれば、住所情報を変更する。
     *
     * @param param AddressTableVO
     * @return BLogicResult
     * @throws Exception
     */
    @Override
    public BLogicResult doExecuteBLogic(AddressTableVO param) 
                                        throws Exception {
        
    	BLogicResult result = new BLogicResult();
        Map<String, Object> listAddress;
        
        listAddress = resultUpdateAddressService.updateAddress(param);
        
        // データベースに住所録データが無い時もそのまま画面に表示する。
        result.setResultObject(listAddress);
        result.setResultString("success");

        return result;
    }

    /**
     * resultUpdateAddressServiceを取得する。
     * @return resultUpdateAddressService
     */
    public ResultUpdateAddressService getResultUpdateAddressService() {
        return resultUpdateAddressService;
    }

    /**
     * resultUpdateAddressServiceを設定する。
     * @param resultUpdateAddressService resultUpdateAddressService。
     */
    public void setResultUpdateAddressService(
            ResultUpdateAddressService resultUpdateAddressService) {
        this.resultUpdateAddressService = resultUpdateAddressService;
    }
}