package kr.or.ddit.card.web;

import kr.or.ddit.board.service.BoardServiceInf;
import kr.or.ddit.card.model.CardVo;
import kr.or.ddit.card.service.CardServiceInf;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

/**
 * kr.or.ddit.card.web
 * null.java
 * Desc :
 *
 * @Author : Mr.KKu
 * @Date : 2018-11-16 / 오후 9:29
 * @Version :
 */
@Controller
public class CardController {

	@Autowired
	private CardServiceInf cardService;

	@Autowired
	private BoardServiceInf boardService;

	@RequestMapping("/updateCard")
	public String updateCard(Model model, @RequestParam("card_no")int card_no,
							 @RequestParam("card_group")String card_group,
							 @RequestParam("card_index")float card_index) {
		CardVo cardVo = cardService.selectCard(card_no);

		System.out.println(card_index);

		cardVo.setCard_group(card_group);
		cardVo.setCard_index(card_index);

		cardService.updateCard(cardVo);
		model.addAttribute("cardList",cardService.selectAllCard());

		return "main";
	}
}
