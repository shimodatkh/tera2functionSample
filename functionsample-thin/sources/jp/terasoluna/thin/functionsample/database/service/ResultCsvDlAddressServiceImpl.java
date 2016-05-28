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

package jp.terasoluna.thin.functionsample.database.service;

import java.io.BufferedWriter;
import java.io.IOException;
import java.io.OutputStreamWriter;

import jp.terasoluna.fw.dao.QueryRowHandleDAO;
import jp.terasoluna.thin.functionsample.database.bean.CsvDlAddressParam;

import org.apache.commons.lang.StringUtils;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;

/**
 * CSVダウンロード処理を行うサービス。
 * 
 */
public class ResultCsvDlAddressServiceImpl implements ResultCsvDlAddressService {

    /**
     * Log.
     */
    private static Log log = LogFactory
            .getLog(ResultCsvDlAddressServiceImpl.class);

    /**
     * ファイル保存ダイアログ。
     */
    private static final String DISPOSITION_TYPE_ATTACHMENT = "attachment;";

    /**
     * CSVダウンロードを1行ずつ処理するハンドラ。
     */
    private CsvDownloadDataRowHandler csvDownloadDataRowHandler = null;

    /**
     * QueryRowHandleDAO。
     */
    private QueryRowHandleDAO queryRowHandleDAO = null;

    /**
     * QueryRowHandleDAOを設定する。
     * @param queryRowHandleDAO 設定する queryRowHandleDAO
     */
    public void setQueryRowHandleDAO(QueryRowHandleDAO queryRowHandleDAO) {
        this.queryRowHandleDAO = queryRowHandleDAO;
    }

    /**
     * CSVダウンロードを1行ずつ処理するハンドラを設定する。
     * @param csvDownloadDataRowHandler 設定する csvDownloadDataRowHandler
     */
    public void setCsvDownloadDataRowHandler(
            CsvDownloadDataRowHandler csvDownloadDataRowHandler) {
        this.csvDownloadDataRowHandler = csvDownloadDataRowHandler;
    }

    /**
     * CSVダウンロード処理
     * @param CsvDlAddressParam param
     */
    public void csvDownload(CsvDlAddressParam param) {

        // オリジナルファイル名
        String fileName = "address.csv";

        // User-Agent取得
        String userAgent = param.getHeader("User-Agent");

        // ダウンロードに必要なヘッダを設定
        param.addHeader("Content-Disposition", DISPOSITION_TYPE_ATTACHMENT
                + " filename=" + fileName);
        if (StringUtils.contains(userAgent, "MSIE")) {
            // IE用ヘッダ出力処理
        } else {
            // その他ブラウザ用ヘッダ出力処理
        }

        // Writer生成
        BufferedWriter writer = null;
        writer = new BufferedWriter(new OutputStreamWriter(param
                .getOutputStream()));

        // WriterをCsvDownloadDataRowHandlerに設定
        csvDownloadDataRowHandler.setWriter(writer);

        // SQL実行
        this.queryRowHandleDAO.executeWithRowHandler(
                "database.selectListAddress", null, csvDownloadDataRowHandler);

        // 後処理
        try {
            writer.flush();
            writer.close();
        } catch (IOException e) {
            e.printStackTrace();
        }

        if (log.isDebugEnabled()) {
            log.debug("END");
        }

    }

}
