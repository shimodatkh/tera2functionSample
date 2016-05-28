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

import org.apache.struts.taglib.html.Constants;
import org.apache.struts.taglib.html.SelectTag;

/**
 * �N,��,����Option�^�O���o�͂���^�O�N���X�B
 * <br><code>selected="true"</code>�Ƃ����ꍇ�A���ݔN�����{plusDay�̔N������
 * selected���w�肷��Option�^�O���o�͂���B
 * <br><code>selected="false"</code>�Ƃ����ꍇ�AForm�̔N������selected�w�肷��B
 * Form�ɏ�񂪂Ȃ��ꍇ��selected�w��͂����A���ݔN�A1���A1�����\������邱��
 * �ɂȂ�B
 * <br>�N,��,���̂ǂ���o�͂��邩�́A<code>var ="day"</code>�̂悤�Ɏw�肷��B
 * �i�K�{�j
 * <br>���ӁF�Z���N�g�^�O�̒l���Q�Ƃ��邽�߁A��html:select���̓����Ŏg�p���邱�ƁB
 * <br>���ӁF30���܂ł̌��A���邤�N�v�Z�͍s�킸�A���I�ɓ����ς��悤�ȓ����
 * ���Ȃ��B
 * <br>�g�p��F
 *<code>
 * <html:select property="checkinYear">
 *   <thz:currentDateOptions var ="year" selected="true" plusDay="1"/>
 * </html:select>�N
 *
 * <html:select property="checkinMonth">
 *   <thz:currentDateOptions var ="month" selected="true" plusDay="1"/>
 * </html:select>��
 * <html:select property="checkinDay" >
 *   <thz:currentDateOptions var ="day" selected="true" plusDay="1"/>
 * </html:select>��
 *</code>
 *�����̔N������selected�w�肳���Z���N�g�{�b�N�X���o�͂����B
 *
 * @version 1.0
 */
public class CurrentDateOptionsTag extends TagSupport {

    /**
     * �V���A���o�[�W����ID
     */
    private static final long serialVersionUID = 8856958350065973508L;

    //�ǂ̃t�B�[���h���o�͂��邩�Bmonth,day ���w�肷��B�f�t�H���g��month�B
    private String var;

    //�i�߂����
    private String plusDay;

    //selected��ǉ����邩�ǂ���
    private boolean selected = true;

    public void setVar(String var) {
        this.var = var;
    }

    public void setPlusDay(String plusDay) {
        this.plusDay = plusDay;
    }

    public void setSelected(boolean selected) {
        this.selected = selected;
    }
    /**
     * �^�O�]���J�n���ɌĂ΂�郁�\�b�h�B
     *
     * @return ��������w���B��� <code>SKIP_BODY</code>
     * @throws JspException JSP��O
     */
    public int doStartTag() throws JspException {

        //�o�͂��镶����
        StringBuffer result = new StringBuffer("");

        //selected�w�肷����t�܂Ői�߂����
        int plus = 0;

        if (!"".equals(plusDay) && !(plusDay == null)) {
            plus = Integer.parseInt(plusDay);
        }

        Date date = new Date();

        Calendar calendar = Calendar.getInstance();
        calendar.setTime(date);
        //�i�߂���̓��t���擾
        calendar.add(Calendar.DATE, plus);
        
        if (var != null && !"".equals(var)) {
            
            //�N�����̂ǂ���o�͂��邩
            //���w��̏ꍇ
            if (var.equals("month")) {

                //Calendar.MONTH��0����n�܂邽�߁A1��ǉ�����B
                calendar.add(Calendar.MONTH, 1);

                for (int i = 0; i < 12; i++) {
                    //Option�^�O(value����)�̏o��
                    result.append("<option value= \"" + String.valueOf(i + 1)
                            + "\"");
                    //selected�w�肳��Ă���ꍇ�A�����̌���selected��t�^����
                    //�w�肳��Ă��Ȃ��ꍇ�A�t�H�[�����Ɠ�������selected��t�^����
                    if ((selected && i + 1 == calendar.get(Calendar.MONTH))
                            || (!selected && this.selectTag().isMatched(
                                    String.valueOf(i + 1)))) {
                        //selected�����̏o��
                        result.append(" selected=\"selected\"");
                    }
                    //Option�^�O(�{�f�B��)�̏o�́B
                    //HTML���o�͂��邽�߁A���^�O�͂Ȃ��B
                    result.append(">");
                    result.append(String.valueOf(i + 1));
                }
                //���w��̏ꍇ
                } else if (var.equals("day")) {

                //�����w�萔���A�i�߂�
                for (int i = 0; i < 31; i++) {
                    result.append("<option value= \"" + String.valueOf(i + 1)
                            + "\"");
                    //selected�w�肳��Ă���ꍇ�A�����̓���selected��t�^����
                    //�w�肳��Ă��Ȃ��ꍇ�A�t�H�[�����Ɠ�������selected��t�^����
                    if ((selected && i + 1 == calendar.get(Calendar.DATE))
                            || (!selected && this.selectTag().isMatched(
                                    String.valueOf(i + 1)))) {
                        //selected�����̏o��
                        result.append(" selected=\"selected\"");
                    }
                    //Option�^�O(�{�f�B��)�̏o�́B
                    //HTML���o�͂��邽�߁A���^�O�͂Ȃ��B
                    result.append(">");
                    result.append(String.valueOf(i + 1));
                }
                //�N�w��̏ꍇ
                } else if (var.equals("year")){
                //�N���w�萔���A�i�߂�
                for (int i = 0; i < 2; i++) {
                    result.append("<option value= \"" +
                            String.valueOf(i + calendar.get(Calendar.YEAR))
                            + "\"");
                    //selected�w�肳��Ă���ꍇ�A�����̔N��selected��t�^����
                    //�w�肳��Ă��Ȃ��ꍇ�A�t�H�[�����Ɠ����N��selected��t�^����
                    if ((selected && i + calendar.get(Calendar.YEAR) ==
                        calendar.get(Calendar.YEAR))||
                       (!selected && this.selectTag().isMatched(
                                    String.valueOf(i + calendar.
                                            get(Calendar.YEAR))))) {
                        //selected�����̏o��
                        result.append(" selected=\"selected\"");
                    }
                    //Option�^�O(�{�f�B��)�̏o�́B
                    //HTML���o�͂��邽�߁A���^�O�͂Ȃ��B
                    result.append(">");
                    result.append(String.valueOf(i + calendar.get(Calendar.YEAR)));
                }
            }
            
        }

        try {
            //���������^�O�̏o��
            pageContext.getOut().print(result.toString());
        } catch (Exception ex) {
            throw new JspException(ex);
        }
        //�X�L�b�v�{�f�B��ԋp
        return SKIP_BODY;
    }

    //�y�[�W�R���e�L�X�g�̃Z���N�g�^�O�̎Q�Ƃ��擾���郁�\�b�h
    private SelectTag selectTag() throws JspException {
        SelectTag selectTag = (SelectTag) pageContext
                .getAttribute(Constants.SELECT_KEY);

        if (selectTag == null) {
            throw new JspException();
        }

        return selectTag;
    }
}