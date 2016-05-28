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
 * TERASOLUNA�z�e�� ���t���[�e�B���e�B�N���X
 * @version $Revision: 2973 $
 */
public class DateUtil {
    /**
     * �N���������݂��邩�ǂ������؂���B(CP0001)
     * @return true ���݂���, false ���݂��Ȃ�
     * @param year �N("YYYY"�`��)
     * @param month ��("MM"�`��)
     * @param day ��("DD"�`��)
     * @alias is����
     */
    public static boolean isExists(String year, String month, String day) {
        Calendar calendar = new GregorianCalendar();
        
        int inputYear = Integer.parseInt(year);
        int inputMonth = Integer.parseInt(month);
        int inputDay = Integer.parseInt(day);
        
        // �J�����_�[�ɓ��t��ݒ�
        calendar.clear();
        calendar.set(Calendar.YEAR, inputYear);
        calendar.set(Calendar.MONTH, inputMonth - 1);
        calendar.set(Calendar.DAY_OF_MONTH, inputDay);
        
        // ���t���قȂ��Ă����瑶�݂��Ȃ����t
        if (inputYear == calendar.get(Calendar.YEAR)
            && (inputMonth - 1) == calendar.get(Calendar.MONTH)
            && inputDay == calendar.get(Calendar.DAY_OF_MONTH)) {
            return true;
        } else {
            return false;
        }
    }

    /**
     * �J�n�N�����ƏI���N�����̏����֌W���J�n�N�������I���N�������ǂ���
     * ���؂���B(CP0002)
     * @alias is�L���Ȋ���
     * @return true �L��,false ����
     * @param fromYear �J�n�N("YYYY"�`��)
     * @param fromMonth �J�n��("MM"�`��)
     * @param fromDay �J�n��("DD"�`��)
     * @param toYear �I���N("YYYY"�`��)
     * @param toMonth �I����("MM"�`��)
     * @param toDay �I����("DD"�`��) 
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
     * �J�n�N�����ƏI���N�������\��\���ԓ����ǂ������؂���B(CP0003)
     * @alias is�L���ȗ\�����
     * @return true �L��, false ����
     * @param fromYear �J�n�N("YYYY"�`��)
     * @param fromMonth �J�n��("MM"�`��)
     * @param fromDay �J�n��("DD"�`��)
     * @param toYear �I���N("YYYY"�`��)
     * @param toMonth �I����("MM"�`��)
     * @param toDay �I����("DD"�`��) 
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

        // �{�����擾
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
     * ���g�p�̃R���X�g���N�^
     */
    private DateUtil() {
    }
}
