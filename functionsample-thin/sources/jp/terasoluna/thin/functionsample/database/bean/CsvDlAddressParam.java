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

package jp.terasoluna.thin.functionsample.database.bean;

import java.io.OutputStream;

/**
 * CSVダウンロード処理用パラメータインタフェース
 * 
 */
public interface CsvDlAddressParam {
    /**
     * リクエストヘッダ取得
     * @param name
     * @return
     */
    String getHeader(String name);

    /**
     * レスポンスの文字エンコーディングを設定
     * @param charset
     */
    void setCharacterEncoding(java.lang.String charset);

    /**
     * コンテントタイプ設定
     * @param type
     */
    void setContentType(String type);

    /**
     * メッセージボディ部分の長さを設定
     * @param len
     */
    void setContentLength(int len);

    /**
     * ヘッダ追加
     * @param name
     * @param value
     */
    void addHeader(String name, String value);

    /**
     * OutputStream取得
     * @return
     */
    OutputStream getOutputStream();
}
