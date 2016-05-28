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

package jp.terasoluna.thin.functionsample.serverblockage.web;

import java.util.Date;
import java.util.List;

/**
 * 機能網羅サンプルAPのサーバ閉塞コントローラ
 *
 * @version 2006/02/28
 */
public class ServerBlockageController implements
        jp.terasoluna.fw.web.thin.ServerBlockageController {

    /**
     * 開放状態
     */
    public static final int OPEN = 0;
    
    /**
     * 予閉塞状態
     */
    public static final int PRE_BLOCKADED = 1;
    
    /**
     * 閉塞状態
     */
    public static final int BLOCKADED = 2;
    
    /**
     * サーバ閉塞していても通すパス
     */
    private List<String> alwaysOpenPaths = null;
    
    /**
     * サーバ閉塞状態かどうかを示すフラグ
     */
    private int state = OPEN;
    
    /**
     * 閉塞状態に遷移する時間
     */
    private Date blockadingDate = null;
    
    /**
     * サーバ閉塞する
     *
     */
    public void blockade() {
        synchronized (this){
            state = BLOCKADED;
        }
    }

    /**
     * パス情報を使わないため、オーバーロードされたメソッドに委譲する。
     *
     * @return
     */
    public boolean isBlockaded() {
        return isBlockaded(null);
    }

    /**
     * サーバ閉塞状態の場合はtrueを返し、そうでない場合はfalseを返し
     *
     * @param pathInfo
     * @return
     */
    public boolean isBlockaded(String pathInfo) {
        for (String path : alwaysOpenPaths) {
            if (path.equals(pathInfo)){
                return false;
            }
        }
        
        // サーバの状態を確認する。
        if (state == BLOCKADED) {
            return true;
        }
        
        if (blockadingDate == null){
            return false;
        }
        
        synchronized (this) {
            if (blockadingDate != null) {
                Date now = new Date();
                // 閉塞状態に遷移する。
                if (blockadingDate.before(now)) {
                    state = BLOCKADED;
                }
            }
        }
        
        // サーバの状態を確認する。
        if (state == BLOCKADED) {
            return true;
        }
        return false;
    }

    /**
     * 予閉塞状態か判定する。
     *
     * @return
     */
    public boolean isPreBlockaded() {
        if (state == BLOCKADED || state == PRE_BLOCKADED){
            return true;
        }
        return false;
    }

    /**
     * サーバを開放する。
     *
     */
    public void open() {
        synchronized (this) {
            state = OPEN;
        }
    }

    /**
     * サーバを予閉塞状態にする。
     *
     */
    public void preBlockade() {
        synchronized (this) {
            state = PRE_BLOCKADED;
        }
    }

    /**
     * サーバを予閉塞状態にし、指定された時刻に閉塞する。
     *
     * @param time
     */
    public void preBlockade(Date time) {
        synchronized (this) {
            state = PRE_BLOCKADED;
            blockadingDate = time;
        }
    }

    /**
     * alwaysOpenPathsを取得する。
     * @return alwaysOpenPaths
     */
    public List<String> getAlwaysOpenPaths() {
        return alwaysOpenPaths;
    }

    /**
     * alwaysOpenPathsを設定する。
     * @param alwaysOpenPaths alwaysOpenPaths。
     */
    public void setAlwaysOpenPaths(List<String> alwaysOpenPaths) {
        this.alwaysOpenPaths = alwaysOpenPaths;
    }
}
