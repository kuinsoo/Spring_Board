package kr.or.ddit.member.web;

import kr.or.ddit.board.service.BoardServiceInf;
import kr.or.ddit.common.util.encrypt.KISA_SHA256;
import kr.or.ddit.member.model.MemberVo;
import kr.or.ddit.member.service.MemberServiceInf;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;

import javax.annotation.Resource;

/**
 * kr.or.ddit.user.web
 * null.java
 * Desc :
 *
 * @Author : Mr.KKu
 * @Date : 2018-11-13 / 오전 10:16
 * @Version :
 */
@Controller
@SessionAttributes("memberVo")
public class MemberController {

	 private Logger logger = LoggerFactory.getLogger(MemberController.class);
	@Resource(name = "memberService")
	private MemberServiceInf memberService;

	@Resource(name = "boardService")
	private BoardServiceInf boardService;


	@PostMapping("/searchUser")
	public String searchUser(Model model, MemberVo memberVo) {
		MemberVo chkMemberVo  = memberService.selectMember(memberVo.getMem_id());

		if(chkMemberVo != null && chkMemberVo.getMem_pass().equals(KISA_SHA256.encrypt(memberVo.getMem_pass()))) {
			model.addAttribute("memberVo",chkMemberVo);
			model.addAttribute("listBoard", boardService.selectAllBoard() );
			return "main";
		} else {
			return "common/index";
		}



	}
}
