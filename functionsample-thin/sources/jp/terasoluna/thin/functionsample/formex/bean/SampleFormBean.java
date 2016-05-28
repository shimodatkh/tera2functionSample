package jp.terasoluna.thin.functionsample.formex.bean;

/**
 * DynaValidatorActionFormExを利用する場合で、以下の確認を行うためのBean<br>
 * ・「Class」プロパティ(JavaBean)経由で値をセットできる<br>
 * ・「class」プロパティ(JavaBean)経由で値をセットできない<br>
 * @version 2014/05/20
 */
public class SampleFormBean {

    /**
     * ClassLoader。
     */
    private ClassLoader classLoader = new ClassLoader();

    /**
     * 項目４
     */
    private String code4;

    /**
     * classLoaderを取得する。
     * @return classLoader
     */
    public ClassLoader getClassLoader() {
        return classLoader;
    }

    /**
     * classLoaderを設定する。
     * @param classLoader classLoader
     */
    public void setClassLoader(ClassLoader classLoader) {
        this.classLoader = classLoader;
    }

    /**
     * 項目４を取得する。
     * @return code4を返却
     */
    public String getCode4() {
        return code4;
    }

    /**
     * code4を設定する。
     * @param code4 code4を設定します。
     */
    public void setCode4(String code4) {
        this.code4 = code4;
    }

}
