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

import jp.terasoluna.thin.functionsample.blockage.bean.BlockageParam;
import jp.terasoluna.thin.functionsample.blockage.service.BlockageService;
import jp.terasoluna.fw.service.thin.BLogicResult;
import jp.terasoluna.fw.web.struts.actions.AbstractBLogicAction;

/**
 * 選択した業務を閉塞又は、開放するアクション
 *
 */
public class BlockageAction extends AbstractBLogicAction<BlockageParam> {
    /**
     * 業務リストと閉塞状態を取得するサービス
     */
    protected BlockageService blockageService = null;
    
    /**
     * blockageServiceを取得する。
     * @return blockageService
     */
    public BlockageService getBlockageService() {
        return blockageService;
    }

    /**
     * blockageServiceを設定する。
     * @param blockageService blockageService。
     */
    public void setBlockageService(BlockageService blockageService) {
        this.blockageService = blockageService;
    }

    /**
     * 業務を閉塞又は、開放する
     *
     * @param param 閉塞チェック状態
     * @return BLogicResult
     * @throws Exception
     */
    @Override
    public BLogicResult doExecuteBLogic(BlockageParam param) throws Exception {
        BLogicResult result = new BLogicResult();
        // 閉塞処理を行う
        Map<String, Object> retMap = blockageService.blockage(param);
        
        result.setResultObject(retMap);
        result.setResultString("success");
        return result;
    }

}
