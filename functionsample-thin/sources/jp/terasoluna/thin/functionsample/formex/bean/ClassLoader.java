package jp.terasoluna.thin.functionsample.formex.bean;

/**
 * Struts�̐Ǝ㐫(CVE-2014-0114)�΍�̃`�F�b�N�pBean
 * @version 2014/05/20
 */
public class ClassLoader {
    
    /**
     * Resources�B
     */
    private Resources resources = new Resources();

    /**
     * resources���擾����B
     * @return resources
     */
    public Resources getResources() {
        return resources;
    }

    /**
     * resources��ݒ肷��B
     * @param resources resources
     */
    public void setResources(Resources resources) {
        this.resources = resources;
    }

}
