package jp.terasoluna.thin.functionsample.validation.blogic;

import jp.terasoluna.fw.service.thin.BLogic;
import jp.terasoluna.fw.service.thin.BLogicResult;
import jp.terasoluna.fw.web.struts.actions.AbstractBLogicAction;
import jp.terasoluna.thin.functionsample.validation.bean.PageParam;

/**
 * page�̒l��1�������W�b�N.
 * page�����݂��Ȃ��ꍇ��0���Z�b�g���A������ʂ֑J�ڂ���.
 */
public class MpvBackwardPageBLogic implements BLogic<PageParam> {

    public BLogicResult execute(PageParam param) {
        BLogicResult result = new BLogicResult();
        PageParam outputPageParam = new PageParam();

        int targetPage = param.getPage();
        targetPage -= 1;

        if (targetPage > 2 || targetPage < 0) {
            // page��2�𒴂��邩�A0�����̏ꍇ�͏�����ʂ�
            outputPageParam.setPage(0);
            result.setResultObject(outputPageParam);
            result.setResultString("initial");
            return result;
        }

        // ����ȊO��page�l��1�����āA���̑J�ڂ�
        outputPageParam.setPage(targetPage);
        result.setResultObject(outputPageParam);
        result.setResultString("success");
        return result;
    }

}
