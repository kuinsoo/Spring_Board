package kr.or.ddit.post.dao;

import kr.or.ddit.post.model.PostVo;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import javax.annotation.Resource;
import java.util.List;
import java.util.Map;

/**
 * kr.or.ddit.board.dao
 * null.java
 * Desc : 게시글 다오
 *
 * @Author : "Mr.KKu"
 * @Date : 2018-10-21 / 오전 11:54
 * @Version :
 */
@Repository
public class PostDao implements PostDaoInf{

	@Resource(name = "sqlSessionTemplate")
	private SqlSessionTemplate template;


	/**
	 * 게시글 검색
	 * @return
	 */
	@Override
	public PostVo selectPost(String post_no) {
		PostVo postVo = template.selectOne("post.selectPost",post_no);
		return postVo;
	}

	/**
	 * 전체 게시글 검색
	 * @return
	 */
	@Override
	public List<PostVo> selectAllPost(String bd_no) {
		List<PostVo> postList = template.selectList("post.selectAllPost",bd_no);
		return  postList;
	}

	/**
	 * 게시판 안 전체 게시글 검색
	 * @return
	 */
	@Override
	public List<PostVo> selectBoardInPost(Map<String,String> postMap) {
		List<PostVo> postList = template.selectList("post.selectBoardInPost",postMap);
		return  postList;
	}

	/**
	 * 게시글 생성
	 * @param postVo
	 * @return
	 */
	@Override
	public int createPost(PostVo postVo) {
		int resultCnt = template.insert("post.createPost",postVo);
		return  resultCnt;
	}

	/**
	 * 게시글 수정
	 * @param postVo
	 * @return
	 */
	@Override
	public int editPost(PostVo postVo) {
		int resultCnt = template.update("post.editPost",postVo);
		return  resultCnt;
	}

	/**
	 * 게시글 삭제
	 * @param post_no
	 * @return
	 */
	@Override
	public int deletePost(String post_no) {
		int resultCnt = template.delete("post.deletePost",post_no);
		return  resultCnt;
	}

	/**
	 * 게시 답글 생성
	 * @param postVo
	 * @return
	 */
	@Override
	public int createRePost(PostVo postVo) {
		int resultCnt = template.insert("post.createRePost",postVo);
		return  resultCnt;
	}
}
