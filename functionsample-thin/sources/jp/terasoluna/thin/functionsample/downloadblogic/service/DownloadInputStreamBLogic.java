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

package jp.terasoluna.thin.functionsample.downloadblogic.service;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;

import jp.terasoluna.fw.service.thin.BLogic;
import jp.terasoluna.fw.service.thin.BLogicResult;
import jp.terasoluna.fw.web.struts.actions.DownloadInputStream;
import jp.terasoluna.thin.functionsample.downloadblogic.bean.DownloadFileBLogicInput;

/**
 * �t�@�C���_�E�����[�h���������N���X�B
 * <p>
 * DownloadInputStream�^���g�p���ă_�E�����[�h����B
 */
public class DownloadInputStreamBLogic implements
        BLogic<DownloadFileBLogicInput> {

    public BLogicResult execute(DownloadFileBLogicInput param) {

        // �t�@�C�������擾
        String fileName = param.getFileName();
        // �t�@�C���p�X���擾
        String filePath = param.getFilePath();

        // �_�E�����[�h�t�@�C���̐���
        File file = new File(new StringBuilder(filePath).append("/").append(
                fileName).toString());

        FileInputStream fis = null;
        try {
            fis = new FileInputStream(file);
        } catch (FileNotFoundException e) {
            e.printStackTrace();
        }

        // �_�E�����[�h�Ώۂ�DownloadInputStream�Ɋi�[����B
        DownloadInputStream downloadObject = new DownloadInputStream(fileName,
                fis);

        BLogicResult result = new BLogicResult();
        result.setResultObject(downloadObject);
        result.setResultString("success");

        return result;
    }

}
