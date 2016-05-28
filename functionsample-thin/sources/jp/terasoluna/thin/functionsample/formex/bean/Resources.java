package jp.terasoluna.thin.functionsample.formex.bean;

/**
 * Strutsの脆弱性(CVE-2014-0114)対策のチェック用Bean
 * @version 2014/05/20
 */
public class Resources {

    /**
     * dirContext。
     */
    private DirContext dirContext = new DirContext();

    /**
     * dirContextを取得する。
     * @return dirContextを返却
     */
    public DirContext getDirContext() {
        return dirContext;
    }

    /**
     * dirContextを設定する。
     * @param dirContext dirContext
     */
    public void setDirContext(DirContext dirContext) {
        this.dirContext = dirContext;
    }

}
