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

package jp.terasoluna.thin.functionsample.pagelink.service;

import java.util.HashMap;
import java.util.Map;

import jp.terasoluna.thin.functionsample.pagelink.bean.AddressBean;
import jp.terasoluna.thin.functionsample.pagelink.bean.UserBean;
import jp.terasoluna.fw.dao.QueryDAO;

/**
 * 一覧情報取得ビジネスロジック。
 *
 * データベースから画面に表示する件数のみ一覧情報を取得する。
 * また、一覧情報の全件数も取得する。
 *
 */
public class ListServiceImpl implements ListService {

    /**
     * DAOクラス。
     * Springによりインスタンス生成され設定される。
     */
    protected QueryDAO dao = null;

    /**
     * QueryDAOを返却する。
     *
     * @return 保持するQueryDAO
     */
    public QueryDAO getDao() {
        return dao;
    }

    /**
     * QueryDAOを設定する。
     *
     * @param dao QueryDAO
     */
    public void setDao(QueryDAO dao) {
        this.dao = dao;
    }

    /**
     * データベースから一覧情報を取得する。
     * 引数から1ページの表示件数と開始インデックスを取得し、QueryDAOに渡す。
     * また、一覧情報の全件数も取得し返却する。
     *
     * @param map 表示件数、開始インデックスを保持したMap
     * @return 一覧情報、全件数を保持したMap
     */
    public Map<String, Object> getUserList(Map<String, String> map) {

        String strIndex1 = map.get("startIndex1");
        String strRow1 = map.get("row1");
        String strIndex2 = map.get("startIndex2");
        String strRow2 = map.get("row2");
        
        int startIndex1 = 0;
        int row1 = 10;
        if (strIndex1 != null) {
            try {
                startIndex1 = Integer.parseInt(strIndex1);
            } catch (NumberFormatException e) {
                startIndex1 = 0;
            }
        }
        if (strRow1 != null) {
            try {
                row1 = Integer.parseInt(strRow1);
            } catch (NumberFormatException e) {
                row1 = 10;
            }
        }
        int startIndex2 = 0;
        int row2 = 7;
        if (strIndex2 != null) {
            try {
                startIndex2 = Integer.parseInt(strIndex2);
            } catch (NumberFormatException e) {
                startIndex2 = 0;
            }
        }
        if (strRow2 != null) {
            try {
                row2 = Integer.parseInt(strRow2);
            } catch (NumberFormatException e) {
                row2 = 7;
            }
        }
        UserBean[] bean1 = dao.executeForObjectArray(
                "pageLink.selectUserList", null,
                UserBean.class, startIndex1, row1);

        Map<String, Object> retMap = new HashMap<String, Object>();
        retMap.put("totalCount1", getUserCount());
        retMap.put("userBeans1", bean1);
        AddressBean[] bean2 = dao.executeForObjectArray(
                "pageLink.selectAddressList", null,
                AddressBean.class, startIndex2, row2);

        retMap.put("totalCount2", getAddressCount());
        retMap.put("userBeans2", bean2);
        
        retMap.put("startIndex1", strIndex1);
        retMap.put("startIndex2", strIndex2);
        return retMap;

    }

    /**
     * 一覧情報の全件数を取得して返却する。
     *
     * @return 取得した件数文字列
     */
    private String getUserCount() {

        String count
            = dao.executeForObject("pageLink.selectUserCount", null, String.class);
        if (count == null || "".equals(count)) {
            count = "0";
        }
        return count;
    }

    /**
     * 一覧情報の全件数を取得して返却する。
     *
     * @return 取得した件数文字列
     */
    private String getAddressCount() {

        String count
            = dao.executeForObject("pageLink.selectAddressCount", null, String.class);
        if (count == null || "".equals(count)) {
            count = "0";
        }
        return count;
    }
}