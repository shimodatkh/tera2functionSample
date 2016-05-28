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

package jp.terasoluna.thin.functionsample.common.bean;

import jp.terasoluna.thin.functionsample.common.FunctionUVO;

/**
 * ログオン処理で使われるResultクラス
 * 
 * @see jp.terasoluna.thin.functionsample.common.FunctionUVO
 */
public class LogonResult {

    /**
     * UVOクラス
     */
    private FunctionUVO uvo;

    /**
     * FunctionUVOを取得する。
     * @return FunctionUVO
     */
    public FunctionUVO getUvo() {
        return uvo;
    }

    /**
     * FunctionUVOを設定する。
     * @param uvo
     */
    public void setUvo(FunctionUVO uvo) {
        this.uvo = uvo;
    }
}