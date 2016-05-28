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

package jp.terasoluna.thin.functionsample.dispatch.service;

import jp.terasoluna.thin.functionsample.dispatch.bean.UserVO;
import jp.terasoluna.fw.dao.QueryDAO;

/**
 * ���[�U���X�g�擾�T�[�r�X�̎����N���X
 *
 */
public class ListUserServiceImpl implements ListUserService {

    /**
     * ���[�U���X�g�擾�pDAO�N���X<br>
     * Spring�ɂ��C���X�^���X��������ݒ肳���B
     */
    private QueryDAO queryDAO = null;

    /**
     * �f�[�^�x�[�X���烆�[�U���X�g���擾����
     *
     * @return ���[�U���X�g
     * @exception Exception �\�����ʗ�O
     */
    public UserVO[] getListUser()  throws Exception {
        
        // ���[�U���X�g���擾����B
        return queryDAO.executeForObjectArray(
                "dispatch.selectListUser", null, UserVO.class);
    }

    /**
     * ���[�U���X�g�擾�pDAO�N���X���擾����B
     * @return ���[�U���X�g�擾�pDAO�N���X
     */
    public QueryDAO getQueryDAO() {
        return queryDAO;
    }

    /**
     * ���[�U���X�g�擾�pDAO�N���X��ݒ肷��B
     * @param queryDAO ���[�U���X�g�擾�pDAO�N���X
     */
    public void setQueryDAO(QueryDAO queryDAO) {
        this.queryDAO = queryDAO;
    }
}