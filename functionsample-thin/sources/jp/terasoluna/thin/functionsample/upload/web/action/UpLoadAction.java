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

package jp.terasoluna.thin.functionsample.upload.web.action;

import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.io.OutputStream;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts.Globals;
import org.apache.struts.upload.FormFile;
import org.apache.struts.upload.MultipartRequestHandler;

import jp.terasoluna.fw.service.thin.BLogicMessage;
import jp.terasoluna.fw.service.thin.BLogicMessages;
import jp.terasoluna.fw.service.thin.BLogicResult;
import jp.terasoluna.fw.web.struts.actions.AbstractBLogicAction;
import jp.terasoluna.thin.functionsample.upload.bean.TupdownloadVO;
import jp.terasoluna.thin.functionsample.upload.service.InsertDBUpLoadService;
import jp.terasoluna.fw.util.PropertyUtil;

/**
 * ファイルアップロードするアクション
 * 
 */
public class UpLoadAction extends AbstractBLogicAction<TupdownloadVO> {

    /**
     * サーバでアップロードファイルを保存するパス。
     */
    protected static final String FILE_UPLOAD_PATH = "upload.00001.path";

    /**
     * HTTPリクエストサイズ上限。
     */
    protected static final String REQEST_MAX_SIZE = "upload.00002.maxsizerequest";

    /**
     * アップロードファイルサイズ上限。
     */
    protected static final String FILE_MAX_SIZE = "upload.00003.maxsizefile";

    /**
     * エラーメッセージ。 ファイルアップロード機能で変数データはプロパティファイルから取得中にエラーが発生しました。<br>
     */
    protected static final String FILE_UPLOAD_ERROR_MSG01 = "info.UC37.00001";

    /**
     * エラーメッセージ。<br>
     * HTTPリクエストサイズはこの上限を超過する。<br>
     */
    protected static final String FILE_UPLOAD_ERROR_MSG02 = "info.UC37.00002";

    /**
     * エラーメッセージ。<br>
     * アップロードファイル{0}のサイズは上限を超過する。<br>
     */
    protected static final String FILE_UPLOAD_ERROR_MSG03 = "info.UC37.00003";

    /**
     * エラーメッセージ。<br>
     * ファイルアップロード失敗しました。<br>
     */
    protected static final String FILE_UPLOAD_ERROR_MSG04 = "info.UC37.00004";

    // ＤＢにファイルアップロード情報を登録する機能のインタフェース
    protected InsertDBUpLoadService insertDBUpLoadService = null;

    private String sizeOver = "success";

    private String overFileName = "";

    /**
     * <p>
     * ファイルアップロードするアクション
     * </p>
     * 
     * @param mapping
     *            アクションマッピング
     * @param form
     *            アクションフォーム
     * @param request
     *            HTTPリクエスト
     * @param response
     *            HTTPレスポンス
     * @return 遷移先の論理フォワード名。常に <code>success</code>
     */

