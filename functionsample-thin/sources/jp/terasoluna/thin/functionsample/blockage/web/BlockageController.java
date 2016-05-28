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

package jp.terasoluna.thin.functionsample.blockage.web;

import java.util.HashSet;
import java.util.List;

import javax.servlet.ServletRequest;

import jp.terasoluna.fw.web.RequestUtil;

/**
 * 機能網羅サンプルAPの業務閉塞コントローラ
 *
 */
public class BlockageController implements
        jp.terasoluna.fw.web.thin.BlockageController {
    /**
     * チェックしないパス
     */
    private List<String> noCheckPath = null;
    
    /**
     * 業務閉塞しているパス
     */
    private HashSet<String> blockadedPaths = new HashSet<String>();
    
    /**
     * セッションを使わないため、オーバーロードされたメソッドに委譲する
     *
     * @param path
     */
    public void blockade(String path) {
        blockade(path, null);
    }

    /**
     * 指定された、業務を呼び出すパスを閉塞する
     *
     * @param path
     * @param req
     */
    public void blockade(String path, ServletRequest req) {
        synchronized (blockadedPaths){
            blockadedPaths.add(path);
        }
    }

    /**
     * セッションを使わないため、オーバーロードされたメソッドに委譲する
     *
     * @param path
     * @return
     */
    public boolean isBlockaded(String path) {
        return isBlockaded(path, null);
    }

    /**
     * 業務閉塞状態の場合はtrueを返し、そうでない場合、falseを返す
     *
     * @param path
     * @param req
     * @return
     */
    public boolean isBlockaded(String path, ServletRequest req) {
        synchronized (blockadedPaths) {
            if (blockadedPaths.contains(path)) {
                return true;
            }
            return false;
        }
    }

    /**
     * 業務閉塞チェックが必要かどうか判定し、必要ならtrue,必要ないならfalse返す
     *
     * @param req
     * @return
     */
    public boolean isCheckRequired(ServletRequest req) {
        for (String path : noCheckPath) {
            if ((RequestUtil.getPathInfo(req)).equals(path)){
                return false;
            }
        }
        return true;
    }

    /**
     * セッションを使わないため、オーバーロードされたメソッドに委譲する
     *
     * @param path
     */
    public void open(String path) {
        open(path, null);

    }

    /**
     * 指定された、業務を呼び出すパスを開放する
     *
     * @param path
     * @param req
     */
    public void open(String path, ServletRequest req) {
        synchronized (blockadedPaths) {
            blockadedPaths.remove(path);
        }
    }

    /**
     * noCheckPathを取得する。
     * @return noCheckPath
     */
    public List<String> getNoCheckPath() {
        return noCheckPath;
    }

    /**
     * noCheckPathを設定する。
     * @param noCheckPath noCheckPath。
     */
    public void setNoCheckPath(List<String> noCheckPath) {
        this.noCheckPath = noCheckPath;
    }
}