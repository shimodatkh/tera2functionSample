/*
 * Copyright (c) 2009 NTT DATA Corporation
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

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import jp.terasoluna.fw.web.struts.actions.ActionEx;
import jp.terasoluna.thin.functionsample.database.bean.CsvDlAddressParam;
import jp.terasoluna.thin.functionsample.database.bean.CsvDlAddressParamImpl;
import jp.terasoluna.thin.functionsample.database.service.ResultCsvDlAddressService;

import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

/**
 * CSVダウンロード処理を行うアクションクラス。
 * 
 */
public class ResultCsvDlAddressAction extends ActionEx {

    /**
     * CSVダウンロード処理サービス
     */
    protected ResultCsvDlAddressService resultCsvDlAddressService = null;

    /**
     * resultCsvDlAddressServiceを取得する。
     * @return resultCsvDlAddressService
     */
    public ResultCsvDlAddressService getResultCsvDlAddressService() {
        return resultCsvDlAddressService;
    }

    /**
     * resultCsvDlAddressServiceを設定する。
     * @param resultCsvDlAddressService resultCsvDlAddressService。
     */
    public void setResultCsvDlAddressService(
            ResultCsvDlAddressService resultCsvDlAddressService) {
        this.resultCsvDlAddressService = resultCsvDlAddressService;
    }

    /**
     * CSVダウンロード処理を行う。
     *
     * @param mapping このアクションに紐づいたアクションマッピング
     * @param form アクションフォーム
     * @param request リクエスト情報
     * @param response レスポンス情報
     * @return 遷移先情報
     * @throws Exception 予期しない例外
     */
    @Override
    public ActionForward doExecute(ActionMapping mapping, ActionForm form,
            HttpServletRequest request, HttpServletResponse response)
            throws Exception {
        CsvDlAddressParam param = new CsvDlAddressParamImpl(request, response);

        // CSVダウンロード処理
        resultCsvDlAddressService.csvDownload(param);

        // レスポンスはCSVダウンロード処理で出力済のためnull
        return null;
    }
}