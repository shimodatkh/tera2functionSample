package jp.terasoluna.thin.functionsample.formex.bean;

/**
 * Struts�̐Ǝ㐫(CVE-2014-0114)�΍�̃`�F�b�N�pBean
 * @version 2014/05/20
 */
public class Resources {

    /**
     * dirContext�B
     */
    private DirContext dirContext = new DirContext();

    /**
     * dirContext���擾����B
     * @return dirContext��ԋp
     */
    public DirContext getDirContext() {
        return dirContext;
    }

    /**
     * dirContext��ݒ肷��B
     * @param dirContext dirContext
     */
    public void setDirContext(DirContext dirContext) {
        this.dirContext = dirContext;
    }

}
