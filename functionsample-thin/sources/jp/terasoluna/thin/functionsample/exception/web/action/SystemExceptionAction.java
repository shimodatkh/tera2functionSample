/*
 * Copyright (c) 2009 NTT DATA Corporation
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

package jp.terasoluna.thin.functionsample.exception.web.action;

import jp.terasoluna.fw.exception.SystemException;
import jp.terasoluna.fw.service.thin.BLogicResult;
import jp.terasoluna.fw.web.struts.actions.AbstractBLogicAction;
import jp.terasoluna.thin.functionsample.exception.bean.ExceptionParam;
import jp.terasoluna.thin.functionsample.exception.web.exception.DebugSystemException;
import jp.terasoluna.thin.functionsample.exception.web.exception.DefaultSystemException;
import jp.terasoluna.thin.functionsample.exception.web.exception.ErrorSystemException;
import jp.terasoluna.thin.functionsample.exception.web.exception.FatalSystemException;
import jp.terasoluna.thin.functionsample.exception.web.exception.InfoSystemException;
import jp.terasoluna.thin.functionsample.exception.web.exception.TraceSystemException;
import jp.terasoluna.thin.functionsample.exception.web.exception.WarnSystemException;

/**
 * システム例外を投げるアクション
 *
 */
public class SystemExceptionAction extends AbstractBLogicAction {

    /**
     * システム例外を投げる。
     *
     * @param param Object
     * @return 結果オブジェクト
     * @throws Exception
     */
    @Override
    public BLogicResult doExecuteBLogic(Object param) throws Exception {
        if (param instanceof ExceptionParam) {
            ExceptionParam exParam = (ExceptionParam) param;
            String fe = exParam.getForward_systemException();
            String mes = SystemExceptionAction.class.getSimpleName()
                    + " threw out " + fe + ".";

            if ("TraceSystemException".equals(fe)) {
                throw new TraceSystemException(new Exception(),
                        "error.UC14.00001", mes);
            } else if ("DebugSystemException".equals(fe)) {
                throw new DebugSystemException(new Exception(),
                        "error.UC14.00002", mes);
            } else if ("InfoSystemException".equals(fe)) {
                throw new InfoSystemException(new Exception(),
                        "error.UC14.00003", mes);
            } else if ("WarnSystemException".equals(fe)) {
                throw new WarnSystemException(new Exception(),
                        "error.UC14.00004", mes);
            } else if ("ErrorSystemException".equals(fe)) {
                throw new ErrorSystemException(new Exception(),
                        "error.UC14.00005", mes);
            } else if ("FatalSystemException".equals(fe)) {
                throw new FatalSystemException(new Exception(),
                        "error.UC14.00006", mes);
            } else if ("DefaultSystemException".equals(fe)) {
                throw new DefaultSystemException(new Exception(),
                        "error.UC14.00007", mes);
            }
        }

        // システム例外を投げる。
        throw new SystemException(new Exception(), "error.UC14.00008");
    }
}
