package kr.or.ddit.board.web;

import kr.or.ddit.board.service.BoardServiceInf;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

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

	@GetMapping("/boardController")
	public String boardController (Model model) {
		model.addAttribute("listBoard",boardService.listBoard());
		return "boardController";
	}

}
