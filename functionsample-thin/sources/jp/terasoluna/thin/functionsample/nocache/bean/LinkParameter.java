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

package jp.terasoluna.thin.functionsample.nocache.bean;

import java.util.HashMap;
import java.util.Map;

/**
 * link�@�\�Ŏg����N���X
 * 
 */
public class LinkParameter {
    /**
     * �p�����^������MAP�B
     */
    private Map<String, String> parameters=new HashMap<String, String>();
    
    /**
     * �p�����^��ݒ肷��B
     */
    public LinkParameter() {
      parameters.put("sample","hello");
      parameters.put("sample2","goodby");
    }
    
    /**
     * �p�����^���擾����B
     * @return parameters
     */    
    public Map getParameters() {
    	return(parameters);
    }
}