    @Override
    protected void preDoExecuteBLogic(HttpServletRequest request,
            HttpServletResponse response, TupdownloadVO tupdownloadVO)
            throws Exception {

        // ファイルアップロード成功フラグ
        boolean upLoadFlag = false;
        // サーバでアップロードファイルを保存するパス
        String filePath = (String) PropertyUtil.getProperty(FILE_UPLOAD_PATH);
        // HTTPリクエストサイズ上限を取得
        String maxSizeRequestStr = (String) PropertyUtil
                .getProperty(REQEST_MAX_SIZE);
        // アップロードファイルサイズ上限を取得
        String maxSizeFileStr = (String) PropertyUtil
                .getProperty(FILE_MAX_SIZE);
        // プロパティファイルで変数がないの場合、終了
        if (filePath == null || "".equals(filePath)
                || maxSizeRequestStr == null || "".equals(maxSizeRequestStr)
                || maxSizeFileStr == null || "".equals(maxSizeFileStr)) {
            // ファイルアップロード機能で変数データはプロパティファイルから
            // 取得中にエラーが発生しました。
            sizeOver = "";
            // response.getStatus();
            return;
        } else {
            // パス存在チェック、存在しない場合、そのパスを作る
            pathCheck(filePath);
        }

        // アップロードファイルサイズ上限を取得
        int maxSizeFile = Integer.parseInt(maxSizeFileStr);

        // Struts設定ファイル属性の指定すれば、HTTPリクエストサイズはこの上限を超過する時、
        // org.apache.struts.upload.CommonsMultipartRequestHandler.javaで変数をセットした
        // request.setAttribute(
        // MultipartRequestHandler.ATTRIBUTE_MAX_LENGTH_EXCEEDED,
        // Boolean.TRUE);
        Object maxLengthExceededBl = request
                .getAttribute(MultipartRequestHandler.ATTRIBUTE_MAX_LENGTH_EXCEEDED);
        // この変数があれば、HTTPリクエストサイズはこの上限を超過する
        if (maxLengthExceededBl != null) {
            sizeOver = REQEST_MAX_SIZE;
            return;
        }

        // ファイルサイズチェック処理
        // アップロードファイルの取得
        FormFile fileup = tupdownloadVO.getFileup();
        if (fileup != null) {
            String fileName = fileup.getFileName();
            int fileSize = fileup.getFileSize();
            if (fileName != null && !"".equals(fileName)) {
                if (fileSize < 0 || fileSize > maxSizeFile) {
                    sizeOver = FILE_MAX_SIZE;
                    overFileName = fileName;
                    fileup.destroy();
                    return;
                }
            }
        }
        for (int i = 0; i < 3; i++) {
            // アップロードファイルの取得
            FormFile fileList = tupdownloadVO.getIndexFile(i);
            // 添付ファイルが空白でない場合
            if (fileList != null) {
                // ファイル名を取得
                String fileNameList = fileList.getFileName();
                // ファイルサイズを取得
                int fileSizeList = fileList.getFileSize();
                if (fileNameList != null && !"".equals(fileNameList)) {
                    if (fileSizeList < 0 || fileSizeList > maxSizeFile) {
                        // erro処理
                        sizeOver = FILE_MAX_SIZE;
                        overFileName = fileNameList;
                        fileList.destroy();
                        return;
                    }
                }
            }
            fileList.destroy();
        }

        // 単ファイルアップロード機能処理
        // 添付ファイルが空白でない場合
        if (fileup != null) {
            // ファイル名を取得
            String fileName = fileup.getFileName();
            // ファイルサイズを取得
            int fileSize = fileup.getFileSize();
            if (fileName != null && !"".equals(fileName)) {
                if (0 <= fileSize && fileSize <= maxSizeFile) {
                    // getInputStreamメソッドを使用し、入力ストリームを取得
                    InputStream is = fileup.getInputStream();
                    // 入力ストリームをバッファリング
                    BufferedInputStream inBuffer = new BufferedInputStream(is);
                    // ファイルのアップロード先を指定して、出力ストリームを生成
                    FileOutputStream fos = new FileOutputStream(filePath + "/"
                        	+ fileup.getFileName());
                    // 出力ストリームをバッファリング
                    BufferedOutputStream outBuffer = new BufferedOutputStream(
                        	fos);
                    // 入力データがなくなるまで入出力処理を実行
                    int data = 0;
                    while ((data = inBuffer.read()) != -1) {
                        outBuffer.write(data);
                    }

                    // 解放
                    outBuffer.flush();
                    inBuffer.close();
                    outBuffer.close();
                    // 一時領域のアップロードデータを削除
                    fileup.destroy();
                    upLoadFlag = true;
                    tupdownloadVO.setFileName(fileName);
                    tupdownloadVO.setFilePath(filePath);
                    String fileSizeStr = sizeToString(fileSize);
                    tupdownloadVO.setFileSize(fileSizeStr);
                }
            }

        }

        // 複数ファイルアップロード機能処理
        // 整理した名とパス初期化
        String[] listFileName = new String[3];
        String[] listFilePath = new String[3];
        String[] listFileSize = new String[3];
        // 整理した順番
        int j = 0;
        for (int i = 0; i < 3; i++) {
            // アップロードファイルの取得
            FormFile fileList = tupdownloadVO.getIndexFile(i);
            // 添付ファイルが空白でない場合
            if (fileList != null) {
                // ファイル名を取得
                String fileNameList = fileList.getFileName();
                // ファイルサイズを取得
                int fileSizeList = fileList.getFileSize();
                if (fileNameList != null && !"".equals(fileNameList)) {
                    if (0 <= fileSizeList && fileSizeList <= maxSizeFile) {
                        InputStream streamList = fileList.getInputStream();// ファイル読み込み
                        // アップロードファイル linuxの場合UploadFilesの"\\"→"/"
                        OutputStream bosList = new FileOutputStream(filePath
                        		+ "/" + fileList.getFileName());

                        request.setAttribute("fileName", filePath + "/"
                        		+ fileList.getFileName());
                        int bytesRead = 0;
                        byte[] buffer = new byte[8192];
                        // ファイルアップロード
                        while ((bytesRead = streamList.read(buffer, 0, 8192)) != -1) {
                        	bosList.write(buffer, 0, bytesRead);
                        }
                        // ファイル名を整理する
                        listFileName[j] = fileNameList;
                        // ファイルサイズを整理する
                        listFileSize[j] = sizeToString(fileSizeList);
                        // ファイルパスを整理する
                        listFilePath[j] = filePath;
                        j++;
                        // 解放
                        bosList.close();
                        streamList.close();
                        fileList.destroy();
                        upLoadFlag = true;
                    }
                }

            }
        }
        // 整理したファイル名とパスVOにセットする
        tupdownloadVO.setListFileName(listFileName);
        tupdownloadVO.setListFileSize(listFileSize);
        tupdownloadVO.setListFilePath(listFilePath);
        if (upLoadFlag) {
            sizeOver = "success";
        } else {
            sizeOver = "false";
        }
    }

