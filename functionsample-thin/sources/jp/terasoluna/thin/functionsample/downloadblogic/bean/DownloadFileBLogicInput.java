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

package jp.terasoluna.thin.functionsample.downloadblogic.bean;

import java.io.Serializable;

/**
 * WD-04 �t�@�C���_�E�����[�h�@�\�iBLogicDownloadAction�Łj�Ŏg����DTO�N���X
 * 
 */
public class DownloadFileBLogicInput implements Serializable {

    /**
     * �V���A���o�[�W����ID
     */
    private static final long serialVersionUID = -1029166809820409378L;

    /**
     * �t�@�C���p�X
     */
    private String filePath = null;

    /**
     * �t�@�C����
     */
    private String fileName = null;

    /**
     * �t�@�C�������镶����
     */
    private String text = null;
    
    /**
     * �t�@�C���T�C�Y
     */
    private String fileSize = null;

    /**
     * �t�@�C������ԋp����B
     * 
     * @return �ێ�����t�@�C����
     */
    public String getFileName() {
        return fileName;
    }

    /**
     * �t�@�C������ݒ肷��B
     * 
     * @param fileName
     *            �t�@�C�����B
     */
    public void setFileName(String fileName) {
        this.fileName = fileName;
    }

    /**
     * �t�@�C���p�X��ԋp����B
     * 
     * @return �ێ�����t�@�C���p�X
     */
    public String getFilePath() {
        return filePath;
    }

    /**
     * �t�@�C���p�X��ݒ肷��B
     * 
     * @param filePath
     *            �t�@�C���p�X�B
     */
    public void setFilePath(String filePath) {
        this.filePath = filePath;
    }

    /**
     * �t�@�C�������镶�����ԋp����B
     * 
     * @return �t�@�C�������镶����
     */

    public String getText() {
        return text;
    }

    /**
     * �t�@�C�������镶�����ݒ肷��B
     * 
     * @param text
     *            �t�@�C�������镶����B
     */
    public void setText(String text) {
        this.text = text;
    }

    /**
     * �t�@�C���T�C�Y��ԋp����B
     * 
     * @return �ێ�����t�@�C���T�C�Y
     */

    public String getFileSize() {
        return fileSize;
    }

    /**
     * �t�@�C���T�C�Y��ݒ肷��B
     * 
     * @param fileSize
     *            �t�@�C���T�C�Y�B
     */
    public void setFileSize(String fileSize) {
        this.fileSize = fileSize;
    }

}
