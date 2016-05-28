package jp.terasoluna.thin.functionsample.validation.blogic;

import jp.terasoluna.fw.service.thin.BLogic;
import jp.terasoluna.fw.service.thin.BLogicResult;
import jp.terasoluna.fw.web.struts.actions.AbstractBLogicAction;
import jp.terasoluna.thin.functionsample.validation.bean.PageParam;

/**
 * pageの値を1引くロジック.
 * pageが存在しない場合は0をセットし、初期画面へ遷移する.
 */
public class MpvBackwardPageBLogic implements BLogic<PageParam> {

    public BLogicResult execute(PageParam param) {
        BLogicResult result = new BLogicResult();
        PageParam outputPageParam = new PageParam();

        int targetPage = param.getPage();
        targetPage -= 1;

        if (targetPage > 2 || targetPage < 0) {
            // pageが2を超えるか、0未満の場合は初期画面へ
            outputPageParam.setPage(0);
            result.setResultObject(outputPageParam);
            result.setResultString("initial");
            return result;
        }

        // それ以外はpage値を1引いて、次の遷移へ
        outputPageParam.setPage(targetPage);
        result.setResultObject(outputPageParam);
        result.setResultString("success");
        return result;
    }

}
