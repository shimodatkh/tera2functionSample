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
 * �f�o�b�O���x���̃��O���o�͂��邽�߂̃C���^�Z�v�^
 * 
 */
public class FunctionDebugInterceptor extends SimpleTraceInterceptor {

    /**
     * �V���A���o�[�W����ID
     */
    private static final long serialVersionUID = 6350482237743804401L;

    /**
     * ���O�N���X���擾���A���O�o�͂̔�����s���B
     * 
     * @param invocation �{���Ăяo����郁�\�b�h
     * @return �{���Ăяo����郁�\�b�h�̌���
     */
    @Override
    public Object invoke(MethodInvocation invocation) throws Throwable {

        //���O�N���X�̐���
        Log logger = getLoggerForInvocation(invocation);

        if (logger.isDebugEnabled()) {
            //���O�̏o�͂���і{���Ăяo����郁�\�b�h���ĂсA���ʂ�ԋp����B
            return invokeUnderTrace(invocation, logger);
        }
        else {
            //���O�o�͂��s��Ȃ��ꍇ�́A
            //�{���Ăяo����郁�\�b�h���ĂсA���ʂ�ԋp����B
            return invocation.proceed();
        }
    }

    /**
     * �J�n���O�̏o�́A���\�b�h�̎��s�A�I�����O�̏o�͂��s���B
     * 
     * @param invocation �{���Ăяo����郁�\�b�h
     * @param logger ���O�N���X
     * @return MethodInvocation.proceed()�̌���
     */
    @Override
    protected Object invokeUnderTrace(MethodInvocation invocation, Log logger)
        throws Throwable {

        //�{���Ăяo����郁�\�b�h�����擾
        String invocationDescription = getInvocationDescription(invocation);

        //�J�n���O�̏o��
        logger.debug("Start:" + invocationDescription);

        try {
            //�{���Ăяo����郁�\�b�h���Ăяo��
            Object rval = invocation.proceed();

            //�I�����O�̏o��
            logger.debug("End:" + invocationDescription);

            //���ʂ̕ԋp
            return rval;

        } catch (Throwable ex) {
            //��O�����������ۂ̃��O�o��
            logger.debug("Exception thrown in:" + invocationDescription, ex);
            throw ex;
        }
    }
}