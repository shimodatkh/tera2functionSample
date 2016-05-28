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

package jp.terasoluna.thin.functionsample.blockage.bean;

import java.io.Serializable;

/**
 * 業務閉塞機能で使われるパラメータクラス
 *
 */
public class BlockageParam implements Serializable{

    /**
     * シリアルバージョンID
     */
    private static final long serialVersionUID = 5231193317084927554L;
    /**
     * 業務閉塞状態
     */
    private String[] checked = null;

    /**
     * checkedを取得する。
     * @return checked
     */
    public String[] getChecked() {
        return checked;
    }

    /**
     * checkedを設定する。
     * @param checked checked。
     */
    public void setChecked(String[] checked) {
        this.checked = checked;
    }

}
