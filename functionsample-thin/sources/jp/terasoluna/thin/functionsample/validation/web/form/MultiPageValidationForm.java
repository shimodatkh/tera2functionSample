package jp.terasoluna.thin.functionsample.validation.web.form;

import jp.terasoluna.fw.web.struts.form.ValidatorActionFormEx;

/**
 * �u���N�G�X�g�p�����[�^�upage�v�𗘗p����`�F�b�N�v�ŗ��p����A
 * ValidatorActionFormEx�𗘗p����page���t�H�[���̃v���p�e�B�Ɏ������Ȃ��t�H�[��
 */
public class MultiPageValidationForm extends ValidatorActionFormEx {

    /**
     * �V���A���o�[�W����UID
     */
    private static final long serialVersionUID = 5430870522889299105L;

    /**
     * ���ڂP
     */
    private String code1;

    /**
     * ���ڂQ
     */
    private String code2;

    /**
     * ���ڂP���擾����B
     * @return code1
     */
    public String getCode1() {
        return code1;
    }

    /**
     * ���ڂP��ݒ肷��B
     * @param code1 ���ڂP
     */
    public void setCode1(String code1) {
        this.code1 = code1;
    }

    /**
     * ���ڂQ���擾����B
     * @return code2
     */
    public String getCode2() {
        return code2;
    }

    /**
     * ���ڂQ��ݒ肷��B
     * @param code2 ���ڂQ
     */
    public void setCode2(String code2) {
        this.code2 = code2;
    }

}
