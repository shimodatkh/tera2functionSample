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

import java.util.Map;

import jp.terasoluna.thin.functionsample.dispatch.bean.UserDivisionVO;
import jp.terasoluna.fw.dao.UpdateDAO;

/**
 * ���[�U�����X�V�T�[�r�X�̎����N���X
 *
 */
public class UpdateUserDivisionServiceImpl implements
        UpdateUserDivisionService {
    
    
    /**
     * ���[�U�����X�V�pDAO�N���X<br>
     * Spring�ɂ��C���X�^���X��������ݒ肳���B
     */
    protected UpdateDAO updateDAO = null;
    
    /**
     * ���͂��ꂽ�f�[�^����Ƀf�[�^�x�[�X�̃��[�U�������X�V����B
     *
     * @param params ���͂��ꂽ���[�U������� 
     * @exception Exception �\�����ʗ�O
     */
    public void updateUserDivision(Map params) throws Exception {
        //���[�U�R�[�h�̎擾
        String[] userCodes = (String[]) params.get("userCode");
        //���[�U�����̎擾
        String[] userDivision = (String[]) params.get("userDivision");
        
        //�f�[�^�x�[�X�̃f�[�^�̍X�V
        for (int i = 0; i < userCodes.length; i++) {
            updateDAO.execute("dispatch.updateUserDivision",
                    new UserDivisionVO(userCodes[i], userDivision[i]));
        }
    }

    /**
     * ���[�U�����X�V�pDAO�N���X���擾����B
     * @return ���[�U�����X�V�pDAO�N���X
     */
    public UpdateDAO getUpdateDAO() {
        return updateDAO;
    }

    /**
     * ���[�U�����X�V�pDAO�N���X��ݒ肷��B
     * @param updateDAO ���[�U�����X�V�pDAO�N���X
     */
    public void setUpdateDAO(UpdateDAO updateDAO) {
        this.updateDAO = updateDAO;
    }

}