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

package jp.terasoluna.thin.functionsample.blockage.service;

import java.util.Map;

import jp.terasoluna.thin.functionsample.blockage.bean.BlockageParam;
import jp.terasoluna.thin.functionsample.blockage.web.BlockageController;
import jp.terasoluna.fw.util.PropertyUtil;
import jp.terasoluna.fw.web.thin.BlockageControlFilter;

/**
 * �Ɩ��ǁA�ǉ������s���T�[�r�X�N���X
 * <p>
 * �`�F�b�N���ꂽ�Ɩ��ɑ΂��ĕǏ������s��
 *
 */
public class BlockageServiceImpl implements BlockageService {
    /**
     * �Ɩ����X�g���擾����T�[�r�X
     */
    protected ListBlockageService listBlockageService = null;
    /**
     * listBlockageService���擾����B
     * @return listBlockageService
     */
    public ListBlockageService getListBlockageService() {
        return listBlockageService;
    }
    /**
     * listBlockageService��ݒ肷��B
     * @param listBlockageService listBlockageService�B
     */
    public void setListBlockageService
                                    (ListBlockageService listBlockageService) {
        this.listBlockageService = listBlockageService;
    }
    /**
     * �`�F�b�N���ꂽ�Ɩ���ǂ���B
     * �`�F�b�N����Ă��Ȃ��ꍇ�A�Ɩ��ǂ��J������B
     *
     * @param param �ǃ`�F�b�N���
     * @return �Ɩ��ǃ��X�g�ƕǏ��
     */
    public Map<String, Object> blockage(BlockageParam param){
        Map<String, Object> list = null;
        String sPropertyUrl  = null;
        String sCount = null;
        String sUCUrl = null;
        boolean bBlockage = false;
        int count = 0;
        int i;
        
        // �R���g���[�����擾����
        BlockageController controller
                = (BlockageController) 
                    BlockageControlFilter.getBlockageController();
        
        do{
            // �T���̘A�Ԃ����B
            sCount = "" + ++count;
            while(sCount.length() < 5 ){
                sCount = "0" + sCount;
            }
            // �v���p�e�B�����擾����B��jblockage.�A��.url
            sPropertyUrl  = "blockage." + sCount + ".url";

            // �w�肳�ꂽ�L�[�̃v���p�e�B���擾����B
            sUCUrl = PropertyUtil.getProperty(sPropertyUrl, "error");
            
            // �擾���s�������Aerror���擾����B
            if(sUCUrl.equals("error")){
                break;
            }else{
                // �`�F�b�N����Ă��邩�ǂ����`�F�b�N����B
                bBlockage = false;
                for(i=0 ; i < param.getChecked().length ; i++){
                    if((count-1) == Integer.parseInt( param.getChecked()[i])){
                        // �`�F�b�N����Ă���ꍇ�AbBlockage�̒l��true�ɐݒ肷��B
                        bBlockage = true;
                        break;
                    }
                }
                if(bBlockage){
                    // �Ɩ��Ǐ������s��
                    controller.blockade(sUCUrl);
                }else{
                    // �`�F�b�N����Ă��Ȃ��ꍇ�A
                    // �Y��URL���ǂ���Ă��邩�ǂ����`�F�b�N����B
                    if(controller.isBlockaded(sUCUrl)){
                        // �ǂ���Ă���ꍇ�A�J������B
                        controller.open(sUCUrl);
                    }
                }
            }
        }while(sUCUrl != null);
        
        // �Ɩ����X�g�ƕǏ�Ԃ��擾����B
        list = listBlockageService.getUCList();
        return list;
    }
}
