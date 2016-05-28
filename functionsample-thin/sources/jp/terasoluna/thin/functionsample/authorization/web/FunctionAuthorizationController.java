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

package jp.terasoluna.thin.functionsample.authorization.web;

import java.util.List;

import javax.servlet.ServletRequest;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;

import jp.terasoluna.thin.functionsample.common.FunctionUVO;
import jp.terasoluna.fw.web.RequestUtil;
import jp.terasoluna.fw.web.UserValueObject;
import jp.terasoluna.fw.web.thin.AuthorizationController;

/**
 * 機能網羅サンプルAPのアクセス権限チェックコントローラ
 * 
 */
public class FunctionAuthorizationController implements AuthorizationController {

    /**
     * ログクラス。
     */
    private Log log =
        LogFactory.getLog(FunctionAuthorizationController.class);
    
    /**
     * アクセス権限チェック対象パス
     */
    private List<String> listCheckRequiredPath = null;
    
    /**
     * 権限：管理者
     */
    private static final String AUTH_ADMIN = "0";
    
    /**
     * アクセス権限チェックを行う。
     * セッションからUVOを取得し、アクセス権限をチェックする。
     * 管理者権限の場合はtrueを返し、
     * それ以外の場合falseを返す。
     * 
     * @param pathInfo パス
     * @param req ServletRequest
     * @return 管理者権限の場合はtrueを返し、それ以外の場合falseを返す。
     */
    public boolean isAuthorized(String pathInfo, ServletRequest req) {
        
        if (log.isDebugEnabled()) {
            log.debug("isAuthorized() strated.");
        }
        
        // セッションを取得
        HttpSession session = ((HttpServletRequest) req).getSession();

        // セッションからUserValueObjectを取得
        FunctionUVO uvo = (FunctionUVO) session.getAttribute(
                UserValueObject.USER_VALUE_OBJECT_KEY);
        
        // アクセス権限を持っているかチェック
        if (AUTH_ADMIN.equals(uvo.getAuth())) {
            for (String path : listCheckRequiredPath) {
                if (pathInfo.equals(path)) {
                    return true;
                }
            }
            return false;
        }
        
        if (log.isDebugEnabled()) {
            log.debug("isAuthorized() ended.");
        }
        
        return false;
    }

    /**
     * アクセス権限チェックが必要ならtrue、必要ないならfalseを返す。
     * @param ServletRequest req
     * @return boolean チェックが必要ならtrue、必要ないならfalseを返す。
     */
    public boolean isCheckRequired(ServletRequest req) {
        
        if (log.isDebugEnabled()) {
            log.debug("isCheckRequired() strated.");
        }
        
        for (String path : listCheckRequiredPath) {
            if ((RequestUtil.getPathInfo(req)).equals(path)) {
                return true;
            }            
        }
        
        if (log.isDebugEnabled()) {
            log.debug("isCheckRequired() ended.");
        }

        return false;
    }

    /**
     * listCheckRequiredPathを取得する。
     * @return listCheckRequiredPath
     */
    public List<String> getListCheckRequiredPath() {
        return listCheckRequiredPath;
    }

    /**
     * listCheckRequiredPathを設定する。
     * @param listCheckRequiredPath listCheckRequiredPath。
     */
    public void setListCheckRequiredPath(List<String> listCheckRequiredPath) {
        this.listCheckRequiredPath = listCheckRequiredPath;
    }
}