    /**
     * ＤＢファイルアップロードテーブルに新規ファイルアップロード情報を登録する。
     * 
     * @param tupdownloadVO
     *            ＤＢコードリストを登録する機能で使われるパラメータクラス
     * @return ファイルアップロード機能処理結果
     * @throws Exception
     */
    @Override
    public BLogicResult doExecuteBLogic(TupdownloadVO tupdownloadVO)
            throws Exception {
        // DB登録用VO準備する
        TupdownloadVO tupdownloadVONew = new TupdownloadVO();
        // 配列ファイル名
        String[] listFileName = tupdownloadVO.getListFileName();
        // 配列ファイルパス
        String[] listFilePath = tupdownloadVO.getListFilePath();
        String[] listFileSize = tupdownloadVO.getListFileSize();
        // BL Result
        BLogicResult result = new BLogicResult();
        // 単ファイルアップロード情報処理
        String fileName = tupdownloadVO.getFileName();
        String filePath = tupdownloadVO.getFilePath();
        String fileSize = tupdownloadVO.getFileSize();
        // テーブル項目名fileID
        long fileID = System.currentTimeMillis();
        // 単ファイルアップロード情報登録処理
        if (fileName != null && !"".equals(fileName) && filePath != null
                && !"".equals(filePath) && fileSize != null
                && !"".equals(fileSize)) {
            tupdownloadVO.setFileId(Long.toString(fileID + 0));
            insertDBUpLoadService.insertDBUpLoad(tupdownloadVO);
        }
        // 複数ファイルアップロード情報登録処理
        for (int i = 0; i < 3; i++) {
            tupdownloadVONew.setFileId(Long.toString(fileID + i + 1));
            tupdownloadVONew.setFileName(listFileName[i]);
            tupdownloadVONew.setFilePath(listFilePath[i]);
            tupdownloadVONew.setFileSize(listFileSize[i]);
            if (listFileName[i] != null && !"".equals(listFileName[i])
                    && listFilePath[i] != null && !"".equals(listFilePath[i])) {
                insertDBUpLoadService.insertDBUpLoad(tupdownloadVONew);
            }
        }

        // BL Resultをセット処理
        result.setResultObject(tupdownloadVO);
        if (sizeOver.equals("success")) {
            result.setResultString("success");
        } else {
            // エラーメッセージを生成
            BLogicMessages errors = result.getErrors();
            if (errors == null) {
                errors = new BLogicMessages();
            }
            // プロパティファイルで変数がない
            if (sizeOver.equals("")) {
                errors.add(Globals.ERROR_KEY, new BLogicMessage(
                        FILE_UPLOAD_ERROR_MSG01));
                result.setErrors(errors);
            }
            // HTTPリクエストサイズはこの上限を超過する
            if (sizeOver.equals(REQEST_MAX_SIZE)) {
                errors.add(Globals.ERROR_KEY, new BLogicMessage(
                        FILE_UPLOAD_ERROR_MSG02));
                result.setErrors(errors);
            }
            // アップロードファイルサイズは上限を超過する
            if (sizeOver.equals(FILE_MAX_SIZE)) {
                errors.add(Globals.ERROR_KEY, new BLogicMessage(
                        FILE_UPLOAD_ERROR_MSG03, overFileName));
                result.setErrors(errors);
            }
            // エラー発生した
            if (sizeOver.equals("false")) {
                errors.add(Globals.ERROR_KEY, new BLogicMessage(
                        FILE_UPLOAD_ERROR_MSG04));
                result.setErrors(errors);
            }
            result.setResultString("false");
        }
        return result;
    }

    /**
     * パス存在チェック<br>
     * 存在しない場合、そのパスを作る<br>
     * 
     * @param path
     *            String パス
     * 
     * @return
     */
    private void pathCheck(String path) {
        File pfile = null;
        pfile = new File(path);
        if (!pfile.exists()) {
            pfile.mkdirs();
        }
    }

    /**
     * サイズを表示方式に整理する<br>
     * 1000000以上の場合、**M<br>
     * 1000   以上の場合、**K<br>
     * 
     * @param fileSize
     *            int
     * 
     * @return
     */
    private String sizeToString(int fileSize) {
        String fileSizeStr = "";
        if (fileSize / 1000000 > 0) {
            fileSizeStr = Integer.toString(fileSize / 1000000).concat("M");
        } else if (fileSize / 1000 > 0) {
            fileSizeStr = Integer.toString(fileSize / 1000).concat("K");
        } else {
            fileSizeStr = Integer.toString(fileSize);
        }
        return fileSizeStr;
    }

    /**
     * registDBUpLoadServiceを取得する。
     * 
     * @return registDBUpLoadService
     */
    public InsertDBUpLoadService getInsertDBUpLoadService() {
        return insertDBUpLoadService;
    }

    /**
     * registDBUpLoadServiceを設定する。
     * 
     * @param registDBUpLoadService
     *            registDBUpLoadService。
     */
    public void setInsertDBUpLoadService(
            InsertDBUpLoadService insertDBUpLoadService) {
        this.insertDBUpLoadService = insertDBUpLoadService;
    }

}
