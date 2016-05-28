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

import jp.terasoluna.fw.web.jndi.JndiSupport;

/**
 * JNDI����p����JNDI���\�[�X���e���擾����T�[�r�X
 *
 */
public class JndiRebindServiceImpl implements JndiRebindService {
    /**
     * JNDI�T�|�[�g�N���X
     */
    protected JndiSupport jndiSupport = null;

    /**
     * jndiSupport���擾����B
     * @return jndiSupport
     */
    public JndiSupport getJndiSupport() {
        return jndiSupport;
    }

    /**
     * jndiSupport��ݒ肷��B
     * @param jndiSupport jndiSupport�B
     */
    public void setJndiSupport(JndiSupport jndiSupport) {
        this.jndiSupport = jndiSupport;
    }
    /**
     * JNDI����p����JNDI���\�[�X���e���擾����B
     *
     * @param name JNDI��
     * @return String JNDI���\�[�X
     */
    public String jndiLookup(String name){
        return (String)jndiSupport.lookup(name);
    }
}