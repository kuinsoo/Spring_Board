package kr.or.ddit.post.dao;

import kr.or.ddit.common.RootContext;
import kr.or.ddit.post.model.PostVo;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;

import java.util.List;

import static org.junit.Assert.assertEquals;

/**
 * kr.or.ddit.post.dao
 * JUnit4 Test Class.java.java
 * Desc :
 *
 * @Author : Mr.KKu
 * @Date : 2018-11-15 / 오후 5:19
 * @Version :
 */
public class PostDaoTest extends RootContext {

	@Autowired
	private PostDaoInf postDao;

	@Test
	public void selectPost() {
		/*** Given ***/

		/*** When ***/
		PostVo postVo =  postDao.selectPost("71");
		/*** Then ***/
		assertEquals("1",postVo.getPost_writer());
	}

	@Test
	public void selectAllPost() {
		/*** Given ***/

		/*** When ***/
		List<PostVo> postVos = postDao.selectAllPost("84");
		/*** Then ***/
		assertEquals(48, postVos.size());
	}

	@Test
	public void createPost() {
		/*** Given ***/
		PostVo postVo = new PostVo();
		postVo.setPost_title("test");
		postVo.setPost_content("test");
		postVo.setPost_writer("1");
		postVo.setPost_boardno("85");
		postVo.setPost_recursion("71");
		/*** When ***/
		int resultCnt = postDao.createPost(postVo);
		/*** Then ***/
		assertEquals(1,resultCnt);
	}

	@Test
	public void editPost() {
		/*** Given ***/
		PostVo postVo = postDao.selectPost("71");
		postVo.setPost_title("testEdit");
		postVo.setPost_content("testEdit");
		postVo.setPost_writer("1");
		postVo.setPost_boardno("85");
		postVo.setPost_recursion("71");
		/*** When ***/
		int resultCnt = postDao.editPost(postVo);
		/*** Then ***/
		assertEquals(1,resultCnt);
	}

	@Test
	public void deletePost() {
		/*** Given ***/
		PostVo postVo = postDao.selectPost("71");
		/*** When ***/
		int resultCnt = postDao.deletePost(postVo.getPost_no());
		/*** Then ***/
		assertEquals(1,resultCnt);
	}

}