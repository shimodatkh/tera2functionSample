package jp.terasoluna.thin.functionsample.formex.bean;

/**
 * Struts�̐Ǝ㐫(CVE-2014-0114)�΍�̃`�F�b�N�pBean
 * @version 2014/05/20
 */
public class DirContext {
    
    /**
     * docBase�B
     */
    private String docBase;

    /**
     * docBase���擾����A
     * @return docBase
     */
    public String getDocBase() {
        return docBase;
    }

    /**
     * docBase��ݒ肷��B
     * @param docBase docBase
     */
    public void setDocBase(String docBase) {
        this.docBase = docBase;
    }

}
