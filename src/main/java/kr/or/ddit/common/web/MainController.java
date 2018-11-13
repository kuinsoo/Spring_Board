package kr.or.ddit.common.web;

import kr.or.ddit.board.model.BoardVo;
import kr.or.ddit.board.service.BoardServiceInf;
import kr.or.ddit.member.model.MemberVo;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import javax.annotation.Resource;
import java.util.List;

/**
 * kr.or.ddit.user.common.web
 * null.java
 * Desc :
 *
 * @Author : Mr.KKu
 * @Date : 2018-11-13 / 오후 1:45
 * @Version :
 */
@Controller
public class MainController {

	@Resource(name = "boardService")
	private BoardServiceInf boardService;

	@GetMapping("/index")
	public String index() {
		return "common/index";
	}

	@PostMapping("/main")
	public String main(Model model, MemberVo memberVo) {
		List<BoardVo> listBoard = boardService.listBoard();
		model.addAttribute("listBoard", listBoard);
//		model.addAttribute("userVo", userVo);
		return "main";
	}
}