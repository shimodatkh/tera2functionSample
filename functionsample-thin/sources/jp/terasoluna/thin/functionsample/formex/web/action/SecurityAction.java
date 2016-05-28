package jp.terasoluna.thin.functionsample.formex.web.action;

import java.util.Arrays;
import java.util.Map;
import java.util.TreeMap;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

import jp.terasoluna.fw.web.struts.actions.ActionEx;
import jp.terasoluna.thin.functionsample.formex.web.form.SecurityForm;

/**
 * Struts�̐Ǝ㐫(CVE-2014-0114)�΍�̃`�F�b�N�p�A�N�V�����N���X(ActionForm�p)
 * @version 2014/05/20
 */
public class SecurityAction extends ActionEx {

    /**
     * LOGGER
     */
    private Log log = LogFactory.getLog(SecurityAction.class);

    /**
     * ActionForm�̏������O�ɏ��������ƂƂ��ɁA��ʕ\���̂��߂Ƀ��N�G�X�g�X�R�[�v�֊i�[����B
     * @see jp.terasoluna.fw.web.struts.actions.ActionEx#doExecute(org.apache.struts.action.ActionMapping,
     *      org.apache.struts.action.ActionForm, javax.servlet.http.HttpServletRequest, javax.servlet.http.HttpServletResponse)
     * @param mapping ActionMapping
     * @param form SecurityForm(ActionForm)
     * @param req HttpServletRequest
     * @param res HttpServletResponse
     * @return ActionForward
     * @throws Exception ��O
     */
    @Override
    public ActionForward doExecute(ActionMapping mapping, ActionForm form, HttpServletRequest req, HttpServletResponse res)
                                                                                                                           throws Exception {
        // ���O��ActionForm�̓��e���o�͂��A�s�v�ȃp�����[�^���X�L�b�v����Ă��Ȃ����Ƃ��m�F�ł���悤�ɂ���B
        // form check: �p�����[�^��=���p�����[�^�l
        SecurityForm securityForm = (SecurityForm) form;
        log.info("form check: zzzclass=" + securityForm.getZzzclass());
        log.info("form check: xxx.yyyclass=" + securityForm.getXxx().getYyyclass());
        log.info("form check: xxxclass.yyy=" + securityForm.getXxxclass().getYyy());
        log.info("form check: classxxx=" + securityForm.getClassxxx());
        log.info("form check: userId=" + Arrays.toString(securityForm.getUserId()));

        // ��ʕ\���p��ActionForm�̓��e�����N�G�X�g�X�R�[�v�Ɋi�[
        Map<String, String> resultMap = new TreeMap<String, String>();
        resultMap.put("zzzclass", securityForm.getZzzclass());
        resultMap.put("xxx.yyyclass", securityForm.getXxx().getYyyclass());
        resultMap.put("xxxclass.yyy", securityForm.getXxxclass().getYyy());
        resultMap.put("classxxx", securityForm.getClassxxx());
        if (securityForm.getUserId() == null) {
            // 'null'�Əo�͂����̂����
            resultMap.put("userId", "");
        } else {
            resultMap.put("userId", Arrays.toString(securityForm.getUserId()));
        }
        req.setAttribute("resultMap", resultMap);

        // ��ʑJ��
        return mapping.findForward("success");
    }

}
