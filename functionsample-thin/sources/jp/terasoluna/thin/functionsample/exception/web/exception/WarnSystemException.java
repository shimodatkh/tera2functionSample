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

package jp.terasoluna.thin.functionsample.exception.web.exception;

import jp.terasoluna.fw.exception.SystemException;

public class WarnSystemException extends SystemException {

    /**
     * serialVersionUID.
     */
    private static final long serialVersionUID = 8198356713822804551L;

    public WarnSystemException(Throwable cause) {
        super(cause);
    }

    public WarnSystemException(Throwable cause, String errorCode) {
        super(cause, errorCode);
    }

    public WarnSystemException(Throwable cause, String errorCode,
            String[] optionStrings) {
        super(cause, errorCode, optionStrings);
    }

    public WarnSystemException(Throwable cause, String errorCode, String s0) {
        super(cause, errorCode, s0);
    }

    public WarnSystemException(Throwable cause, String errorCode, String s0,
            String s1) {
        super(cause, errorCode, s0, s1);
    }

    public WarnSystemException(Throwable cause, String errorCode, String s0,
            String s1, String s2) {
        super(cause, errorCode, s0, s1, s2);
    }

    public WarnSystemException(Throwable cause, String errorCode, String s0,
            String s1, String s2, String s3) {
        super(cause, errorCode, s0, s1, s2, s3);
    }
}
