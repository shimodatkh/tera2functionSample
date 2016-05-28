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
 * 年,月,日を出力するタグクラス。
 * <br>plusDayを指定し現在年月日＋plusDayの年月日を出力する。
 * 使用例は SC0201.jsp 参照
 * 
 * @version 1.0
 */
public class CurrentDateTag extends TagSupport {

    /**
     * シリアルバージョンID
     */
    private static final long serialVersionUID = 2662279743625866206L;

    //現在日付に何日分追加した日付を返すか。デフォルトは当日。
    private String plusDay;

    //どのフィールドを出力するか。year,month,day を指定する。デフォルトはyear。
    private String var;

    public void setPlusDay(String plusDay) {
        this.plusDay = plusDay;
    }

    public void setVar(String var) {
        this.var = var;
    }
    
    /**
     * タグ評価開始時に呼ばれるメソッド。
     *
     * @return 処理制御指示。常に <code>SKIP_BODY</code>
     * @throws JspException JSP例外
     */
    public int doStartTag() throws JspException {
        
        //出力する文字列
        String result;
        
        int plus = 0;
        
        if (plusDay != null && !"".equals(plusDay)) {
            plus = Integer.parseInt(plusDay);
        }

        Date date = new Date();

        Calendar calendar = Calendar.getInstance();
        calendar.setTime(date);

        result = String.valueOf(calendar.get(Calendar.YEAR));

        //年月日のどれを出力するか
        if (var != null && !"".equals(var)) {
            if (var.equals("year")) {
                
                //年を指定数分、進める
                for (int i = 0; i < plus; i++) {
                    calendar.add(Calendar.YEAR, 1);
                }
                result = String.valueOf(calendar.get(Calendar.YEAR));
            }
            else if (var.equals("month")) {
                
                //Calendar.MONTHは0から始まるため、1を追加する。
                calendar.add(Calendar.MONTH, 1);
                
                //月を指定数分、進める
                for (int i = 0; i < plus; i++) {
                    calendar.add(Calendar.MONTH, 1);
                }
                result = String.valueOf(calendar.get(Calendar.MONTH));
            }
            else if (var.equals("day")) {
                
                //日を指定数分、進める
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