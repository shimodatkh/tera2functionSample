package jp.terasoluna.thin.functionsample.formex.web.form;

import jp.terasoluna.fw.web.struts.form.ValidatorActionFormEx;
import jp.terasoluna.thin.functionsample.formex.bean.Xxx;
import jp.terasoluna.thin.functionsample.formex.bean.Xxxclass;

/**
 * パラメータ名によるチェック画面のフォーム
 * @version 2014/05/20
 */
public class SecurityForm extends ValidatorActionFormEx {

    /**
     * シリアルバージョンID
     */
    private static final long serialVersionUID = -5944587983124987970L;

    /**
     * xxxclass
     */
    private Xxxclass xxxclass = new Xxxclass();

    /***
     * xxx
     */
    private Xxx xxx = new Xxx();

    /***
     * classxxx
     */
    private String classxxx;

    /**
     * zzzclass
     */
    private String zzzclass;

    /**
     * userId
     */
    private String[] userId;

    /***
     * zzzclassの値を取得する。
     * @return zzzclass
     */
    public String getZzzclass() {
        return zzzclass;
    }

    /**
     * zzzclassの値を設定する。
     * @param zzzclass zzzclassを設定します。
     */
    public void setZzzclass(String zzzclass) {
        this.zzzclass = zzzclass;
    }

    /***
     * xxxclassの値を取得する。
     * @return xxxclass
     */
    public Xxxclass getXxxclass() {
        return xxxclass;
    }

    /**
     * xxxclassの値を設定する。
     * @param xxxclass xxxclassを設定します。
     */
    public void setXxxclass(Xxxclass xxxclass) {
        this.xxxclass = xxxclass;
    }

    /***
     * xxxの値を取得する。
     * @return xxx
     */
    public Xxx getXxx() {
        return xxx;
    }

    /**
     * xxxの値を設定する。
     * @param xxx xxxを設定します。
     */
    public void setXxx(Xxx xxx) {
        this.xxx = xxx;
    }

    /***
     * classxxxの値を取得する。
     * @return classxxx
     */
    public String getClassxxx() {
        return classxxx;
    }

    /**
     * classxxxの値を設定する。
     * @param classxxx classxxxを設定します。
     */
    public void setClassxxx(String classxxx) {
        this.classxxx = classxxx;
    }

    /***
     * userIdの値を取得する。
     * @return userId
     */
    public String[] getUserId() {
        return userId;
    }

    /**
     * userIdの値を設定する。
     * @param userId userIdを設定します。
     */
    public void setUserId(String[] userId) {
        this.userId = userId;
    }
}
