package jp.terasoluna.thin.functionsample.formex.bean;

/**
 * Strutsの脆弱性(CVE-2014-0114)対策のチェック用Bean
 * @version 2014/05/20
 */
public class Xxxclass {
    
    /**
     * yyy
     */
    private String yyy;

    /**
     * yyyの値を取得する。
     * @return yyy
     */
    public String getYyy() {
        return yyy;
    }

    /**
     * yyyの値を設定する。
     * @param yyy yyy を設定します。
     */
    public void setYyy(String yyy) {
        this.yyy = yyy;
    }

}
