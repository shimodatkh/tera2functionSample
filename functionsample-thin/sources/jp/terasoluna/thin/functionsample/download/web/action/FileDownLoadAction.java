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

import java.io.File;
import java.io.FileNotFoundException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;
import org.apache.struts.actions.DownloadAction;

import jp.terasoluna.thin.functionsample.authentication.web.FunctionAuthenticationController;
import jp.terasoluna.fw.web.struts.form.DynaValidatorActionFormEx;

/**
 * ファイルダウンロードアクション
 * 
 */
public class FileDownLoadAction extends DownloadAction {

    /**
     * ログクラス。
     */
    private Log log = LogFactory.getLog(FunctionAuthenticationController.class);

    /**
     * ファイル名。
     */
    protected static final String FILE_NAME = "fileName";

    /**
     * ファイルパス。
     */
    protected static final String FILE_PATH = "filePath";

    /**
     * 失敗フラグ。
     */
    protected static final String FAILURE = "failure";

    /**
     * "Content-disposition"。
     */
    protected static final String CONTENT_DISPOSITION = "Content-disposition";

    /**
     * "Windows-31J"。
     */
    protected static final String WINDOWS_31J = "Windows-31J";

    /**
     * "ISO-8859-1"。
     */
    protected static final String ISO_8859_1 = "ISO-8859-1";

    /**
     * "/"。
     */
    protected static final String PATH_FLAG = "/";

    /**
     * コンテントタイプ。
     */
    protected static final String CONTENT_TYPE = "";

    /**
     * ダウンロードファイル前処理
     * 
     * @param mapping
     *            アクションマッピング
     * @param form
     *            アクションフォーム
     * @param req
     *            HTTPリクエスト
     * @param res
     *            HTTPレスポンス
     * @return 遷移先の論理フォワード名。常に <code>failure</code>
     */
    @Override
    public ActionForward execute(ActionMapping mapping, ActionForm form,
            HttpServletRequest request, HttpServletResponse response)
            throws Exception {
        try {
            super.execute(mapping, form, request, response);
            return null;
        } catch (FileNotFoundException e) {
            if (log.isErrorEnabled()) {
                // エラーをログに出力する
                log.error(e.getMessage());
            }
            response.reset();
            return mapping.findForward(FAILURE);
        }

    }

    /**
     * <p>
     * getStreamInfo()の実装例。
     * </p>
     * 
     * @param mapping
     *            アクションマッピング
     * @param form
     *            アクションフォーム
     * @param req
     *            HTTPリクエスト
     * @param res
     *            HTTPレスポンス
     * @return 遷移先の論理フォワード名。常に <code>success</code>
     */
    @Override
    protected StreamInfo getStreamInfo(ActionMapping mapping, ActionForm form,
            HttpServletRequest request, HttpServletResponse response)
            throws Exception {
        // Action Formを取得する
        DynaValidatorActionFormEx formEx = (DynaValidatorActionFormEx) form;
        // ファイル名を取得
        String fileName = (String) formEx.get(FILE_NAME);
        // ファイルパスを取得
        String filePath = (String) formEx.get(FILE_PATH);

        // レスポンスヘッダーの設定
        response.setHeader(CONTENT_DISPOSITION, "attachment; filename="
                + new String(fileName.getBytes(WINDOWS_31J), ISO_8859_1));

        // ダウンロードファイルの生成
        File file = new File(filePath + PATH_FLAG + fileName);

        // FileStreamInfoの返却
        StreamInfo si = new FileStreamInfo(CONTENT_TYPE, file);
        return si;
    }
}
