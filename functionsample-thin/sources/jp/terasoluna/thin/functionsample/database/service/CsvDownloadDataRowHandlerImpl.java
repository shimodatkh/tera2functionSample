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

import jp.terasoluna.thin.functionsample.database.bean.AddressTableVO;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;

/**
 * CSVダウンロードを1行ずつ処理するハンドラ
 */
public class CsvDownloadDataRowHandlerImpl implements CsvDownloadDataRowHandler {

    /**
     * Log.
     */
    private static Log log = LogFactory
            .getLog(CsvDownloadDataRowHandlerImpl.class);

    /**
     * BufferedWriter。
     */
    private BufferedWriter writer;

    /**
     * 1行毎に呼ばれるメソッド
     *
     * @param valueObject 1行のデータ
     * @see jp.terasoluna.fw.dao.event.DataRowHandler#handleRow(java.lang.Object)
     */
    public void handleRow(Object valueObject) {
        AddressTableVO vo = null;

        if (valueObject instanceof AddressTableVO) {
            vo = (AddressTableVO) valueObject;

            if (log.isDebugEnabled()) {
                log.debug("The data of one line is output. CustomerCode:"
                        + vo.getCustomerCode());
            }

            try {
                writer.write(vo.getCustomerCode());
                writer.write(",");
                writer.write(vo.getCustomerName());
                writer.write(",");
                writer.write(vo.getCustomerTel());
                writer.write(",");
                writer.write(vo.getCustomerAddress());
                writer.write(",");
                writer.write(vo.getPostCode());
                writer.newLine();
            } catch (IOException e) {
                log.debug("IOException", e);
            }
        }
    }

    /**
     * BufferedWriterを設定する
     * @param writer
     * @see jp.terasoluna.thin.functionsample.database.service.CsvDownloadDataRowHandler#setWriter(java.io.BufferedWriter)
     */
    public void setWriter(BufferedWriter writer) {
        this.writer = writer;
    }

}
