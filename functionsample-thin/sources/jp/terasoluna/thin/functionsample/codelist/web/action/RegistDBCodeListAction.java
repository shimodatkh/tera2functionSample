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

package jp.terasoluna.thin.functionsample.codelist.web.action;

import java.util.Map;

import jp.terasoluna.thin.functionsample.codelist.bean.InsertDBCodeListParam;
import jp.terasoluna.thin.functionsample.codelist.service.InsertDBCodeListService;
import jp.terasoluna.fw.service.thin.BLogicResult;
import jp.terasoluna.fw.web.struts.actions.AbstractBLogicAction;

/**
 * �c�a�R�[�h���X�g�ɃR�[�h���X�g��o�^����A�N�V����
 *
 */
public class RegistDBCodeListAction 
                    extends AbstractBLogicAction<InsertDBCodeListParam> {
    protected InsertDBCodeListService insertDBCodeListService = null;
    /**
     * �c�a�R�[�h���X�g�ɐV�K�R�[�h���X�g��o�^����B
     * 
     * @param param �L�A�o�����[
     * @return �R�[�h���X�g
     * @throws Exception
     */
    @Override
    public BLogicResult doExecuteBLogic(InsertDBCodeListParam param) 
                                                            throws Exception {
    	BLogicResult result = new BLogicResult();
        Map<String, Object> list = 
                            insertDBCodeListService.insertCodeList(param);
        
        result.setResultObject(list);
        result.setResultString("success");
        return result;
    }
    /**
     * registDBCodeListService���擾����B
     * @return registDBCodeListService
     */
    public InsertDBCodeListService getInsertDBCodeListService() {
        return insertDBCodeListService;
    }
    /**
     * registDBCodeListService��ݒ肷��B
     * @param registDBCodeListService registDBCodeListService�B
     */
    public void setInsertDBCodeListService(
            InsertDBCodeListService insertDBCodeListService) {
        this.insertDBCodeListService = insertDBCodeListService;
    }

}
