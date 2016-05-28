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

package jp.terasoluna.thin.functionsample.upload.bean;

import java.io.Serializable;

import org.apache.struts.upload.FormFile;

/**
 * ＤＢコードリストを登録する機能で使われるパラメータクラス
 * 
 */
public class TupdownloadVO implements Serializable {

    /**
     * シリアルバージョンID
     */
    private static final long serialVersionUID = 4552157371398919631L;

    /**
     * アップロードファイル。
     */
    private FormFile fileup = null;

    /**
     * アップロードファイル名。
     */
    private String fileName = null;

    /**
     * アップロードファイルパス。
     */
    private String filePath = null;

    /**
     * アップロードファイルサイズ。
     */
    private String fileSize = null;

    /**
     * アップロードファイルID。
     */
    private String fileId = null;

    /**
     * アップロードファイル名オブジェクト。
     */
    private FormFile[] listFile = null;

    /**
     * アップロードファイル名オブジェクト。
     */
    private String[] listFileName = null;

    /**
     * アップロードファイルサイズオブジェクト。
     */
    private String[] listFileSize = null;

    /**
     * アップロードファイルパスオブジェクト。
     */
    private String[] listFilePath = null;

    /**
     * アップロードファイルIDを返却する。
     * 
     * @return 保持するアップロードファイルID
     */

    public String getFileId() {
        return fileId;
    }

    /**
     * アップロードファイルIDを設定する。
     * 
     * @param fileId
     *            アップロードファイルID。
     */
    public void setFileId(String fileId) {
        this.fileId = fileId;
    }

    /**
     * アップロードファイル名を返却する。
     * 
     * @return 保持するアップロードファイル名
     */

    public String getFileName() {
        return fileName;
    }

    /**
     * アップロードファイル名を設定する。
     * 
     * @param fileName
     *            アップロードファイル名。
     */
    public void setFileName(String fileName) {
        this.fileName = fileName;
    }

    /**
     * アップロードファイルパスを返却する。
     * 
     * @return 保持するアップロードファイルパス
     */

    public String getFilePath() {
        return filePath;
    }

    /**
     * アップロードファイルパスを設定する。
     * 
     * @param filePath
     *            アップロードファイルパス。
     */
    public void setFilePath(String filePath) {
        this.filePath = filePath;
    }

    /**
     * アップロードファイルパスを返却する。
     * 
     * @return 保持するアップロードファイルパス
     */

    public FormFile getFileup() {
        return fileup;
    }

    /**
     * アップロードファイルパスを設定する。
     * 
     * @param fileup
     *            アップロードファイルパス。
     */
    public void setFileup(FormFile fileup) {
        this.fileup = fileup;
    }

    /**
     * アップロードファイルオブジェクトを返却する。
     * 
     * @return 保持するアップロードファイルオブジェクト
     */

    public FormFile[] getListFile() {
        return listFile;
    }

    /**
     * アップロードファイルオブジェクトを設定する。
     * 
     * @param listFile
     *            アップロードファイルオブジェクト。
     */
    public void setListFile(FormFile[] listFile) {
        this.listFile = listFile;
    }

    /**
     * アップロードファイル名オブジェクトを返却する。
     * 
     * @return 保持するアップロードファイル名オブジェクト
     */

    public String[] getListFileName() {
        return listFileName;
    }

    /**
     * アップロードファイル名オブジェクトを設定する。
     * 
     * @param listFileName
     *            アップロードファイル名オブジェクト。
     */
    public void setListFileName(String[] listFileName) {
        this.listFileName = listFileName;
    }

    /**
     * アップロードファイルパスオブジェクトを返却する。
     * 
     * @return 保持するアップロードファイルパスオブジェクト
     */

    public String[] getListFilePath() {
        return listFilePath;
    }

    /**
     * アップロードファイルパスオブジェクトを設定する。
     * 
     * @param listFilePath
     *            アップロードファイルパスオブジェクト。
     */
    public void setListFilePath(String[] listFilePath) {
        this.listFilePath = listFilePath;
    }

    /**
     * <p>
     * ファイルを設定する。
     * </p>
     * 
     * @param index
     *            インデックス
     * @param infoFile
     *            ファイル
     */
    public void setIndexFile(int index, FormFile infoFile) {
        this.listFile[index] = infoFile;
    }

    /**
     * <p>
     * ファイルを取得する。
     * </p>
     * 
     * @param index
     *            インデックス
     * @return ファイル
     */
    public FormFile getIndexFile(int index) {
        return listFile[index];
    }

    /**
     * アップロードファイルサイズを返却する。
     * @return 保持するアップロードファイルサイズ
     */
    
    public String getFileSize() {
        return fileSize;
    }

    /**
     * アップロードファイルサイズを設定する。
     * 
     * @param fileSize
     *            アップロードファイルサイズ。
     */
    public void setFileSize(String fileSize) {
        this.fileSize = fileSize;
    }

    /**
     * アップロードファイルサイズオブジェクトを返却する。
     * @return 保持するアップロードファイルサイズオブジェクト
     */
    
    public String[] getListFileSize() {
        return listFileSize;
    }

    /**
     * アップロードファイルサイズオブジェクトを設定する。
     * @param listFileSize アップロードファイルサイズオブジェクト。
     */
    public void setListFileSize(String[] listFileSize) {
        this.listFileSize = listFileSize;
    }

}
