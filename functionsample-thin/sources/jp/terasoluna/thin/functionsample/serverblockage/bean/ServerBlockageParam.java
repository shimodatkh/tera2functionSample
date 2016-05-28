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

package jp.terasoluna.thin.functionsample.serverblockage.bean;

import java.io.Serializable;

/**
 * �T�[�o�ǋ@�\�Ŏg����p�����[�^�N���X
 *
 * @version 2006/03/06
 */
public class ServerBlockageParam implements Serializable{

    /**
     * �V���A���o�[�W����ID
     */
    private static final long serialVersionUID = -1437348836118905738L;

    /**
     * �T�[�o���
     */
    private String serverBlockageState = null;

    /**
     * serverBlockageState���擾����B
     * @return serverBlockageState
     */
    public String getServerBlockageState() {
        return serverBlockageState;
    }

    /**
     * serverBlockageState��ݒ肷��B
     * @param serverBlockageState serverBlockageState�B
     */
    public void setServerBlockageState(String serverBlockageState) {
        this.serverBlockageState = serverBlockageState;
    }
    
}
