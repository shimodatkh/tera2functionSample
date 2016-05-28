package jp.terasoluna.thin.functionsample.validation.web.form;

import jp.terasoluna.fw.web.struts.form.ValidatorActionFormEx;

/**
 * 「リクエストパラメータ「page」を利用するチェック」で利用する、
 * ValidatorActionFormExを利用するpageをフォームのプロパティに実装しないフォーム
 */
public class MultiPageValidationForm extends ValidatorActionFormEx {

    /**
     * シリアルバージョンUID
     */
    private static final long serialVersionUID = 5430870522889299105L;

    /**
     * 項目１
     */
    private String code1;

    /**
     * 項目２
     */
    private String code2;

    /**
     * 項目１を取得する。
     * @return code1
     */
    public String getCode1() {
        return code1;
    }

    /**
     * 項目１を設定する。
     * @param code1 項目１
     */
    public void setCode1(String code1) {
        this.code1 = code1;
    }

    /**
     * 項目２を取得する。
     * @return code2
     */
    public String getCode2() {
        return code2;
    }

    /**
     * 項目２を設定する。
     * @param code2 項目２
     */
    public void setCode2(String code2) {
        this.code2 = code2;
    }

}
