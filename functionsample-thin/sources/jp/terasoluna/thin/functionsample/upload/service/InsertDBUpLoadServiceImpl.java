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

package jp.terasoluna.thin.functionsample.upload.service;

import java.util.Map;

import jp.terasoluna.thin.functionsample.upload.bean.TupdownloadVO;
import jp.terasoluna.fw.dao.UpdateDAO;

/**
 * ＤＢにコードリストを登録するサービス
 * 
 */
public class InsertDBUpLoadServiceImpl implements InsertDBUpLoadService {

    /**
     * DAOクラス。 Springによりインスタンス生成され設定される。
     */
    protected UpdateDAO updateDAO = null;

    /**
     * DBにファイルを登録する。
     * 
     * @param aParam
     *            UpdateAddressParam
     * @return TupdownloadVO
     */

    public Map<String, Object> insertDBUpLoad(TupdownloadVO aParam) {

        updateDAO.execute("upload.insertUpLoad", aParam);

        return null;
    }

    /**
     * updateDAOを取得する。
     * 
     * @return updateDAO
     */
    public UpdateDAO getUpdateDAO() {
        return updateDAO;
    }

    /**
     * updateDAOを設定する。
     * 
     * @param updateDAO
     *            updateDAO。
     */
    public void setUpdateDAO(UpdateDAO updateDAO) {
        this.updateDAO = updateDAO;
    }

}
