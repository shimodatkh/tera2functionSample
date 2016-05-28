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
 * JNDI���\�[�X������������T�[�r�X
 *
 */
public class ListJndiInitializeServiceImpl implements ListJndiInitializeService {
    /**
     * JNDI�T�|�[�g�N���X
     */
    protected JndiSupport jndiSupport = null;
    /**
     * JNDI���X�g�擾����T�[�r�X
     */
    protected ListJndiService listJndiService = null;
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
     * JNDI���\�[�X������������B
     *
     * @return JNDI���X�g
     */
    public Map<String, Object> jndiListInitialize(){
        Map<String, Object> retMap = null;
         
        // JNDI���\�[�X����ݒ肷��B
        // rebind�Ŕ�������JndiException�̓L���b�`����������B
        jndiSupport.rebind("value1","param1");
        jndiSupport.rebind("value2","param2");
        jndiSupport.rebind("value3","param3");
        
        retMap = listJndiService.getListJndi();
        return retMap;
    }
}