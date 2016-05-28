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

package jp.terasoluna.thin.functionsample.upload.service;

import java.util.Map;

import jp.terasoluna.thin.functionsample.upload.bean.TupdownloadVO;

/**
 * �c�a�ɃR�[�h���X�g��o�^����@�\�̃C���^�t�F�[�X
 * 
 */
public interface InsertDBUpLoadService {

    /**
     * �V�K�f�[�^��o�^����B
     * 
     * @param aParam
     *            �t�@�C�����
     * @return �t�@�C�����
     */
    Map<String, Object> insertDBUpLoad(TupdownloadVO aParam);
}
