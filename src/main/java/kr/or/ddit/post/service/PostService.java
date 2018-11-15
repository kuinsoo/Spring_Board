package kr.or.ddit.post.service;

import kr.or.ddit.post.dao.PostDaoInf;
import kr.or.ddit.post.model.PostVo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;
import java.util.Map;

/**
 * kr.or.ddit.board.service
 * null.java
 * Desc : 게시글 서비스
 *
 * @Author : "Mr.KKu"
 * @Date : 2018-10-21 / 오전 11:55
 * @Version :
 */
@Service
@Transactional
public class PostService implements PostServiceInf {

	@Autowired
	private PostDaoInf dao;

	@Override
	public PostVo selectPost(String post_no) {
		return dao.selectPost(post_no);
	}

	@Override
	public List<PostVo> selectAllPost(String bd_no) {
		return dao.selectAllPost(bd_no);
	}

	@Override
	public int createPost(PostVo postVo) {
		return dao.createPost(postVo);
	}

	@Override
	public int editPost(PostVo postVo) {
		return dao.editPost(postVo);
	}

	@Override
	public int deletePost(String post_no) {
		return dao.deletePost(post_no);
	}

	@Override
	public List<PostVo> selectBoardInPost(Map<String,String> postMap) {
		return dao.selectBoardInPost(postMap);
	}

	@Override
	public List<PostVo> searchBoardInPost(Map<String, String> postMap) {
		return dao.searchBoardInPost(postMap);
	}

	@Override
	public int createRePost(PostVo postVo) {
		return dao.createRePost(postVo);
	}

	@Override
	public int editDelPost(PostVo postVo) {
		return dao.editDelPost(postVo);
	}
}
