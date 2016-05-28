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

package jp.terasoluna.thin.functionsample.download.service;

import java.util.HashMap;
import java.util.Map;

import jp.terasoluna.thin.functionsample.download.bean.FileDownLoadMenuBean;
import jp.terasoluna.fw.dao.QueryDAO;

/**
 * 一覧情報取得ビジネスロジック。
 * 
 * データベースから画面に表示する情報を取得する。 また、一覧情報の全件数も取得する。
 * 
 */
public class FileDownLoadMenuServiceImpl implements FileDownLoadMenuService {

    /**
     * DAOクラス。 Springによりインスタンス生成され設定される。
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
     * @param dao
     *            QueryDAO
     */
    public void setDao(QueryDAO dao) {
        this.dao = dao;
    }

    /**
     * データベースから一覧情報を取得する。 また、一覧情報の全件数も取得し返却する。
     * 
     * @param arg0
     *            オブジェクト
     * @return 一覧情報
     */
    public Map<String, Object> getFileList(Object arg0) {

        FileDownLoadMenuBean[] beans = dao.executeForObjectArray(
                "upload.selectListDownload", null, FileDownLoadMenuBean.class);

        Map<String, Object> retMap = new HashMap<String, Object>();
        // 一覧情報の全件数を取得する
        retMap.put("totalCount", getFileCount());
        // 一覧情報を取得する
        retMap.put("fileBeans", beans);

        return retMap;

    }

    /**
     * 一覧情報の全件数を取得して返却する。
     * 
     * @return 取得した件数文字列
     */
    private Integer getFileCount() {

        Integer count = (Integer) dao.executeForObject("upload.selectFileCount", null,
                Integer.class);

        return count;
    }

}