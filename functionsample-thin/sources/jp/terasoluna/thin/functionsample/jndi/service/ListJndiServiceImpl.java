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

import java.util.HashMap;
import java.util.Map;

import jp.terasoluna.thin.functionsample.jndi.bean.ListJndiResult;
import jp.terasoluna.fw.web.jndi.JndiException;
import jp.terasoluna.fw.web.jndi.JndiSupport;

/**
 * JNDIリソースリストを取得するサービス
 *
 */
public class ListJndiServiceImpl implements ListJndiService{

    /**
     * JNDIサポートクラス
     */
    protected JndiSupport jndiSupport = null;

    /**
     * JndiSupportクラスを取得する。
     * @return jndiSupport
     */
    public JndiSupport getJndiSupport() {
        return jndiSupport;
    }
    
    /**
     * JndiSupportクラスを設定する。
     * @param jndiSupport jndiSupport を設定します。
     */
    public void setJndiSupport(JndiSupport jndiSupport) {
        this.jndiSupport = jndiSupport;
    }
    
    /**
     * JNDIリソースリストを取得する。
     *
     * @return JNDIリスト
     */
    public Map<String, Object> getListJndi(){
        Map<String, Object> retMap = new HashMap<String, Object>();
        ListJndiResult listJndiResult = new ListJndiResult();
        
        // JNDIリソース名を設定する。
        listJndiResult.setValueName1("value1");
        listJndiResult.setValueName2("value2");
        listJndiResult.setValueName3("value3");
        listJndiResult.setValueName4("dummy");
        
        // JNDIリソース値を取得する。
        // 発生するJndiExceptionはキャッチせず投げる。
        try{
            listJndiResult.setValueData1(
                    (String)jndiSupport.lookup(listJndiResult.getValueName1()));
        }catch(JndiException e){
            listJndiResult.setValueData1(null);
        }
        try{
            listJndiResult.setValueData2(
                    (String)jndiSupport.lookup(listJndiResult.getValueName2()));
        }catch(JndiException e){
            listJndiResult.setValueData2(null);
        }
        try{
            listJndiResult.setValueData3(
                    (String)jndiSupport.lookup(listJndiResult.getValueName3()));
        }catch(JndiException e){
            listJndiResult.setValueData3(null);
        }
        try{
            listJndiResult.setValueData4(
                    (String)jndiSupport.lookup(listJndiResult.getValueName4()));
        }catch(JndiException e){
            listJndiResult.setValueData4(null);
        }
        retMap.put("listJndiData", listJndiResult);
        
        return retMap;
    }
}