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

package jp.terasoluna.thin.functionsample.download.web.action;

import java.util.Map;

import jp.terasoluna.thin.functionsample.download.service.FileDownLoadMenuService;
import jp.terasoluna.fw.service.thin.BLogicResult;
import jp.terasoluna.fw.web.struts.actions.AbstractBLogicAction;

/**
 * ダウンロードファイルの情報を取得するアクション
 * 
 */
public class FileDownLoadMenuAction extends
        AbstractBLogicAction {

    /**
     * 実行するビジネスロジッククラス。
     */
    private FileDownLoadMenuService fileDownLoadMenuService = null;

    /**
     * ビジネスロジックを返却する。
     * 
     * @return 保持するビジネスロジック
     */
    public FileDownLoadMenuService getFileDownLoadMenuService() {
        return fileDownLoadMenuService;
    }

    /**
     * ビジネスロジックを設定する。
     * 
     * @param fileDownLoadMenuService
     *            ビジネスロジック
     */
    public void setFileDownLoadMenuService(
            FileDownLoadMenuService fileDownLoadMenuService) {
        this.fileDownLoadMenuService = fileDownLoadMenuService;
    }

    /**
     * ビジネスロジックを実行し、一覧情報を取得、返却する。
     * 
     * @param map
     *            一覧情報取得のための変数を保持したMap
     * @return 一覧情報を保持したBLogicResult
     * @throws Exception
     *             例外
     */
    @Override
    public BLogicResult doExecuteBLogic(Object arg0)
            throws Exception {
        // ビジネスロジックの実行、結果の取得
        Map<String, Object> retMap = fileDownLoadMenuService.getFileList(arg0);

        // BLogicResultの生成、結果の設定
        BLogicResult result = new BLogicResult();

        result.setResultString("success");
        result.setResultObject(retMap);
        return result;
    }

}