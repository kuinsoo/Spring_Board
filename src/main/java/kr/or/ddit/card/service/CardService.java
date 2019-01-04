package kr.or.ddit.card.service;

import kr.or.ddit.card.dao.CardDaoInf;
import kr.or.ddit.card.model.CardVo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * kr.or.ddit.card.service
 * null.java
 * Desc :
 *
 * @Author : Mr.KKu
 * @Date : 2018-11-16 / 오전 11:00
 * @Version :
 */
@Service
public class CardService implements CardServiceInf {

	@Autowired
	private CardDaoInf cardDao;

	@Override
	public List<CardVo> selectAllCard() {
		return cardDao.selectAllCard() ;
	}

	@Override
	public List<CardVo> selectGroupCard(String groupNo) {
		return cardDao.selectGroupCard(groupNo);
	}

	@Override
	public CardVo selectCard(int cardNo) {
		return cardDao.selectCard(cardNo);
	}

	@Override
	public int createCard(CardVo cardVo) {
		return cardDao.createCard(cardVo);
	}

	@Override
	public int updateCard(CardVo cardVo) {
		return cardDao.updateCard(cardVo);
	}

	@Override
	public int deleteCard(int cardNo) {
		return cardDao.deleteCard(cardNo);
	}
}
