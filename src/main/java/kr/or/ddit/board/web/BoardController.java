package kr.or.ddit.board.web;

import kr.or.ddit.board.model.BoardVo;
import kr.or.ddit.board.service.BoardServiceInf;
import kr.or.ddit.member.model.MemberVo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import javax.annotation.Resource;

/**
 * kr.or.ddit.user.board.web
 * null.java
 * Desc : 보드 컨트롤러
 *
 * @Author : Mr.KKu
 * @Date : 2018-11-13 / 오후 12:17
 * @Version :
 */
@Controller
public class BoardController {

	@Resource(name = "boardService")
	private BoardServiceInf boardService;

	@RequestMapping(value="/boardController")
	public String boardController () {
		return "boardController";
	}




	@PostMapping(value = "/createBoard")
	public String createBoard(Model model, BoardVo boardVo, @SessionAttribute("memberVo")MemberVo memberVo ) {
		boardVo.setBd_creator(memberVo.getMem_id());
		boardService.createBoard(boardVo);
		return "main";
	}

}
