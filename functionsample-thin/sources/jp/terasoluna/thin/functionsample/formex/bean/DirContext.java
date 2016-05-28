package jp.terasoluna.thin.functionsample.formex.bean;

/**
 * Strutsの脆弱性(CVE-2014-0114)対策のチェック用Bean
 * @version 2014/05/20
 */
public class DirContext {
    
    /**
     * docBase。
     */
    private String docBase;

    /**
     * docBaseを取得する、
     * @return docBase
     */
    public String getDocBase() {
        return docBase;
    }

    /**
     * docBaseを設定する。
     * @param docBase docBase
     */
    public void setDocBase(String docBase) {
        this.docBase = docBase;
    }

}
