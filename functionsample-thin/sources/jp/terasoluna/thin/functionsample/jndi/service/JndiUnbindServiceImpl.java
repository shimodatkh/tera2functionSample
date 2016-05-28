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

import jp.terasoluna.fw.web.jndi.JndiSupport;

/**
 * �I������JNDI�����A���o�C���h����T�[�r�X
 *
 */
public class JndiUnbindServiceImpl implements JndiUnbindService {
    /**
     * JNDI���X�g�擾����T�[�r�X
     */
    protected ListJndiService listJndiService = null;
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
     * listJndiService���擾����B
     * @return listJndiService
     */
    public ListJndiService getListJndiService() {
        return listJndiService;
    }
    /**
     * listJndiService��ݒ肷��B
     * @param listJndiService listJndiService�B
     */
    public void setListJndiService(ListJndiService listJndiService) {
        this.listJndiService = listJndiService;
    }
    
    /**
     * �Y��JNDI�����A���o�C���h����B
     * JNDI���\�[�X���X�g���擾����B
     *
     * @param name JNDI��
     * @return JNDI���\�[�X���X�g
     */
    public Map<String, Object> jndiUnbind(String name){
        Map<String, Object> retMap = null;
        
        // �I�������l��Unbind���� 
        jndiSupport.unbind(name);
        
        retMap = listJndiService.getListJndi();
        return retMap;
    }
}