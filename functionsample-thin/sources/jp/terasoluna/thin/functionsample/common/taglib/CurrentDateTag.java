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

package jp.terasoluna.thin.functionsample.common.taglib;


import java.util.Calendar;
import java.util.Date;

import javax.servlet.jsp.JspException;
import javax.servlet.jsp.tagext.TagSupport;

/**
 * �N,��,�����o�͂���^�O�N���X�B
 * <br>plusDay���w�肵���ݔN�����{plusDay�̔N�������o�͂���B
 * �g�p��� SC0201.jsp �Q��
 * 
 * @version 1.0
 */
public class CurrentDateTag extends TagSupport {

    /**
     * �V���A���o�[�W����ID
     */
    private static final long serialVersionUID = 2662279743625866206L;

    //���ݓ��t�ɉ������ǉ��������t��Ԃ����B�f�t�H���g�͓����B
    private String plusDay;

    //�ǂ̃t�B�[���h���o�͂��邩�Byear,month,day ���w�肷��B�f�t�H���g��year�B
    private String var;

    public void setPlusDay(String plusDay) {
        this.plusDay = plusDay;
    }

    public void setVar(String var) {
        this.var = var;
    }
    
    /**
     * �^�O�]���J�n���ɌĂ΂�郁�\�b�h�B
     *
     * @return ��������w���B��� <code>SKIP_BODY</code>
     * @throws JspException JSP��O
     */
    public int doStartTag() throws JspException {
        
        //�o�͂��镶����
        String result;
        
        int plus = 0;
        
        if (plusDay != null && !"".equals(plusDay)) {
            plus = Integer.parseInt(plusDay);
        }

        Date date = new Date();

        Calendar calendar = Calendar.getInstance();
        calendar.setTime(date);

        result = String.valueOf(calendar.get(Calendar.YEAR));

        //�N�����̂ǂ���o�͂��邩
        if (var != null && !"".equals(var)) {
            if (var.equals("year")) {
                
                //�N���w�萔���A�i�߂�
                for (int i = 0; i < plus; i++) {
                    calendar.add(Calendar.YEAR, 1);
                }
                result = String.valueOf(calendar.get(Calendar.YEAR));
            }
            else if (var.equals("month")) {
                
                //Calendar.MONTH��0����n�܂邽�߁A1��ǉ�����B
                calendar.add(Calendar.MONTH, 1);
                
                //�����w�萔���A�i�߂�
                for (int i = 0; i < plus; i++) {
                    calendar.add(Calendar.MONTH, 1);
                }
                result = String.valueOf(calendar.get(Calendar.MONTH));
            }
            else if (var.equals("day")) {
                
                //�����w�萔���A�i�߂�
                for (int i = 0; i < plus; i++) {
                    calendar.add(Calendar.DATE, 1);
                }
                result = String.valueOf(calendar.get(Calendar.DATE));
            }
        }

        try {
            pageContext.getOut().print(result);
        } catch (Exception ex) {
            throw new JspException(ex);
        }
        return SKIP_BODY;
    }
}