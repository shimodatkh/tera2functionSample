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
 * JNDIリソースを初期化するサービス
 *
 */
public class ListJndiInitializeServiceImpl implements ListJndiInitializeService {
    /**
     * JNDIサポートクラス
     */
    protected JndiSupport jndiSupport = null;
    /**
     * JNDIリスト取得するサービス
     */
    protected ListJndiService listJndiService = null;
    /**
     * listJndiServiceを取得する。
     * @return listJndiService
     */
    public ListJndiService getListJndiService() {
        return listJndiService;
    }

    /**
     * listJndiServiceを設定する。
     * @param listJndiService listJndiService。
     */
    public void setListJndiService(ListJndiService listJndiService) {
        this.listJndiService = listJndiService;
    }

    /**
     * jndiSupportを取得する。
     * @return jndiSupport
     */
    public JndiSupport getJndiSupport() {
        return jndiSupport;
    }

    /**
     * jndiSupportを設定する。
     * @param jndiSupport jndiSupport。
     */
    public void setJndiSupport(JndiSupport jndiSupport) {
        this.jndiSupport = jndiSupport;
    }
    
    /**
     * JNDIリソースを初期化する。
     *
     * @return JNDIリスト
     */
    public Map<String, Object> jndiListInitialize(){
        Map<String, Object> retMap = null;
         
        // JNDIリソース名を設定する。
        // rebindで発生するJndiExceptionはキャッチせず投げる。
        jndiSupport.rebind("value1","param1");
        jndiSupport.rebind("value2","param2");
        jndiSupport.rebind("value3","param3");
        
        retMap = listJndiService.getListJndi();
        return retMap;
    }
}