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

import jp.terasoluna.thin.functionsample.database.bean.DeleteAddressParam;
import jp.terasoluna.thin.functionsample.database.service.DeleteAddressService;
import jp.terasoluna.fw.service.thin.BLogicResult;
import jp.terasoluna.fw.web.struts.actions.AbstractBLogicAction;

/**
 * 住所情報を削除するアクション
 *
 */
public class DeleteAddressAction 
                extends AbstractBLogicAction<DeleteAddressParam> {

    /**
     * 住所削除サービス
     */
    protected DeleteAddressService deleteAddressService = null;

    /**
     * 該当顧客コードの情報を削除する。
     *
     * @param param 顧客コード
     * @return BLogicResult
     * @throws Exception 
     */
    @Override
    public BLogicResult doExecuteBLogic(DeleteAddressParam param) 
                                                throws Exception {

    	BLogicResult result = new BLogicResult();
        
        Map<String, Object> listAddress =
            deleteAddressService.resultDeleteAddress(param.getCustomerCode());
        
        // データベースに住所録データが無い時もそのまま画面に表示する。
        result.setResultObject(listAddress);
        result.setResultString("success");

        return result;
    }

    /**
     * deleteAddressServiceを取得する。
     * @return deleteAddressService
     */
    public DeleteAddressService getDeleteAddressService() {
        return deleteAddressService;
    }

    /**
     * deleteAddressServiceを設定する。
     * @param deleteAddressService deleteAddressService。
     */
    public void setDeleteAddressService(DeleteAddressService deleteAddressService) {
        this.deleteAddressService = deleteAddressService;
    }   
}