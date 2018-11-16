package kr.or.ddit.card.dao;

import kr.or.ddit.card.model.CardVo;

import java.util.List;

/**
 * kr.or.ddit.card.dao
 * null.java
 * Desc :
 *
 * @Author : Mr.KKu
 * @Date : 2018-11-16 / 오전 11:00
 * @Version :
 */
public interface CardDaoInf {

	List<CardVo> selectAllCard();

	List<CardVo> selectGroupCard(String groupNo);

	CardVo selectCard(int cardNo);

	int createCard(CardVo cardVo);

	int updateCard(CardVo cardVo);

	int deleteCard(int cardNo);

}
