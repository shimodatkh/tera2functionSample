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

package jp.terasoluna.thin.functionsample.write.web.form;

import jp.terasoluna.fw.web.struts.form.ValidatorActionFormEx;

/**
 * write機能で使われるActionForm
 * 
 */
public class WriteForm extends ValidatorActionFormEx {

    /**
     * シリアルバージョンID
     */
    private static final long serialVersionUID = -17204792830066817L;

    /**
     * 出力対象文字列１。
     */
    private String write1 = "writeタグサンプル１";

    /**
     * 出力対象文字列２。
     */
    private String write2 = null;

    /**
     * 出力対象文字列１を返却する。
     * 
     * @return 出力対象文字列１
     */
    public String getWrite1() {
        return write1;
    }
    
    /**
     * 出力対象文字列１を設定する。
     * 
     * @param write1 出力対象文字列１
     */
    public void setWrite1(String write1) {
        this.write1 = write1;
    }
    
    /**
     * 出力対象文字列２を返却する。
     * 
     * @return 出力対象文字列２
     */
    public String getWrite2() {
        return write2;
    }
    
    /**
     * 出力対象文字列２を設定する。
     * 
     * @param write2 出力対象文字列２
     */
    public void setWrite2(String write2) {
        this.write2 = write2;
    }
}
