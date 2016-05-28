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
 * 年,月,日のOptionタグを出力するタグクラス。
 * <br><code>selected="true"</code>とした場合、現在年月日＋plusDayの年月日に
 * selectedを指定するOptionタグを出力する。
 * <br><code>selected="false"</code>とした場合、Formの年月日をselected指定する。
 * Formに情報がない場合はselected指定はせず、現在年、1月、1日が表示されること
 * になる。
 * <br>年,月,日のどれを出力するかは、<code>var ="day"</code>のように指定する。
 * （必須）
 * <br>注意：セレクトタグの値を参照するため、＜html:select＞の内部で使用すること。
 * <br>注意：30日までの月、うるう年計算は行わず、動的に日が変わるような動作は
 * しない。
 * <br>使用例：
 *<code>
 * <html:select property="checkinYear">
 *   <thz:currentDateOptions var ="year" selected="true" plusDay="1"/>
 * </html:select>年
 *
 * <html:select property="checkinMonth">
 *   <thz:currentDateOptions var ="month" selected="true" plusDay="1"/>
 * </html:select>月
 * <html:select property="checkinDay" >
 *   <thz:currentDateOptions var ="day" selected="true" plusDay="1"/>
 * </html:select>日
 *</code>
 *翌日の年月日がselected指定されるセレクトボックスが出力される。
 *
 * @version 1.0
 */
public class CurrentDateOptionsTag extends TagSupport {

    /**
     * シリアルバージョンID
     */
    private static final long serialVersionUID = 8856958350065973508L;

    //どのフィールドを出力するか。month,day を指定する。デフォルトはmonth。
    private String var;

    //進める日数
    private String plusDay;

    //selectedを追加するかどうか
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
     * タグ評価開始時に呼ばれるメソッド。
     *
     * @return 処理制御指示。常に <code>SKIP_BODY</code>
     * @throws JspException JSP例外
     */
    public int doStartTag() throws JspException {

        //出力する文字列
        StringBuffer result = new StringBuffer("");

        //selected指定する日付まで進める日数
        int plus = 0;

        if (!"".equals(plusDay) && !(plusDay == null)) {
            plus = Integer.parseInt(plusDay);
        }

        Date date = new Date();

        Calendar calendar = Calendar.getInstance();
        calendar.setTime(date);
        //進めた先の日付を取得
        calendar.add(Calendar.DATE, plus);
        
        if (var != null && !"".equals(var)) {
            
            //年月日のどれを出力するか
            //月指定の場合
            if (var.equals("month")) {

                //Calendar.MONTHは0から始まるため、1を追加する。
                calendar.add(Calendar.MONTH, 1);

                for (int i = 0; i < 12; i++) {
                    //Optionタグ(value属性)の出力
                    result.append("<option value= \"" + String.valueOf(i + 1)
                            + "\"");
                    //selected指定されている場合、翌日の月をselectedを付与する
                    //指定されていない場合、フォーム内と同じ月にselectedを付与する
                    if ((selected && i + 1 == calendar.get(Calendar.MONTH))
                            || (!selected && this.selectTag().isMatched(
                                    String.valueOf(i + 1)))) {
                        //selected属性の出力
                        result.append(" selected=\"selected\"");
                    }
                    //Optionタグ(ボディ部)の出力。
                    //HTMLを出力するため、閉じタグはなし。
                    result.append(">");
                    result.append(String.valueOf(i + 1));
                }
                //日指定の場合
                } else if (var.equals("day")) {

                //日を指定数分、進める
                for (int i = 0; i < 31; i++) {
                    result.append("<option value= \"" + String.valueOf(i + 1)
                            + "\"");
                    //selected指定されている場合、翌日の日にselectedを付与する
                    //指定されていない場合、フォーム内と同じ日にselectedを付与する
                    if ((selected && i + 1 == calendar.get(Calendar.DATE))
                            || (!selected && this.selectTag().isMatched(
                                    String.valueOf(i + 1)))) {
                        //selected属性の出力
                        result.append(" selected=\"selected\"");
                    }
                    //Optionタグ(ボディ部)の出力。
                    //HTMLを出力するため、閉じタグはなし。
                    result.append(">");
                    result.append(String.valueOf(i + 1));
                }
                //年指定の場合
                } else if (var.equals("year")){
                //年を指定数分、進める
                for (int i = 0; i < 2; i++) {
                    result.append("<option value= \"" +
                            String.valueOf(i + calendar.get(Calendar.YEAR))
                            + "\"");
                    //selected指定されている場合、翌日の年にselectedを付与する
                    //指定されていない場合、フォーム内と同じ年にselectedを付与する
                    if ((selected && i + calendar.get(Calendar.YEAR) ==
                        calendar.get(Calendar.YEAR))||
                       (!selected && this.selectTag().isMatched(
                                    String.valueOf(i + calendar.
                                            get(Calendar.YEAR))))) {
                        //selected属性の出力
                        result.append(" selected=\"selected\"");
                    }
                    //Optionタグ(ボディ部)の出力。
                    //HTMLを出力するため、閉じタグはなし。
                    result.append(">");
                    result.append(String.valueOf(i + calendar.get(Calendar.YEAR)));
                }
            }
            
        }

        try {
            //生成したタグの出力
            pageContext.getOut().print(result.toString());
        } catch (Exception ex) {
            throw new JspException(ex);
        }
        //スキップボディを返却
        return SKIP_BODY;
    }

    //ページコンテキストのセレクトタグの参照を取得するメソッド
    private SelectTag selectTag() throws JspException {
        SelectTag selectTag = (SelectTag) pageContext
                .getAttribute(Constants.SELECT_KEY);

        if (selectTag == null) {
            throw new JspException();
        }

        return selectTag;
    }
}