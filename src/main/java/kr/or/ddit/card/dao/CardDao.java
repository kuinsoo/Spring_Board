package kr.or.ddit.card.dao;

import kr.or.ddit.card.model.CardVo;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import javax.annotation.Resource;
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
@Repository
public class CardDao implements CardDaoInf {

	@Resource(name = "sqlSessionTemplate")
	private SqlSessionTemplate template;

	@Override
	public List<CardVo> selectAllCard() {
		return template.selectList("card.selectAllCard");
	}

	@Override
	public List<CardVo> selectGroupCard(String groupNo) {
		return template.selectList("card.selectGroupCard",groupNo);
	}

	@Override
	public CardVo selectCard(int cardNo) {
		return template.selectOne("card.selectCard",cardNo);
	}

	@Override
	public int createCard(CardVo cardVo) {
		return template.insert("card.createCard",cardVo);
	}

	@Override
	public int updateCard(CardVo cardVo) {
		return template.update("card.updateCard",cardVo);
	}

	@Override
	public int deleteCard(int cardNo) {
		return template.delete("card.deleteCard",cardNo);
	}
}
