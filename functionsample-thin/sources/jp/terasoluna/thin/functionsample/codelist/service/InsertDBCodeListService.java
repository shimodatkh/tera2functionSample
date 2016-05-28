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

package jp.terasoluna.thin.functionsample.codelist.service;

import java.util.Map;

import jp.terasoluna.thin.functionsample.codelist.bean.InsertDBCodeListParam;
/**
 * �c�a�ɃR�[�h���X�g��o�^����@�\�̃C���^�t�F�[�X
 *
 */
public interface InsertDBCodeListService {
    /**
     * �V�K�R�[�h���X�g��o�^����B
     *
     * @param param �R�[�h���X�g
     * @return
     */
    Map<String, Object> insertCodeList(InsertDBCodeListParam param);

}