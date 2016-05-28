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

package jp.terasoluna.thin.functionsample.jndi.service;

import java.util.Map;
/**
 * 
 * �I������JNDI�����A���o�C���h����T�[�r�X�C���^�t�F�[�X
 *
 */
public interface JndiUnbindService {

    /**
     * 
     * �Y��JNDI�����A���o�C���h����B
     * JNDI���\�[�X���X�g���擾����B
     *
     * @param name JNDI��
     * @return JNDI���\�[�X���X�g
     */
    Map<String, Object> jndiUnbind(String name);
}