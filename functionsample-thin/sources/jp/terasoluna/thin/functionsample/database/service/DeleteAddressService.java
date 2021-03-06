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

package jp.terasoluna.thin.functionsample.database.service;

import java.util.Map;

/**
 * 削除ロジックのインタフェース
 *
 */
public interface DeleteAddressService {

    /**
     * 該当住所情報を削除する処理
     *
     * @param aCustomerCode 顧客コード
     * @return 住所録一覧
     */
    Map<String, Object> resultDeleteAddress(String aCustomerCode);
}