/*
 * Copyright (c) 2009 NTT DATA Corporation
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

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import jp.terasoluna.fw.web.struts.actions.ActionEx;
import jp.terasoluna.thin.functionsample.database.bean.CsvDlAddressParam;
import jp.terasoluna.thin.functionsample.database.bean.CsvDlAddressParamImpl;
import jp.terasoluna.thin.functionsample.database.service.ResultCsvDlAddressService;

import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

/**
 * CSV�_�E�����[�h�������s���A�N�V�����N���X�B
 * 
 */
public class ResultCsvDlAddressAction extends ActionEx {

    /**
     * CSV�_�E�����[�h�����T�[�r�X
     */
    protected ResultCsvDlAddressService resultCsvDlAddressService = null;

    /**
     * resultCsvDlAddressService���擾����B
     * @return resultCsvDlAddressService
     */
    public ResultCsvDlAddressService getResultCsvDlAddressService() {
        return resultCsvDlAddressService;
    }

    /**
     * resultCsvDlAddressService��ݒ肷��B
     * @param resultCsvDlAddressService resultCsvDlAddressService�B
     */
    public void setResultCsvDlAddressService(
            ResultCsvDlAddressService resultCsvDlAddressService) {
        this.resultCsvDlAddressService = resultCsvDlAddressService;
    }

    /**
     * CSV�_�E�����[�h�������s���B
     *
     * @param mapping ���̃A�N�V�����ɕR�Â����A�N�V�����}�b�s���O
     * @param form �A�N�V�����t�H�[��
     * @param request ���N�G�X�g���
     * @param response ���X�|���X���
     * @return �J�ڐ���
     * @throws Exception �\�����Ȃ���O
     */
    @Override
    public ActionForward doExecute(ActionMapping mapping, ActionForm form,
            HttpServletRequest request, HttpServletResponse response)
            throws Exception {
        CsvDlAddressParam param = new CsvDlAddressParamImpl(request, response);

        // CSV�_�E�����[�h����
        resultCsvDlAddressService.csvDownload(param);

        // ���X�|���X��CSV�_�E�����[�h�����ŏo�͍ς̂���null
        return null;
    }
}