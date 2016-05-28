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

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

import jp.terasoluna.thin.functionsample.blockage.bean.ListBlockageVO;
import jp.terasoluna.thin.functionsample.blockage.web.BlockageController;
import jp.terasoluna.fw.util.PropertyUtil;
import jp.terasoluna.fw.web.thin.BlockageControlFilter;

/**
 * �Ɩ����X�g�ƕǏ�Ԃ��擾����T�[�r�X
 *
 */
public class ListBlockageServiceImpl implements ListBlockageService {
    /**
     * 
     * �Ɩ����X�g�ƕǏ�Ԃ��擾����B
     *
     * @return �Ɩ��ǃ��X�g�ƕǏ��
     */
    public Map<String, Object> getUCList(){
        Map<String, Object> retMap = new HashMap<String, Object>();
        ArrayList<String> sUCName = new ArrayList<String>();
        ArrayList<String> sUCUrl = new ArrayList<String>();
        ListBlockageVO[] blockageVO;
        
        String sPropertyName = null;
        String sPropertyUrl  = null;
        
        String sCount = null;
        
        int i;
        int count = 0;
        
        do{
            // �A�Ԃ��쐬
            sCount = "" + ++count;
            // �T���̘A�ԍ쐬�@��j00001
            while(sCount.length() < 5 ){
                sCount = "0" + sCount;
            }
            // �Ɩ����̃v���p�e�B�����擾����B��jblockage.0000x.name
            sPropertyName = "blockage." + sCount + ".name";
            // �Ɩ�URL�̃v���p�e�B�����擾����B��jblockage.0000x.url
            sPropertyUrl  = "blockage." + sCount + ".url";

            // �v���p�e�B����Ɩ�����URL���擾����
            sUCName.add(PropertyUtil.getProperty(sPropertyName, "error"));
            sUCUrl.add(PropertyUtil.getProperty(sPropertyUrl, "error"));
            
            // �擾���s������break
            if(sUCName.get(count-1).equals("error")){
                break;
            }
        }while(sUCName != null);
        
        blockageVO = new ListBlockageVO[count-1];

        // �擾���������i�[
        for(i=0 ; i < count-1 ; i++ ){
            blockageVO[i] = new ListBlockageVO();
            blockageVO[i].setUcName(sUCName.get(i));
            blockageVO[i].setChecked(isBlockage(sUCUrl.get(i)).toString());
        }
        
        retMap.put("listBlockage", blockageVO);
        return retMap;
    }
    
    /**
     * 
     * �Ɩ��Ǐ�Ԃ��擾����B
     *
     * @param path �Ɩ�URL
     * @return
     */
    private Boolean isBlockage(String path){
        // �Ɩ��ǃR���g���[�����擾
        BlockageController controller
                = (BlockageController) 
                  BlockageControlFilter.getBlockageController();
        return controller.isBlockaded(path);
        
    }
}
