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

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.GregorianCalendar;

import jp.terasoluna.fw.exception.SystemException;

/**
 * TERASOLUNAホテル 日付ユーティリティクラス
 * @version $Revision: 2973 $
 */
public class DateUtil {
    /**
     * 年月日が存在するかどうか検証する。(CP0001)
     * @return true 存在する, false 存在しない
     * @param year 年("YYYY"形式)
     * @param month 月("MM"形式)
     * @param day 日("DD"形式)
     * @alias is存在
     */
    public static boolean isExists(String year, String month, String day) {
        Calendar calendar = new GregorianCalendar();
        
        int inputYear = Integer.parseInt(year);
        int inputMonth = Integer.parseInt(month);
        int inputDay = Integer.parseInt(day);
        
        // カレンダーに日付を設定
        calendar.clear();
        calendar.set(Calendar.YEAR, inputYear);
        calendar.set(Calendar.MONTH, inputMonth - 1);
        calendar.set(Calendar.DAY_OF_MONTH, inputDay);
        
        // 日付が異なっていたら存在しない日付
        if (inputYear == calendar.get(Calendar.YEAR)
            && (inputMonth - 1) == calendar.get(Calendar.MONTH)
            && inputDay == calendar.get(Calendar.DAY_OF_MONTH)) {
            return true;
        } else {
            return false;
        }
    }

    /**
     * 開始年月日と終了年月日の順序関係が開始年月日＜終了年月日かどうか
     * 検証する。(CP0002)
     * @alias is有効な期間
     * @return true 有効,false 無効
     * @param fromYear 開始年("YYYY"形式)
     * @param fromMonth 開始月("MM"形式)
     * @param fromDay 開始日("DD"形式)
     * @param toYear 終了年("YYYY"形式)
     * @param toMonth 終了月("MM"形式)
     * @param toDay 終了日("DD"形式) 
     */
    public static boolean isValidPeriod(
            String fromYear, 
            String fromMonth, 
            String fromDay, 
            String toYear, 
            String toMonth, 
            String toDay) {

        SimpleDateFormat format = new SimpleDateFormat("yyyyMMdd");
        Date from;
        Date to;
        try {
            from = format.parse(fromYear + fromMonth + fromDay);
            to = format.parse(toYear + toMonth + toDay);
        } catch (ParseException e) {
            throw new SystemException(e);
        }
        
        return from.before(to);
    }

    /**
     * 開始年月日と終了年月日が予約可能期間内かどうか検証する。(CP0003)
     * @alias is有効な予約期間
     * @return true 有効, false 無効
     * @param fromYear 開始年("YYYY"形式)
     * @param fromMonth 開始月("MM"形式)
     * @param fromDay 開始日("DD"形式)
     * @param toYear 終了年("YYYY"形式)
     * @param toMonth 終了月("MM"形式)
     * @param toDay 終了日("DD"形式) 
     */
    public static boolean isValidReservedPeriod(
            String fromYear, 
            String fromMonth, 
            String fromDay, 
            String toYear, 
            String toMonth, 
            String toDay) {
        
        SimpleDateFormat format = new SimpleDateFormat("yyyyMMdd");
        Date from;
        Date to;
        try {
            from = format.parse(fromYear + fromMonth + fromDay);
            to = format.parse(toYear + toMonth + toDay);
        } catch (ParseException e) {
            throw new SystemException(e);
        }

        // 本日を取得
        Calendar calendar = new GregorianCalendar();
        calendar.set(Calendar.HOUR, 0);
        calendar.set(Calendar.MINUTE, 0);
        calendar.set(Calendar.SECOND, 0);
        calendar.set(Calendar.MILLISECOND, 0);
        Date today = calendar.getTime();
        
        calendar.add(Calendar.MONTH, 6);
        Date lastOrderDate = calendar.getTime();
        
        if (!from.after(today) || to.after(lastOrderDate)) {
            return false;
        }
        
        return true;
       }

    /**
     * 未使用のコンストラクタ
     */
    private DateUtil() {
    }
}
