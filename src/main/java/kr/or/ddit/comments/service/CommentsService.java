package kr.or.ddit.comments.service;

import kr.or.ddit.comments.dao.CommentsDaoInf;
import kr.or.ddit.comments.model.CommentsVo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

/**
 * kr.or.ddit.board.service
 * null.java
 * Desc :
 *
 * @Author : "Mr.KKu"
 * @Date : 2018-10-23 / 오전 12:41
 * @Version :
 */
@Service
@Transactional
public class CommentsService implements CommentsServiceInf{

	@Autowired
	private CommentsDaoInf dao;

	@Override
	public List<CommentsVo> selectCmtList(String postNo) {
		return dao.selectCmtList(postNo);
	}

	@Override
	public CommentsVo selectCmt(String postNo) {
		return dao.selectCmt(postNo);
	}

	@Override
	public int insertCmt(CommentsVo cmtVo) {
		return dao.insertCmt(cmtVo);
	}

	@Override
	public int updateCmt(CommentsVo cmtVo) {
		return dao.updateCmt(cmtVo);
	}

	@Override
	public int deleteCmt(String postNo) {
		return dao.deleteCmt(postNo);
	}
}
