package jp.terasoluna.thin.functionsample.validation.web.form;

import jp.terasoluna.fw.web.struts.form.ValidatorActionFormEx;

/**
 * �u���N�G�X�g�p�����[�^�upage�v�𗘗p����`�F�b�N�v�ŗ��p����A
 * ValidatorActionFormEx�𗘗p����page���t�H�[���̃v���p�e�B�Ɏ�������t�H�[��
 */
public class MultiPageValidationFormWithPageImpl extends ValidatorActionFormEx {

    /**
     * �V���A���o�[�W����UID
     */
    private static final long serialVersionUID = 7078950024743892514L;

    /**
     * ���ڂP
     */
    private String code1;

    /**
     * �y�[�W
     */
    private int page;

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
     * �y�[�W���擾����B
     * @return page
     */
    public int getPage() {
        return page;
    }

    /**
     * �y�[�W��ݒ肷��B
     * @param page �y�[�W
     */
    public void setPage(int page) {
        this.page = page;
    }

}
