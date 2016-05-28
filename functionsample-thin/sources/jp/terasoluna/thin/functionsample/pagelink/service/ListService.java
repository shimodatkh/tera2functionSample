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

package jp.terasoluna.thin.functionsample.pagelink.service;

import java.util.Map;

public interface ListService {

    /**
     * �f�[�^�x�[�X����ꗗ�����擾����B
     * ��������1�y�[�W�̕\�������ƊJ�n�C���f�b�N�X���擾���AQueryDAO�ɓn���B
     * �܂��A�ꗗ���̑S�������擾���ԋp����B
     *
     * @param map �\�������A�J�n�C���f�b�N�X��ێ�����Map
     * @return �ꗗ���A�S������ێ�����Map
     */
    Map<String, Object> getUserList(Map<String, String> map);
}