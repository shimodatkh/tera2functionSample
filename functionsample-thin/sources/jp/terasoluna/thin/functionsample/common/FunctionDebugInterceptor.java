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

package jp.terasoluna.thin.functionsample.common;

import org.aopalliance.intercept.MethodInvocation;
import org.apache.commons.logging.Log;
import org.springframework.aop.interceptor.SimpleTraceInterceptor;

/**
 * デバッグレベルのログを出力するためのインタセプタ
 * 
 */
public class FunctionDebugInterceptor extends SimpleTraceInterceptor {

    /**
     * シリアルバージョンID
     */
    private static final long serialVersionUID = 6350482237743804401L;

    /**
     * ログクラスを取得し、ログ出力の判定を行う。
     * 
     * @param invocation 本来呼び出されるメソッド
     * @return 本来呼び出されるメソッドの結果
     */
    @Override
    public Object invoke(MethodInvocation invocation) throws Throwable {

        //ログクラスの生成
        Log logger = getLoggerForInvocation(invocation);

        if (logger.isDebugEnabled()) {
            //ログの出力および本来呼び出されるメソッドを呼び、結果を返却する。
            return invokeUnderTrace(invocation, logger);
        }
        else {
            //ログ出力を行わない場合は、
            //本来呼び出されるメソッドを呼び、結果を返却する。
            return invocation.proceed();
        }
    }

    /**
     * 開始ログの出力、メソッドの実行、終了ログの出力を行う。
     * 
     * @param invocation 本来呼び出されるメソッド
     * @param logger ログクラス
     * @return MethodInvocation.proceed()の結果
     */
    @Override
    protected Object invokeUnderTrace(MethodInvocation invocation, Log logger)
        throws Throwable {

        //本来呼び出されるメソッド名を取得
        String invocationDescription = getInvocationDescription(invocation);

        //開始ログの出力
        logger.debug("Start:" + invocationDescription);

        try {
            //本来呼び出されるメソッドを呼び出す
            Object rval = invocation.proceed();

            //終了ログの出力
            logger.debug("End:" + invocationDescription);

            //結果の返却
            return rval;

        } catch (Throwable ex) {
            //例外が発生した際のログ出力
            logger.debug("Exception thrown in:" + invocationDescription, ex);
            throw ex;
        }
    }
}