package jp.terasoluna.thin.functionsample.formex.bean;

/**
 * Strutsの脆弱性(CVE-2014-0114)対策のチェック用Bean
 * @version 2014/05/20
 */
public class Xxx {

    /**
     * yyyclass
     */
    private String yyyclass;

    /**
     * yyyclassの値を取得する。
     * @return yyyclass
     */
    public String getYyyclass() {
        return yyyclass;
    }

    /**
     * yyyclassの値を設定する。
     * @param yyyclass yyyclass を設定します。
     */
    public void setYyyclass(String yyyclass) {
        this.yyyclass = yyyclass;
    }

}
