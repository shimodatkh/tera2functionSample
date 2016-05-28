package jp.terasoluna.thin.functionsample.formex.bean;

/**
 * Strutsの脆弱性(CVE-2014-0114)対策のチェック用Bean
 * @version 2014/05/20
 */
public class ClassLoader {
    
    /**
     * Resources。
     */
    private Resources resources = new Resources();

    /**
     * resourcesを取得する。
     * @return resources
     */
    public Resources getResources() {
        return resources;
    }

    /**
     * resourcesを設定する。
     * @param resources resources
     */
    public void setResources(Resources resources) {
        this.resources = resources;
    }

}
