package kr.or.ddit.member.service;

import kr.or.ddit.common.RootContext;
import kr.or.ddit.common.util.encrypt.KISA_SHA256;
import kr.or.ddit.member.model.MemberVo;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;

import java.util.List;

import static org.junit.Assert.*;

/**
 * kr.or.ddit.member.service
 * JUnit4 Test Class.java.java
 * Desc :
 *
 * @Author : "Mr.KKu"
 * @Date : 2018-11-13 / 오후 11:21
 * @Version :
 */
public class MemberServiceTest extends RootContext {

	@Autowired
	private MemberServiceInf memberService;

	@Test
	public void selectAllUser() {
		/*** Given ***/

		/*** When ***/
		List<MemberVo> listUser = memberService.selectAllMember();

		/*** Then ***/
		assertEquals(106, listUser.size());
	}

	@Test
	public void selectUser() throws Exception {
		/*** Given ***/

		/*** When ***/
		MemberVo memberVo= memberService.selectMember("brown");

		/*** Then ***/
		assertEquals(KISA_SHA256.encrypt("1"), memberVo.getMem_pass());

	}
}