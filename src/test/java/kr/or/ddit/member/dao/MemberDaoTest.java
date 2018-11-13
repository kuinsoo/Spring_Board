package kr.or.ddit.member.dao;

import kr.or.ddit.common.RootContext;
import kr.or.ddit.common.util.encrypt.KISA_SHA256;
import kr.or.ddit.member.model.MemberVo;
import org.junit.Test;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import javax.annotation.Resource;
import java.util.List;

import static org.junit.Assert.assertEquals;
import static org.springframework.test.web.servlet.request.MockMvcRequestBuilders.post;

/**
 * kr.or.ddit.user.dao
 * JUnit4 Test Class.java.java
 * Desc :
 *
 * @Author : Mr.KKu
 * @Date : 2018-11-13 / 오후 2:01
 * @Version :
 */
public class MemberDaoTest extends RootContext {

	private Logger logger = LoggerFactory.getLogger(MemberDaoTest.class);

	@Resource(name = "memberDao")
	private MemberDaoInf memberDao;

	@Test
	public void selectAllUser() {
		/*** Given ***/

		/*** When ***/
		List<MemberVo> listUser = memberDao.selectAllMember();

		/*** Then ***/
		assertEquals(106, listUser.size());
	}

	@Test
	public void selectUser() throws Exception {
		/*** Given ***/

		/*** When ***/
		MemberVo memberVo= memberDao.selectMember("brown");

		/*** Then ***/
		assertEquals(KISA_SHA256.encrypt("1"), memberVo.getMem_pass());

	}
}