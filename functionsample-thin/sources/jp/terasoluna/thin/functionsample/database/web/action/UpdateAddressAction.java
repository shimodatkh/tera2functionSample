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

import java.util.HashMap;
import java.util.Map;

import jp.terasoluna.thin.functionsample.database.bean.AddressTableVO;
import jp.terasoluna.thin.functionsample.database.bean.UpdateAddressParam;
import jp.terasoluna.thin.functionsample.database.service.UpdateAddressService;
import jp.terasoluna.fw.service.thin.BLogicResult;
import jp.terasoluna.fw.web.struts.actions.AbstractBLogicAction;

/**
 * 住所情報を更新するアクション
 *
 */
public class UpdateAddressAction 
                    extends AbstractBLogicAction<UpdateAddressParam> {
    
    /**
     * 更新住所取得サービス
     */
    protected UpdateAddressService updateAddressService = null;

    /**
     * １．該当顧客コードが登録されているかどうかチェック
     * ２．登録されていなければ、エラーを投げる。
     * ３．登録されていれば、更新処理を行う。
     * 
     * @param param UpdateAddressParam
     * @return BLogicResult
     * @throws Exception
     */
    @Override
    public BLogicResult doExecuteBLogic(UpdateAddressParam param) 
                                                        throws Exception {

    	BLogicResult result = new BLogicResult();
        AddressTableVO address = updateAddressService.getAddress(param);
        
        Map<String, Object> retMap = new HashMap<String, Object>();
        retMap.put("addressData", address);
        
        result.setResultObject(retMap);
        result.setResultString("success");

        return result;
    }

    /**
     * updateAddressServiceを取得する。
     * @return updateAddressService
     */
    public UpdateAddressService getUpdateAddressService() {
        return updateAddressService;
    }

    /**
     * updateAddressServiceを設定する。
     * @param updateAddressService updateAddressService。
     */
    public void setUpdateAddressService(UpdateAddressService updateAddressService) {
        this.updateAddressService = updateAddressService;
    }
}
