package jp.terasoluna.thin.functionsample.validation.blogic;

import jp.terasoluna.fw.service.thin.BLogic;
import jp.terasoluna.fw.service.thin.BLogicResult;
import jp.terasoluna.fw.web.struts.actions.AbstractBLogicAction;
import jp.terasoluna.thin.functionsample.validation.bean.PageParam;

/**
 * pageの値に従い、次画面にフォワードさせるロジック.
 * pageが存在しない場合は初期画面へ遷移する.
 */
public class MpvForwardPageBLogic implements BLogic<PageParam> {

    public BLogicResult execute(PageParam param) {

        BLogicResult result = new BLogicResult();

        int targetPage = param.getPage();
        switch (targetPage) {
        case 0:
            result.setResultString("page2");
            break;
        case 1:
            result.setResultString("page3");
            break;
        default:
            result.setResultString("page1");
            break;
        }

        return result;
    }

}
