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

package jp.terasoluna.thin.functionsample.formex.service;

import java.util.Map;

import jp.terasoluna.thin.functionsample.formex.bean.FormExParam;

/**
 * RequestProcessorEx��modified�t���O�𗧂Ă邽�߂�
 * blogic-result�̒l��ύX����C���^�t�F�[�X�B
 * 
 */
public interface ModifiedService {

    /**
     * blogic-result�̒l��ύX����B
     * 
     * @param param FormExParam
     * @return java.util.Map
     */
    Map<String, Object> getParams(FormExParam param);
}