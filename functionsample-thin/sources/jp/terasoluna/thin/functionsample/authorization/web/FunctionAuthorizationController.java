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
 * �@�\�ԗ��T���v��AP�̃A�N�Z�X�����`�F�b�N�R���g���[��
 * 
 */
public class FunctionAuthorizationController implements AuthorizationController {

    /**
     * ���O�N���X�B
     */
    private Log log =
        LogFactory.getLog(FunctionAuthorizationController.class);
    
    /**
     * �A�N�Z�X�����`�F�b�N�Ώۃp�X
     */
    private List<String> listCheckRequiredPath = null;
    
    /**
     * �����F�Ǘ���
     */
    private static final String AUTH_ADMIN = "0";
    
    /**
     * �A�N�Z�X�����`�F�b�N���s���B
     * �Z�b�V��������UVO���擾���A�A�N�Z�X�������`�F�b�N����B
     * �Ǘ��Ҍ����̏ꍇ��true��Ԃ��A
     * ����ȊO�̏ꍇfalse��Ԃ��B
     * 
     * @param pathInfo �p�X
     * @param req ServletRequest
     * @return �Ǘ��Ҍ����̏ꍇ��true��Ԃ��A����ȊO�̏ꍇfalse��Ԃ��B
     */
    public boolean isAuthorized(String pathInfo, ServletRequest req) {
        
        if (log.isDebugEnabled()) {
            log.debug("isAuthorized() strated.");
        }
        
        // �Z�b�V�������擾
        HttpSession session = ((HttpServletRequest) req).getSession();

        // �Z�b�V��������UserValueObject���擾
        FunctionUVO uvo = (FunctionUVO) session.getAttribute(
                UserValueObject.USER_VALUE_OBJECT_KEY);
        
        // �A�N�Z�X�����������Ă��邩�`�F�b�N
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
     * �A�N�Z�X�����`�F�b�N���K�v�Ȃ�true�A�K�v�Ȃ��Ȃ�false��Ԃ��B
     * @param ServletRequest req
     * @return boolean �`�F�b�N���K�v�Ȃ�true�A�K�v�Ȃ��Ȃ�false��Ԃ��B
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
     * listCheckRequiredPath���擾����B
     * @return listCheckRequiredPath
     */
    public List<String> getListCheckRequiredPath() {
        return listCheckRequiredPath;
    }

    /**
     * listCheckRequiredPath��ݒ肷��B
     * @param listCheckRequiredPath listCheckRequiredPath�B
     */
    public void setListCheckRequiredPath(List<String> listCheckRequiredPath) {
        this.listCheckRequiredPath = listCheckRequiredPath;
    }
}