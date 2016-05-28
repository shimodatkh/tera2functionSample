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
 * �@�\�ԗ��T���v��AP�̃T�[�o�ǃR���g���[��
 *
 * @version 2006/02/28
 */
public class ServerBlockageController implements
        jp.terasoluna.fw.web.thin.ServerBlockageController {

    /**
     * �J�����
     */
    public static final int OPEN = 0;
    
    /**
     * �\�Ǐ��
     */
    public static final int PRE_BLOCKADED = 1;
    
    /**
     * �Ǐ��
     */
    public static final int BLOCKADED = 2;
    
    /**
     * �T�[�o�ǂ��Ă��Ă��ʂ��p�X
     */
    private List<String> alwaysOpenPaths = null;
    
    /**
     * �T�[�o�Ǐ�Ԃ��ǂ����������t���O
     */
    private int state = OPEN;
    
    /**
     * �Ǐ�ԂɑJ�ڂ��鎞��
     */
    private Date blockadingDate = null;
    
    /**
     * �T�[�o�ǂ���
     *
     */
    public void blockade() {
        synchronized (this){
            state = BLOCKADED;
        }
    }

    /**
     * �p�X�����g��Ȃ����߁A�I�[�o�[���[�h���ꂽ���\�b�h�ɈϏ�����B
     *
     * @return
     */
    public boolean isBlockaded() {
        return isBlockaded(null);
    }

    /**
     * �T�[�o�Ǐ�Ԃ̏ꍇ��true��Ԃ��A�����łȂ��ꍇ��false��Ԃ�
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
        
        // �T�[�o�̏�Ԃ��m�F����B
        if (state == BLOCKADED) {
            return true;
        }
        
        if (blockadingDate == null){
            return false;
        }
        
        synchronized (this) {
            if (blockadingDate != null) {
                Date now = new Date();
                // �Ǐ�ԂɑJ�ڂ���B
                if (blockadingDate.before(now)) {
                    state = BLOCKADED;
                }
            }
        }
        
        // �T�[�o�̏�Ԃ��m�F����B
        if (state == BLOCKADED) {
            return true;
        }
        return false;
    }

    /**
     * �\�Ǐ�Ԃ����肷��B
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
     * �T�[�o���J������B
     *
     */
    public void open() {
        synchronized (this) {
            state = OPEN;
        }
    }

    /**
     * �T�[�o��\�Ǐ�Ԃɂ���B
     *
     */
    public void preBlockade() {
        synchronized (this) {
            state = PRE_BLOCKADED;
        }
    }

    /**
     * �T�[�o��\�Ǐ�Ԃɂ��A�w�肳�ꂽ�����ɕǂ���B
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
     * alwaysOpenPaths���擾����B
     * @return alwaysOpenPaths
     */
    public List<String> getAlwaysOpenPaths() {
        return alwaysOpenPaths;
    }

    /**
     * alwaysOpenPaths��ݒ肷��B
     * @param alwaysOpenPaths alwaysOpenPaths�B
     */
    public void setAlwaysOpenPaths(List<String> alwaysOpenPaths) {
        this.alwaysOpenPaths = alwaysOpenPaths;
    }
}
