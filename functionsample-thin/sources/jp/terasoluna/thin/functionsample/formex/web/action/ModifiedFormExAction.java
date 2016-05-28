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

package jp.terasoluna.thin.functionsample.formex.web.action;

import java.util.Map;

import jp.terasoluna.thin.functionsample.formex.bean.FormExParam;
import jp.terasoluna.thin.functionsample.formex.service.ModifiedService;
import jp.terasoluna.fw.service.thin.BLogicResult;
import jp.terasoluna.fw.web.struts.actions.AbstractBLogicAction;

/**
 * blogic-result�̒l��ύX����A�N�V�����N���X
 * 
 */
public class ModifiedFormExAction extends AbstractBLogicAction<FormExParam> {

    /**
     * blogic-result�̒l��ύX����T�[�r�X
     */
    protected ModifiedService modifiedService = null;
    
    /**
     * blogic-result�̒l��ύX����B
     * @param param FormExParam
     * @return BLogicResult
     * @throws Exception
     */
    @Override
    public BLogicResult doExecuteBLogic(FormExParam param) throws Exception {
        
    	BLogicResult result = new BLogicResult();
        
        // �T�[�r�X���W�b�N�̌Ăяo����blogic-result�̒l��ύX
        Map<String, Object> map = modifiedService.getParams(param);
        result.setResultObject(map);

        result.setResultString("success");

        return result;
    }

    /**
     * modifiedService���擾����B
     * @return modifiedService
     */
    public ModifiedService getModifiedService() {
        return modifiedService;
    }

    /**
     * modifiedService��ݒ肷��B
     * @param modifiedService modifiedService�B
     */
    public void setModifiedService(ModifiedService modifiedService) {
        this.modifiedService = modifiedService;
    }
}