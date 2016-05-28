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

package jp.terasoluna.thin.functionsample.downloadblogic.service;

import java.io.File;

import jp.terasoluna.fw.service.thin.BLogic;
import jp.terasoluna.fw.service.thin.BLogicResult;
import jp.terasoluna.fw.web.struts.actions.DownloadFile;
import jp.terasoluna.thin.functionsample.downloadblogic.bean.DownloadFileBLogicInput;

/**
 * ファイルダウンロード処理実装クラス。
 * <p>
 * DownloadFile型を使用してダウンロードする。
 */
public class DownloadFileBLogic implements BLogic<DownloadFileBLogicInput> {

    public BLogicResult execute(DownloadFileBLogicInput param) {

        // ファイル名を取得
        String fileName = param.getFileName();
        // ファイルパスを取得
        String filePath = param.getFilePath();

        // ダウンロードファイルの生成
        File file = new File(new StringBuilder(filePath).append("/").append(
                fileName).toString());

        // ダウンロード対象をDownloadFileに格納する。
        DownloadFile downloadObject = new DownloadFile(fileName, file);

        BLogicResult result = new BLogicResult();
        result.setResultObject(downloadObject);
        result.setResultString("success");

        return result;
    }

}
