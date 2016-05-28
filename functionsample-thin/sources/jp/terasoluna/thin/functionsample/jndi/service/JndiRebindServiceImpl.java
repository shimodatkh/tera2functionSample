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
 * JNDI名を用いてJNDIリソース内容を取得するサービス
 *
 */
public class JndiRebindServiceImpl implements JndiRebindService {
    /**
     * JNDIサポートクラス
     */
    protected JndiSupport jndiSupport = null;

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
     * JNDI名を用いてJNDIリソース内容を取得する。
     *
     * @param name JNDI名
     * @return String JNDIリソース
     */
    public String jndiLookup(String name){
        return (String)jndiSupport.lookup(name);
    }
}