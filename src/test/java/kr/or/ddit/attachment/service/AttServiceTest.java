package kr.or.ddit.attachment.service;

import kr.or.ddit.attachment.model.AttachmentVo;
import kr.or.ddit.common.RootContext;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;

import static org.junit.Assert.*;

/**
 * kr.or.ddit.attachment.service
 * JUnit4 Test Class.java.java
 * Desc :
 *
 * @Author : Mr.KKu
 * @Date : 2018-11-15 / 오후 7:43
 * @Version :
 */
public class AttServiceTest extends RootContext {


	@Autowired
	private AttServiceInf attService;

	@Test
	public void selectAttachment() {
	}

	@Test
	public void insertAttachment() {
		/*** Given ***/
		AttachmentVo attachmentVo = new AttachmentVo();
		attachmentVo.setAtt_att("///////////root");
		attachmentVo.setAtt_postno("71");
		/*** When ***/
		int resultCnt = attService.insertAttachment(attachmentVo);
		/*** Then ***/
	}

	@Test
	public void updateAttachment() {
	}

	@Test
	public void deleteAttachment() {
	}
}