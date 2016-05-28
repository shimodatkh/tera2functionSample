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

package jp.terasoluna.thin.functionsample.reset.web.form;


import java.util.HashMap;
import java.util.Map;

import jp.terasoluna.thin.functionsample.reset.bean.NestedParam;
import jp.terasoluna.fw.web.struts.form.ValidatorActionFormEx;
/**
 * フォームプロパティリセット(UC 12)で使われるアクションフォーム
 * 
 *
 */
public class ResetForm extends ValidatorActionFormEx {

    /**
     * シリアルバージョンID
     */
    private static final long serialVersionUID = 1446454138509651127L;

    /**
     * 一般リセット項目１
     */
    private Boolean testItem1 = null;
    
    /**
     * 一般リセット項目2
     */
    private Boolean testItem2 = null;
    
    /**
     * 一般リセット項目3
     */
    private Boolean testItem3 = null;
    
    /**
     * 一般リセット項目4
     */
    private Boolean testItem4 = null;
    
    /**
     * 一般リセット項目5
     */
    private Boolean testItem5 = null;

    /**
     * mapタイプのリセット項目
     */
    private Map<String,String> mapItems = new HashMap<String,String>();
    
    /**
     * ネストされたビーンリストリセット項目1
     */
    private NestedParam[] rows1 = new NestedParam[5];
    
    /**
     * ネストされたビーンリストリセット項目2
     */
    private NestedParam[] rows2 = new NestedParam[5];
    
    /**
     * アクションフォームの生成時の処理
     */
    public ResetForm() {
        
        //一般リセット項目の初期化
        this.testItem1 = true;
        this.testItem2 = true;
        this.testItem3 = true;
        this.testItem4 = true;
        this.testItem5 = true;
        
        // mapタイプのリセット項目の初期化
        this.mapItems.put("mapItem1","On");
        this.mapItems.put("mapItem2","On");
        this.mapItems.put("mapItem3","On");
        this.mapItems.put("mapItem4","On");
        this.mapItems.put("mapItem5","On");
        
        // ネストされたビーンリストリセット項目1の初期化
        this.rows1[0] = new NestedParam();
        this.rows1[1] = new NestedParam();
        this.rows1[2] = new NestedParam();
        this.rows1[3] = new NestedParam();
        this.rows1[4] = new NestedParam();
        
        // ネストされたビーンリストリセット項目2の初期化
        this.rows2[0] = new NestedParam();
        this.rows2[1] = new NestedParam();
        this.rows2[2] = new NestedParam();
        this.rows2[3] = new NestedParam();
        this.rows2[4] = new NestedParam();
    }

    /**
     * mapItemsを取得する。
     * @return mapItems
     */
    public Map<String, String> getMapItems() {
        return mapItems;
    }

    /**
     * mapItemsを設定する。
     * @param mapItems mapItems。
     */
    public void setMapItems(Map<String, String> mapItems) {
        this.mapItems = mapItems;
    }

    /**
     * rows1を取得する。
     * @return rows1
     */
    public NestedParam[] getRows1() {
        return rows1;
    }

    /**
     * rows1を設定する。
     * @param rows1 rows1。
     */
    public void setRows1(NestedParam[] rows1) {
        this.rows1 = rows1;
    }

    /**
     * rows2を取得する。
     * @return rows2
     */
    public NestedParam[] getRows2() {
        return rows2;
    }

    /**
     * rows2を設定する。
     * @param rows2 rows2。
     */
    public void setRows2(NestedParam[] rows2) {
        this.rows2 = rows2;
    }

    /**
     * testItem1を取得する。
     * @return testItem1
     */
    public Boolean getTestItem1() {
        return testItem1;
    }

    /**
     * testItem1を設定する。
     * @param testItem1 testItem1。
     */
    public void setTestItem1(Boolean testItem1) {
        this.testItem1 = testItem1;
    }

    /**
     * testItem2を取得する。
     * @return testItem2
     */
    public Boolean getTestItem2() {
        return testItem2;
    }

    /**
     * testItem2を設定する。
     * @param testItem2 testItem2。
     */
    public void setTestItem2(Boolean testItem2) {
        this.testItem2 = testItem2;
    }

    /**
     * testItem3を取得する。
     * @return testItem3
     */
    public Boolean getTestItem3() {
        return testItem3;
    }

    /**
     * testItem3を設定する。
     * @param testItem3 testItem3。
     */
    public void setTestItem3(Boolean testItem3) {
        this.testItem3 = testItem3;
    }

    /**
     * testItem4を取得する。
     * @return testItem4
     */
    public Boolean getTestItem4() {
        return testItem4;
    }

    /**
     * testItem4を設定する。
     * @param testItem4 testItem4。
     */
    public void setTestItem4(Boolean testItem4) {
        this.testItem4 = testItem4;
    }

    /**
     * testItem5を取得する。
     * @return testItem5
     */
    public Boolean getTestItem5() {
        return testItem5;
    }

    /**
     * testItem5を設定する。
     * @param testItem5 testItem5。
     */
    public void setTestItem5(Boolean testItem5) {
        this.testItem5 = testItem5;
    }
}
