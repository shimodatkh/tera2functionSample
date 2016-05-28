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
import org.apache.struts.action.DynaActionForm;

import jp.terasoluna.fw.exception.SystemException;
import jp.terasoluna.fw.web.struts.actions.ActionEx;
import jp.terasoluna.thin.functionsample.formex.bean.SampleFormBean;
import jp.terasoluna.thin.functionsample.formex.bean.Xxx;
import jp.terasoluna.thin.functionsample.formex.bean.Xxxclass;

/**
 * Struts�̐Ǝ㐫(CVE-2014-0114)�΍�̃`�F�b�N�p�A�N�V�����N���X(DynaActionForm�p)
 * @version 2014/05/20
 */
public class SecurityDynaAction extends ActionEx {

    /**
     * LOGGER
     */
    private Log log = LogFactory.getLog(SecurityDynaAction.class);

    /**
     * DynaActionForm�̏������O�ɏ��������ƂƂ��ɁA��ʕ\���̂��߂Ƀ��N�G�X�g�X�R�[�v�֊i�[����B
     * @see jp.terasoluna.fw.web.struts.actions.ActionEx#doExecute(org.apache.struts.action.ActionMapping,
     *      org.apache.struts.action.ActionForm, javax.servlet.http.HttpServletRequest, javax.servlet.http.HttpServletResponse)
     * @param mapping ActionMapping
     * @param form DynaValidatorActionFormEx(DynaActionForm)
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
        DynaActionForm securityDynaForm = (DynaActionForm) form;

        if (securityDynaForm.get("Class") != null) {
            // DynaActionFormEx�̏ꍇ��Class�̓|�s�����[�g�����B
            log.info("form check: Class.classLoader.resources.dirContext.docBase="
                    + ((SampleFormBean) securityDynaForm.get("Class")).getClassLoader().getResources().getDirContext().getDocBase());
        }
        log.info("form check: class.code4=" + ((SampleFormBean) securityDynaForm.get("class")).getCode4());
        log.info("form check: zzzclass=" + securityDynaForm.getString("zzzclass"));
        log.info("form check: xxx.yyyclass=" + ((Xxx) securityDynaForm.get("xxx")).getYyyclass());
        log.info("form check: xxxclass.yyy=" + ((Xxxclass) securityDynaForm.get("xxxclass")).getYyy());
        log.info("form check: classxxx=" + securityDynaForm.getString("classxxx"));
        log.info("form check: userId=" + Arrays.toString((String[]) securityDynaForm.get("userId")));

        // ��ʕ\���p��ActionForm�̓��e�����N�G�X�g�X�R�[�v�Ɋi�[
        Map<String, String> resultMap = new TreeMap<String, String>();
        if (securityDynaForm.get("Class") != null) {
            // DynaActionFormEx�̏ꍇ��Class�̓|�s�����[�g�����B
            resultMap.put("Class.classLoader.resources.dirContext.docBase", ((SampleFormBean) securityDynaForm.get("Class"))
                    .getClassLoader().getResources().getDirContext().getDocBase());
        }
        resultMap.put("class.code4", ((SampleFormBean) securityDynaForm.get("class")).getCode4());
        resultMap.put("zzzclass", securityDynaForm.getString("zzzclass"));
        resultMap.put("xxx.yyyclass", ((Xxx) securityDynaForm.get("xxx")).getYyyclass());
        resultMap.put("xxxclass.yyy", ((Xxxclass) securityDynaForm.get("xxxclass")).getYyy());
        resultMap.put("classxxx", securityDynaForm.getString("classxxx"));
        String[] userIds = (String[]) securityDynaForm.get("userId");
        if (userIds.length == 0) {
            // '[]'�Əo�͂����̂����
            resultMap.put("userId", "");
        } else {
            resultMap.put("userId", Arrays.toString((String[]) securityDynaForm.get("userId")));
        }
        req.setAttribute("resultMap", resultMap);

        // ��ʑJ��
        return mapping.findForward("success");
    }

}
