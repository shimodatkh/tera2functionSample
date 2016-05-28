package jp.terasoluna.thin.functionsample.validation.web.form;

import jp.terasoluna.fw.web.struts.form.ValidatorActionFormEx;

/**
 * 「リクエストパラメータ「page」を利用するチェック」で利用する、
 * ValidatorActionFormExを利用するpageをフォームのプロパティに実装するフォーム
 */
public class MultiPageValidationFormWithPageImpl extends ValidatorActionFormEx {

    /**
     * シリアルバージョンUID
     */
    private static final long serialVersionUID = 7078950024743892514L;

    /**
     * 項目１
     */
    private String code1;

    /**
     * ページ
     */
    private int page;

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
     * ページを取得する。
     * @return page
     */
    public int getPage() {
        return page;
    }

    /**
     * ページを設定する。
     * @param page ページ
     */
    public void setPage(int page) {
        this.page = page;
    }

}
