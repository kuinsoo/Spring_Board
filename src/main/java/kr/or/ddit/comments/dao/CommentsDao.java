package kr.or.ddit.comments.dao;

import kr.or.ddit.comments.model.CommentsVo;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import javax.annotation.Resource;
import java.util.List;

/**
 * kr.or.ddit.board.dao
 * null.java
 * Desc : 댓글 다오
 *
 * @Author : "Mr.KKu"
 * @Date : 2018-10-23 / 오전 12:43
 * @Version :
 */
@Repository
public class CommentsDao implements CommentsDaoInf {
	
	@Resource(name = "sqlSessionTemplate")
	private SqlSessionTemplate template;

	/**
	 * 댓글 검색
	 * @param postNo
	 * @return
	 */
	@Override
	public CommentsVo selectCmt(String postNo) {
		CommentsVo attVo = template.selectOne("cmt.selectCmt",postNo);
		return attVo;
	}

	@Override
	public List<CommentsVo> selectCmtList(String postNo) {
		List<CommentsVo> attList = template.selectList("cmt.selectCmtList",postNo);
		return attList;
	}

	/**
	 * 댓글 생성
	 * @param cmtVo
	 * @return
	 */
	@Override
	public int insertCmt(CommentsVo cmtVo) {
		int resultCnt = template.insert("cmt.insertCmt",cmtVo);
		return resultCnt;
	}

	/**
	 * 댓글 수정
	 * @param cmtVo
	 * @return
	 */
	@Override
	public int updateCmt(CommentsVo cmtVo) {
		
		int resultCnt = template.insert("cmt.updateCmt",cmtVo);
		
		
		return resultCnt;
	}

	/**
	 * 댓글 삭제
	 * @param postNo
	 * @return
	 */
	@Override
	public int deleteCmt(String postNo) {
		int resultCnt = template.insert("cmt.deleteCmt",postNo);
		return resultCnt;
	}
}
