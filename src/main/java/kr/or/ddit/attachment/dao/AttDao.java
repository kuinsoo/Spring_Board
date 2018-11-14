package kr.or.ddit.attachment.dao;

import kr.or.ddit.attachment.model.AttachmentVo;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import javax.annotation.Resource;
import java.util.List;

/**
 * kr.or.ddit.board.dao
 * null.java
 * Desc :
 *
 * @Author : "Mr.KKu"
 * @Date : 2018-10-23 / 오전 12:42
 * @Version :
 */
@Repository
public class AttDao implements AttDaoInf {

	@Resource(name = "sqlSessionTemplate")
	private SqlSessionTemplate template;
	/**
	 * 첨부파일 리스트 출력
	 * @param attNo
	 * @return
	 */
	@Override
	public List<AttachmentVo> selectAttachment(String attNo) {
		List<AttachmentVo> attList = template.selectList("att.selectAttachment",attNo);
		return attList;
	}

	/**
	 * 첨부파일 삽입
	 * @param attVo
	 * @return
	 */
	@Override
	public int insertAttachment(AttachmentVo attVo) {
		int resultCnt = template.insert("att.insertAttachment", attVo);
		return resultCnt;
	}

	/**
	 * 첨부파일 수정
	 * @param attVo
	 * @return
	 */
	@Override
	public int updateAttachment(AttachmentVo attVo) {
		int resultCnt = template.insert("att.updateAttachment", attVo);
		return resultCnt;
	}

	/**
	 * 첨부파일 삭제
	 * @param attNo
	 * @return
	 */
	@Override
	public int deleteAttachment(String attNo) {
		int resultCnt = template.insert("att.deleteAttachment", attNo);
		return resultCnt;
	}
}
