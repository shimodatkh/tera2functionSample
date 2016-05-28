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

package jp.terasoluna.thin.functionsample.exception.bean;

public class ExceptionParam {

    private String forward_exception = null;

    private String forward_systemException = null;

    /**
     * @return forward_exception
     */
    public String getForward_exception() {
        return forward_exception;
    }

    /**
     * @param forward_exception ê›íËÇ∑ÇÈ forward_exception
     */
    public void setForward_exception(String forward_exception) {
        this.forward_exception = forward_exception;
    }

    /**
     * @return forward_systemException
     */
    public String getForward_systemException() {
        return forward_systemException;
    }

    /**
     * @param forward_systemException ê›íËÇ∑ÇÈ forward_systemException
     */
    public void setForward_systemException(String forward_systemException) {
        this.forward_systemException = forward_systemException;
    }

}
