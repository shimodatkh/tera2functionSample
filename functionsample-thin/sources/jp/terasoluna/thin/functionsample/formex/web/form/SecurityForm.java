package jp.terasoluna.thin.functionsample.formex.web.form;

import jp.terasoluna.fw.web.struts.form.ValidatorActionFormEx;
import jp.terasoluna.thin.functionsample.formex.bean.Xxx;
import jp.terasoluna.thin.functionsample.formex.bean.Xxxclass;

/**
 * �p�����[�^���ɂ��`�F�b�N��ʂ̃t�H�[��
 * @version 2014/05/20
 */
public class SecurityForm extends ValidatorActionFormEx {

    /**
     * �V���A���o�[�W����ID
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
     * zzzclass�̒l���擾����B
     * @return zzzclass
     */
    public String getZzzclass() {
        return zzzclass;
    }

    /**
     * zzzclass�̒l��ݒ肷��B
     * @param zzzclass zzzclass��ݒ肵�܂��B
     */
    public void setZzzclass(String zzzclass) {
        this.zzzclass = zzzclass;
    }

    /***
     * xxxclass�̒l���擾����B
     * @return xxxclass
     */
    public Xxxclass getXxxclass() {
        return xxxclass;
    }

    /**
     * xxxclass�̒l��ݒ肷��B
     * @param xxxclass xxxclass��ݒ肵�܂��B
     */
    public void setXxxclass(Xxxclass xxxclass) {
        this.xxxclass = xxxclass;
    }

    /***
     * xxx�̒l���擾����B
     * @return xxx
     */
    public Xxx getXxx() {
        return xxx;
    }

    /**
     * xxx�̒l��ݒ肷��B
     * @param xxx xxx��ݒ肵�܂��B
     */
    public void setXxx(Xxx xxx) {
        this.xxx = xxx;
    }

    /***
     * classxxx�̒l���擾����B
     * @return classxxx
     */
    public String getClassxxx() {
        return classxxx;
    }

    /**
     * classxxx�̒l��ݒ肷��B
     * @param classxxx classxxx��ݒ肵�܂��B
     */
    public void setClassxxx(String classxxx) {
        this.classxxx = classxxx;
    }

    /***
     * userId�̒l���擾����B
     * @return userId
     */
    public String[] getUserId() {
        return userId;
    }

    /**
     * userId�̒l��ݒ肷��B
     * @param userId userId��ݒ肵�܂��B
     */
    public void setUserId(String[] userId) {
        this.userId = userId;
    }
}
