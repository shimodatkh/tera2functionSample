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

package jp.terasoluna.thin.functionsample.database.service;

import java.util.List;
import java.util.Map;

import jp.terasoluna.thin.functionsample.database.bean.AddressTableVO;

/**
 * 
 * �Z���^���X�g���擾����N���X�̃C���^�t�F�[�X�iArrayList�Łj
 *
 */
public interface ArrayListAddressService {

    /**
     * �f�[�^�x�[�X����Z���΃��X�g���擾����
     *
     * @return �Z���^�ꗗ
     */
    Map<String, List<AddressTableVO>> getListAddress();
    

    /**
     *  �f�[�^�x�[�X����Z���΃��X�g���ڋq���̑O����v�Ō�������
     * @param name �������閼�O
     * @return �Z���^�ꗗ
     */
    Map<String, List<AddressTableVO>> searchListAddress(String name);
}