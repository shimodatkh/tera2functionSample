package jp.terasoluna.thin.functionsample.validation.bean;

/**
 * MpvBackwardPageBLogic, MpvForwardPageBLogicの入力クラス
 */
public class PageParam {
    
    /**
     * ページ
     */
    private int page;

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
