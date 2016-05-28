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
 * 業務閉塞、閉塞解除を行うサービスクラス
 * <p>
 * チェックされた業務に対して閉塞処理を行う
 *
 */
public class BlockageServiceImpl implements BlockageService {
    /**
     * 業務リストを取得するサービス
     */
    protected ListBlockageService listBlockageService = null;
    /**
     * listBlockageServiceを取得する。
     * @return listBlockageService
     */
    public ListBlockageService getListBlockageService() {
        return listBlockageService;
    }
    /**
     * listBlockageServiceを設定する。
     * @param listBlockageService listBlockageService。
     */
    public void setListBlockageService
                                    (ListBlockageService listBlockageService) {
        this.listBlockageService = listBlockageService;
    }
    /**
     * チェックされた業務を閉塞する。
     * チェックされていない場合、業務閉塞を開放する。
     *
     * @param param 閉塞チェック状態
     * @return 業務閉塞リストと閉塞状態
     */
    public Map<String, Object> blockage(BlockageParam param){
        Map<String, Object> list = null;
        String sPropertyUrl  = null;
        String sCount = null;
        String sUCUrl = null;
        boolean bBlockage = false;
        int count = 0;
        int i;
        
        // コントローラを取得する
        BlockageController controller
                = (BlockageController) 
                    BlockageControlFilter.getBlockageController();
        
        do{
            // ５桁の連番を作る。
            sCount = "" + ++count;
            while(sCount.length() < 5 ){
                sCount = "0" + sCount;
            }
            // プロパティ名を取得する。例）blockage.連番.url
            sPropertyUrl  = "blockage." + sCount + ".url";

            // 指定されたキーのプロパティを取得する。
            sUCUrl = PropertyUtil.getProperty(sPropertyUrl, "error");
            
            // 取得失敗した時、errorを取得する。
            if(sUCUrl.equals("error")){
                break;
            }else{
                // チェックされているかどうかチェックする。
                bBlockage = false;
                for(i=0 ; i < param.getChecked().length ; i++){
                    if((count-1) == Integer.parseInt( param.getChecked()[i])){
                        // チェックされている場合、bBlockageの値をtrueに設定する。
                        bBlockage = true;
                        break;
                    }
                }
                if(bBlockage){
                    // 業務閉塞処理を行う
                    controller.blockade(sUCUrl);
                }else{
                    // チェックされていない場合、
                    // 該当URLが閉塞されているかどうかチェックする。
                    if(controller.isBlockaded(sUCUrl)){
                        // 閉塞されている場合、開放する。
                        controller.open(sUCUrl);
                    }
                }
            }
        }while(sUCUrl != null);
        
        // 業務リストと閉塞状態を取得する。
        list = listBlockageService.getUCList();
        return list;
    }
}
