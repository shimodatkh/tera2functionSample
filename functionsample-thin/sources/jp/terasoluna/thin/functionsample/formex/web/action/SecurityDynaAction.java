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
 * Strutsの脆弱性(CVE-2014-0114)対策のチェック用アクションクラス(DynaActionForm用)
 * @version 2014/05/20
 */
public class SecurityDynaAction extends ActionEx {

    /**
     * LOGGER
     */
    private Log log = LogFactory.getLog(SecurityDynaAction.class);

    /**
     * DynaActionFormの情報をログに書きだすとともに、画面表示のためにリクエストスコープへ格納する。
     * @see jp.terasoluna.fw.web.struts.actions.ActionEx#doExecute(org.apache.struts.action.ActionMapping,
     *      org.apache.struts.action.ActionForm, javax.servlet.http.HttpServletRequest, javax.servlet.http.HttpServletResponse)
     * @param mapping ActionMapping
     * @param form DynaValidatorActionFormEx(DynaActionForm)
     * @param req HttpServletRequest
     * @param res HttpServletResponse
     * @return ActionForward
     * @throws Exception 例外
     */
    @Override
    public ActionForward doExecute(ActionMapping mapping, ActionForm form, HttpServletRequest req, HttpServletResponse res)
                                                                                                                           throws Exception {
        // ログにActionFormの内容を出力し、不要なパラメータがスキップされていないことを確認できるようにする。
        // form check: パラメータ名=実パラメータ値
        DynaActionForm securityDynaForm = (DynaActionForm) form;

        if (securityDynaForm.get("Class") != null) {
            // DynaActionFormExの場合はClassはポピュレートされる。
            log.info("form check: Class.classLoader.resources.dirContext.docBase="
                    + ((SampleFormBean) securityDynaForm.get("Class")).getClassLoader().getResources().getDirContext().getDocBase());
        }
        log.info("form check: class.code4=" + ((SampleFormBean) securityDynaForm.get("class")).getCode4());
        log.info("form check: zzzclass=" + securityDynaForm.getString("zzzclass"));
        log.info("form check: xxx.yyyclass=" + ((Xxx) securityDynaForm.get("xxx")).getYyyclass());
        log.info("form check: xxxclass.yyy=" + ((Xxxclass) securityDynaForm.get("xxxclass")).getYyy());
        log.info("form check: classxxx=" + securityDynaForm.getString("classxxx"));
        log.info("form check: userId=" + Arrays.toString((String[]) securityDynaForm.get("userId")));

        // 画面表示用にActionFormの内容をリクエストスコープに格納
        Map<String, String> resultMap = new TreeMap<String, String>();
        if (securityDynaForm.get("Class") != null) {
            // DynaActionFormExの場合はClassはポピュレートされる。
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
            // '[]'と出力されるのを回避
            resultMap.put("userId", "");
        } else {
            resultMap.put("userId", Arrays.toString((String[]) securityDynaForm.get("userId")));
        }
        req.setAttribute("resultMap", resultMap);

        // 画面遷移
        return mapping.findForward("success");
    }

}
