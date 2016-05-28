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
 * 業務リストと閉塞状態を取得するサービス
 *
 */
public class ListBlockageServiceImpl implements ListBlockageService {
    /**
     * 
     * 業務リストと閉塞状態を取得する。
     *
     * @return 業務閉塞リストと閉塞状態
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
            // 連番を作成
            sCount = "" + ++count;
            // ５桁の連番作成　例）00001
            while(sCount.length() < 5 ){
                sCount = "0" + sCount;
            }
            // 業務名のプロパティ名を取得する。例）blockage.0000x.name
            sPropertyName = "blockage." + sCount + ".name";
            // 業務URLのプロパティ名を取得する。例）blockage.0000x.url
            sPropertyUrl  = "blockage." + sCount + ".url";

            // プロパティから業務名とURLを取得する
            sUCName.add(PropertyUtil.getProperty(sPropertyName, "error"));
            sUCUrl.add(PropertyUtil.getProperty(sPropertyUrl, "error"));
            
            // 取得失敗した時break
            if(sUCName.get(count-1).equals("error")){
                break;
            }
        }while(sUCName != null);
        
        blockageVO = new ListBlockageVO[count-1];

        // 取得した情報を格納
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
     * 業務閉塞状態を取得する。
     *
     * @param path 業務URL
     * @return
     */
    private Boolean isBlockage(String path){
        // 業務閉塞コントローラを取得
        BlockageController controller
                = (BlockageController) 
                  BlockageControlFilter.getBlockageController();
        return controller.isBlockaded(path);
        
    }
}
