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

package jp.terasoluna.thin.functionsample.authentication.web;

import java.util.List;

import javax.servlet.ServletRequest;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;

import jp.terasoluna.thin.functionsample.common.FunctionUVO;
import jp.terasoluna.fw.web.RequestUtil;
import jp.terasoluna.fw.web.UserValueObject;
import jp.terasoluna.fw.web.thin.AuthenticationController;

/**
 * 機能網羅サンプルAPのログオン済みチェックコントローラ
 * 
 */
public class FunctionAuthenticationController
implements AuthenticationController {

    /**
     * ログクラス。
     */
    private Log log =
        LogFactory.getLog(FunctionAuthenticationController.class);
    
    /**
     * ログオン済みチェック対象外パス
     */
    private List<String> listNoCheckRequiredPath = null;
    
    /**
     * 認証チェックを行わないパスのリストを取得する。
     * @return listNoCheckRequiredPath を戻します。
     */
    public List getListNoCheckRequiredPath() {
        return listNoCheckRequiredPath;
    }

    /**
     * 認証チェックを行わないパスのリストを設定する。
     * @param listNoCheckRequiredPath 設定する listNoCheckRequiredPath。
     */
    public void setListNoCheckRequiredPath(
            List<String> listNoCheckRequiredPath) {
        this.listNoCheckRequiredPath = listNoCheckRequiredPath;
    }

    /**
     * ログオン済みチェックを行う。
     * セッションからUVOを取得し、
     * UserValueObjectがセッションにあった場合はログオン済みとしtrueを返す。
     * nullの場合falseを返す。
     * 
     * @param String pathInfo
     * @param ServletRequest req
     * @return boolean
     */
    public boolean isAuthenticated(String pathInfo, ServletRequest req) {
        
        if (log.isDebugEnabled()) {
            log.debug("isAuthenticated() strated.");
        }
        
        HttpSession session = ((HttpServletRequest) req).getSession();
        FunctionUVO uvo =
            (FunctionUVO) session.getAttribute(
                    UserValueObject.USER_VALUE_OBJECT_KEY);
        
        if (uvo != null) {
            return true;
        }
        
        if (log.isDebugEnabled()) {
            log.debug("isAuthenticated() ended.");
        }
        return false;
    }

    /**
     * ログオン済みチェックが必要ならtrue、必要ないならfalseを返す。
     * @param ServletRequest req
     * @return boolean
     */
    public boolean isCheckRequired(ServletRequest req) {
        
        if (log.isDebugEnabled()) {
            log.debug("isCheckRequired() strated.");
        }
        // コンテキストパス以降のURI<code>pathInfo</code> を取得
        String pathInfo = RequestUtil.getPathInfo(req);
        // ':'以降のPath Parameter(jsessionidなど)を削除
        int indexSemicolon = pathInfo.indexOf(';');
        if (indexSemicolon != -1) {
            pathInfo = pathInfo.substring(0, indexSemicolon);
        }
        
        for (String path : listNoCheckRequiredPath) {
            if (pathInfo.equals(path)) {
                return false;
            }
        }
        
        if (log.isDebugEnabled()) {
            log.debug("isCheckRequired() ended.");
        }
        return true;
    }
}