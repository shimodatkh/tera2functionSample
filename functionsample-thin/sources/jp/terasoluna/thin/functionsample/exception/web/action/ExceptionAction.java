/*
 * Copyright (c) 2007-2009 NTT DATA Corporation
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

import jp.terasoluna.fw.service.thin.BLogicResult;
import jp.terasoluna.fw.web.struts.actions.AbstractBLogicAction;
import jp.terasoluna.thin.functionsample.exception.bean.ExceptionParam;
import jp.terasoluna.thin.functionsample.exception.web.exception.DebugException;
import jp.terasoluna.thin.functionsample.exception.web.exception.DefaultException;
import jp.terasoluna.thin.functionsample.exception.web.exception.ErrorException;
import jp.terasoluna.thin.functionsample.exception.web.exception.FatalException;
import jp.terasoluna.thin.functionsample.exception.web.exception.InfoException;
import jp.terasoluna.thin.functionsample.exception.web.exception.TraceException;
import jp.terasoluna.thin.functionsample.exception.web.exception.WarnException;

/**
 * 例外を投げるアクション
 *
 */
public class ExceptionAction extends AbstractBLogicAction {

    /**
     * 例外を投げる。
     *
     * @param param Object
     * @return 結果オブジェクト
     * @throws Exception
     */
    @Override
    public BLogicResult doExecuteBLogic(Object param) throws Exception {
        if (param instanceof ExceptionParam) {
            ExceptionParam exParam = (ExceptionParam) param;
            String fe = exParam.getForward_exception();
            String mes = ExceptionAction.class.getSimpleName() + " threw out "
                    + fe + ".";

            if ("TraceException".equals(fe)) {
                throw new TraceException(mes);
            } else if ("DebugException".equals(fe)) {
                throw new DebugException(mes);
            } else if ("InfoException".equals(fe)) {
                throw new InfoException(mes);
            } else if ("WarnException".equals(fe)) {
                throw new WarnException(mes);
            } else if ("ErrorException".equals(fe)) {
                throw new ErrorException(mes);
            } else if ("FatalException".equals(fe)) {
                throw new FatalException(mes);
            } else if ("DefaultException".equals(fe)) {
                throw new DefaultException(mes);
            } else if ("DebugException".equals(fe)) {
                throw new DebugException(mes);
            }
        }

        // 例外を投げる。
        throw new Exception("other exception.");
    }
}
