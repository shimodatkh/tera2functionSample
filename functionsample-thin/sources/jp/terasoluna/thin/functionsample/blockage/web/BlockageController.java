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
 * �@�\�ԗ��T���v��AP�̋Ɩ��ǃR���g���[��
 *
 */
public class BlockageController implements
        jp.terasoluna.fw.web.thin.BlockageController {
    /**
     * �`�F�b�N���Ȃ��p�X
     */
    private List<String> noCheckPath = null;
    
    /**
     * �Ɩ��ǂ��Ă���p�X
     */
    private HashSet<String> blockadedPaths = new HashSet<String>();
    
    /**
     * �Z�b�V�������g��Ȃ����߁A�I�[�o�[���[�h���ꂽ���\�b�h�ɈϏ�����
     *
     * @param path
     */
    public void blockade(String path) {
        blockade(path, null);
    }

    /**
     * �w�肳�ꂽ�A�Ɩ����Ăяo���p�X��ǂ���
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
     * �Z�b�V�������g��Ȃ����߁A�I�[�o�[���[�h���ꂽ���\�b�h�ɈϏ�����
     *
     * @param path
     * @return
     */
    public boolean isBlockaded(String path) {
        return isBlockaded(path, null);
    }

    /**
     * �Ɩ��Ǐ�Ԃ̏ꍇ��true��Ԃ��A�����łȂ��ꍇ�Afalse��Ԃ�
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
     * �Ɩ��ǃ`�F�b�N���K�v���ǂ������肵�A�K�v�Ȃ�true,�K�v�Ȃ��Ȃ�false�Ԃ�
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
     * �Z�b�V�������g��Ȃ����߁A�I�[�o�[���[�h���ꂽ���\�b�h�ɈϏ�����
     *
     * @param path
     */
    public void open(String path) {
        open(path, null);

    }

    /**
     * �w�肳�ꂽ�A�Ɩ����Ăяo���p�X���J������
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
     * noCheckPath���擾����B
     * @return noCheckPath
     */
    public List<String> getNoCheckPath() {
        return noCheckPath;
    }

    /**
     * noCheckPath��ݒ肷��B
     * @param noCheckPath noCheckPath�B
     */
    public void setNoCheckPath(List<String> noCheckPath) {
        this.noCheckPath = noCheckPath;
    }
}