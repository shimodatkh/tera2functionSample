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
 * �@�\�ԗ��T���v��AP�̃��O�I���ς݃`�F�b�N�R���g���[��
 * 
 */
public class FunctionAuthenticationController
implements AuthenticationController {

    /**
     * ���O�N���X�B
     */
    private Log log =
        LogFactory.getLog(FunctionAuthenticationController.class);
    
    /**
     * ���O�I���ς݃`�F�b�N�ΏۊO�p�X
     */
    private List<String> listNoCheckRequiredPath = null;
    
    /**
     * �F�؃`�F�b�N���s��Ȃ��p�X�̃��X�g���擾����B
     * @return listNoCheckRequiredPath ��߂��܂��B
     */
    public List getListNoCheckRequiredPath() {
        return listNoCheckRequiredPath;
    }

    /**
     * �F�؃`�F�b�N���s��Ȃ��p�X�̃��X�g��ݒ肷��B
     * @param listNoCheckRequiredPath �ݒ肷�� listNoCheckRequiredPath�B
     */
    public void setListNoCheckRequiredPath(
            List<String> listNoCheckRequiredPath) {
        this.listNoCheckRequiredPath = listNoCheckRequiredPath;
    }

    /**
     * ���O�I���ς݃`�F�b�N���s���B
     * �Z�b�V��������UVO���擾���A
     * UserValueObject���Z�b�V�����ɂ������ꍇ�̓��O�I���ς݂Ƃ�true��Ԃ��B
     * null�̏ꍇfalse��Ԃ��B
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
     * ���O�I���ς݃`�F�b�N���K�v�Ȃ�true�A�K�v�Ȃ��Ȃ�false��Ԃ��B
     * @param ServletRequest req
     * @return boolean
     */
    public boolean isCheckRequired(ServletRequest req) {
        
        if (log.isDebugEnabled()) {
            log.debug("isCheckRequired() strated.");
        }
        // �R���e�L�X�g�p�X�ȍ~��URI<code>pathInfo</code> ���擾
        String pathInfo = RequestUtil.getPathInfo(req);
        // ':'�ȍ~��Path Parameter(jsessionid�Ȃ�)���폜
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