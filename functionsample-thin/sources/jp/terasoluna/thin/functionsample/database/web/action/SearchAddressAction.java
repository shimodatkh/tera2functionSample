/*
 * Copyright (c) 2011 NTT DATA Corporation
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

package jp.terasoluna.thin.functionsample.database.web.action;

import java.util.List;
import java.util.Map;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;

import jp.terasoluna.thin.functionsample.database.bean.AddressTableVO;
import jp.terasoluna.thin.functionsample.database.service.ArrayListAddressService;
import jp.terasoluna.thin.functionsample.database.web.form.SearchForm;
import jp.terasoluna.fw.service.thin.BLogicResult;
import jp.terasoluna.fw.util.StringUtil;
import jp.terasoluna.fw.web.struts.actions.AbstractBLogicAction;

/**
 * �Z���^���X�g���擾����A�N�V����
 * 
 */
public class SearchAddressAction extends AbstractBLogicAction<Map<String, String>> {
    /**
     * �Z���^�擾�T�[�r�X
     */
    protected ArrayListAddressService arrayListAddressService = null;

    private static final Log LOGGER = LogFactory
            .getLog(SearchAddressAction.class);

    /**
     * �f�[�^�x�[�X����Z���^���X�g���擾���A�f�[�^�𐶐�����B
     * 
     * @param param
     *            java.util.Map
     * @return BLogicResult
     * @throws Exception
     *             �\�����ʗ�O
     */
    @Override
    public BLogicResult doExecuteBLogic(Map<String, String> param) throws Exception {
        if (LOGGER.isDebugEnabled()) {
            LOGGER.debug("param=" + param);
        }

        String name = StringUtil.toLikeCondition(param.get("query")); // LIKE��ɓ���邽�߂ɃG�X�P�[�v����
        // �������ʂ��i�[���邽�߂̃I�u�W�F�N�g
        BLogicResult result = new BLogicResult();

        Map<String, List<AddressTableVO>> listAddress = arrayListAddressService
                .searchListAddress(name);

        if (listAddress != null) {
            result.setResultObject(listAddress);
            result.setResultString("success");
        }

        if (LOGGER.isDebugEnabled()) {
            LOGGER.debug("listAddress=" + listAddress);
        }
        return result;
    }

    /**
     * ArrayListAddressService���擾����B
     * 
     * @return ArrayListAddressService
     */
    public ArrayListAddressService getArrayListAddressService() {
        return arrayListAddressService;
    }

    /**
     * ArrayListAddressService��ݒ肷��B
     * 
     * @param ArrayListAddressService
     *            ArrayListAddressService�B
     */
    public void setArrayListAddressService(
            ArrayListAddressService arrayListAddressService) {
        this.arrayListAddressService = arrayListAddressService;
    }
}