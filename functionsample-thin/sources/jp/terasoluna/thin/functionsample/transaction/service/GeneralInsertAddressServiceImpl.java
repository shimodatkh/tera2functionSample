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

package jp.terasoluna.thin.functionsample.transaction.service;

import jp.terasoluna.thin.functionsample.transaction.bean.AddressVO;
import jp.terasoluna.thin.functionsample.transaction.bean.InsertAddressParam;
import jp.terasoluna.fw.dao.UpdateDAO;

/**
 * ZŠ“o˜^ƒgƒ‰ƒ“ƒUƒNƒVƒ‡ƒ“ˆ—ƒT[ƒrƒXÀ‘•ƒNƒ‰ƒX
 *
 * @version 2006/02/23
 */
public class GeneralInsertAddressServiceImpl
        implements GeneralInsertAddressService<InsertAddressParam> {
    
    /**
     * V‹K“o˜^—pDAOƒNƒ‰ƒXB
     * Spring‚É‚æ‚èƒCƒ“ƒXƒ^ƒ“ƒX¶¬‚³‚êİ’è‚³‚ê‚éB
     */
    protected UpdateDAO updateDAO = null;

    /**
     * ZŠ“o˜^‚ğs‚¤B<br>
     *
     * @param param “ü—Íî•ñ
     */
    public void insertAddress(InsertAddressParam param) {
        //ZŠ“o˜^ˆ—
        AddressVO addressVO = new AddressVO();
        addressVO.setCustomerCode(param.getCustomerCode1());
        addressVO.setCustomerName(param.getCustomerName1());
        addressVO.setPostCode(param.getPostCode1());
        addressVO.setCustomerAddress(param.getCustomerAddress1());
        addressVO.setCustomerTel(param.getCustomerTel1());
        
        updateDAO.execute("transaction.insertAddressInfo", addressVO);

        addressVO = new AddressVO();
        addressVO.setCustomerCode(param.getCustomerCode2());
        addressVO.setCustomerName(param.getCustomerName2());
        addressVO.setPostCode(param.getPostCode2());
        addressVO.setCustomerAddress(param.getCustomerAddress2());
        addressVO.setCustomerTel(param.getCustomerTel2());
        
        updateDAO.execute("transaction.insertAddressInfo", addressVO);
        
        return;
    }
    
    /**
     * V‹K“o˜^—pDAO‚ğæ“¾‚·‚éB
     * @return V‹K“o˜^—pDAO
     */
    public UpdateDAO getUpdateDAO() {
        return updateDAO;
    }

    /**
     * V‹K“o˜^—pDAO‚ğİ’è‚·‚éB
     * @param updateDAO V‹K“o˜^—pDAO
     */
    public void setUpdateDAO(UpdateDAO updateDAO) {
        this.updateDAO = updateDAO;
    }

}
