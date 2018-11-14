package kr.or.ddit.attachment.service;

import kr.or.ddit.attachment.dao.AttDaoInf;
import kr.or.ddit.attachment.model.AttachmentVo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * kr.or.ddit.board.service
 * null.java
 * Desc : 첨부파일 서비스
 *
 * @Author : "Mr.KKu"
 * @Date : 2018-10-23 / 오전 12:40
 * @Version :
 */
@Service
public class AttService implements AttServiceInf{

	@Autowired
	private AttDaoInf dao;

	@Override
	public List<AttachmentVo> selectAttachment(String attNo) {
		return dao.selectAttachment(attNo);
	}

	@Override
	public int insertAttachment(AttachmentVo attVo) {
		return dao.insertAttachment(attVo);
	}

	@Override
	public int updateAttachment(AttachmentVo attVo) {
		return dao.updateAttachment(attVo);
	}

	@Override
	public int deleteAttachment(String attNo) {
		return dao.deleteAttachment(attNo);
	}
}
