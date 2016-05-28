package jp.terasoluna.thin.functionsample.validation.blogic;

import jp.terasoluna.fw.service.thin.BLogic;
import jp.terasoluna.fw.service.thin.BLogicResult;
import jp.terasoluna.fw.web.struts.actions.AbstractBLogicAction;
import jp.terasoluna.thin.functionsample.validation.bean.PageParam;

/**
 * page�̒l�ɏ]���A����ʂɃt�H���[�h�����郍�W�b�N.
 * page�����݂��Ȃ��ꍇ�͏�����ʂ֑J�ڂ���.
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
