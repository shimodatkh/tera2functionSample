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

import java.io.IOException;
import java.io.OutputStream;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;

/**
 * CSVダウンロード処理用パラメータ
 * 
 */
public class CsvDlAddressParamImpl implements CsvDlAddressParam {

    /**
     * ログインスタンス
     */
    private static Log log = LogFactory.getLog(CsvDlAddressParamImpl.class);

    /**
     * HttpServletResponse
     */
    private HttpServletRequest request = null;

    /**
     * HttpServletResponse
     */
    private HttpServletResponse response = null;

    /**
     * コンストラクタ
     * @param HttpServletRequestを設定
     * @param HttpServletResponseを設定
     */
    public CsvDlAddressParamImpl(HttpServletRequest request,
            HttpServletResponse response) {
        this.request = request;
        this.response = response;
    }

    /**
     * ヘッダ追加
     * @param name
     * @param value
     */
    public void addHeader(String name, String value) {
        this.response.addHeader(name, value);
    }

    /**
     * リクエストヘッダ取得
     * @param name
     * @return
     */
    public String getHeader(String name) {
        return this.request.getHeader(name);
    }

    /**
     * OutputStream取得
     * @return
     */
    public OutputStream getOutputStream() {
        try {
            return this.response.getOutputStream();
        } catch (IOException e) {
            log.error("OutputStream Error.", e);
        }
        return null;
    }

    /**
     * レスポンスの文字エンコーディングを設定
     * @param charset
     */
    public void setCharacterEncoding(String charset) {
        this.response.setCharacterEncoding(charset);
    }

    /**
     * メッセージボディ部分の長さを設定
     * @param len
     */
    public void setContentLength(int len) {
        this.response.setContentLength(len);
    }

    /**
     * コンテントタイプ設定
     * @param type
     */
    public void setContentType(String type) {
        this.response.setContentType(type);
    }

}
