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

package jp.terasoluna.thin.functionsample.blockage.web.action;

import java.util.Map;

import jp.terasoluna.thin.functionsample.blockage.bean.BlockageParam;
import jp.terasoluna.thin.functionsample.blockage.service.BlockageService;
import jp.terasoluna.fw.service.thin.BLogicResult;
import jp.terasoluna.fw.web.struts.actions.AbstractBLogicAction;

/**
 * �I�������Ɩ���ǖ��́A�J������A�N�V����
 *
 */
public class BlockageAction extends AbstractBLogicAction<BlockageParam> {
    /**
     * �Ɩ����X�g�ƕǏ�Ԃ��擾����T�[�r�X
     */
    protected BlockageService blockageService = null;
    
    /**
     * blockageService���擾����B
     * @return blockageService
     */
    public BlockageService getBlockageService() {
        return blockageService;
    }

    /**
     * blockageService��ݒ肷��B
     * @param blockageService blockageService�B
     */
    public void setBlockageService(BlockageService blockageService) {
        this.blockageService = blockageService;
    }

    /**
     * �Ɩ���ǖ��́A�J������
     *
     * @param param �ǃ`�F�b�N���
     * @return BLogicResult
     * @throws Exception
     */
    @Override
    public BLogicResult doExecuteBLogic(BlockageParam param) throws Exception {
        BLogicResult result = new BLogicResult();
        // �Ǐ������s��
        Map<String, Object> retMap = blockageService.blockage(param);
        
        result.setResultObject(retMap);
        result.setResultString("success");
        return result;
    }

}
