package jp.terasoluna.thin.functionsample.formex.bean;

/**
 * DynaValidatorActionFormEx�𗘗p����ꍇ�ŁA�ȉ��̊m�F���s�����߂�Bean<br>
 * �E�uClass�v�v���p�e�B(JavaBean)�o�R�Œl���Z�b�g�ł���<br>
 * �E�uclass�v�v���p�e�B(JavaBean)�o�R�Œl���Z�b�g�ł��Ȃ�<br>
 * @version 2014/05/20
 */
public class SampleFormBean {

    /**
     * ClassLoader�B
     */
    private ClassLoader classLoader = new ClassLoader();

    /**
     * ���ڂS
     */
    private String code4;

    /**
     * classLoader���擾����B
     * @return classLoader
     */
    public ClassLoader getClassLoader() {
        return classLoader;
    }

    /**
     * classLoader��ݒ肷��B
     * @param classLoader classLoader
     */
    public void setClassLoader(ClassLoader classLoader) {
        this.classLoader = classLoader;
    }

    /**
     * ���ڂS���擾����B
     * @return code4��ԋp
     */
    public String getCode4() {
        return code4;
    }

    /**
     * code4��ݒ肷��B
     * @param code4 code4��ݒ肵�܂��B
     */
    public void setCode4(String code4) {
        this.code4 = code4;
    }

}
