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

package jp.terasoluna.thin.functionsample.download.bean;

import java.io.Serializable;

/**
 * WD-03 ファイルダウンロード機能で使われるパラメータクラス
 * 
 */
public class FileDownLoadMenuBean implements Serializable {

    /**
     * シリアルバージョンID
     */
    private static final long serialVersionUID = 7727768588514745190L;

    /**
     * ファイルパス
     */
    private String filePath = null;

    /**
     * ファイル名
     */
    private String fileName = null;

    /**
     * ファイルサイズ
     */
    private String fileSize = null;

    /**
     * ファイル名を返却する。
     * 
     * @return 保持するファイル名
     */
    public String getFileName() {
        return fileName;
    }

    /**
     * ファイル名を設定する。
     * 
     * @param fileName
     *            ファイル名。
     */
    public void setFileName(String fileName) {
        this.fileName = fileName;
    }

    /**
     * ファイルパスを返却する。
     * 
     * @return 保持するファイルパス
     */
    public String getFilePath() {
        return filePath;
    }

    /**
     * ファイルパスを設定する。
     * 
     * @param filePath
     *            ファイルパス。
     */
    public void setFilePath(String filePath) {
        this.filePath = filePath;
    }

    /**
     * ファイルサイズを返却する。
     * 
     * @return 保持するファイルサイズ
     */

    public String getFileSize() {
        return fileSize;
    }

    /**
     * ファイルサイズを設定する。
     * 
     * @param fileSize
     *            ファイルサイズ。
     */
    public void setFileSize(String fileSize) {
        this.fileSize = fileSize;
    }

}
