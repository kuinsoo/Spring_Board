package kr.or.ddit.card.model;

/**
 * kr.or.ddit.card
 * null.java
 * Desc :
 *
 * @Author : Mr.KKu
 * @Date : 2018-11-16 / 오전 10:55
 * @Version :
 */
public class CardVo {

	private String card_title;
	private String card_content;
	private float card_index;
	private String card_group;

	public CardVo() {
	}

	public CardVo(String card_title, String card_content, float card_index, String card_group) {
		this.card_title = card_title;
		this.card_content = card_content;
		this.card_index = card_index;
		this.card_group = card_group;
	}

	public String getCard_title() {
		return card_title;
	}

	public void setCard_title(String card_title) {
		this.card_title = card_title;
	}

	public String getCard_content() {
		return card_content;
	}

	public void setCard_content(String card_content) {
		this.card_content = card_content;
	}

	public float getCard_index() {
		return card_index;
	}

	public void setCard_index(float card_index) {
		this.card_index = card_index;
	}

	public String getCard_group() {
		return card_group;
	}

	public void setCard_group(String card_group) {
		this.card_group = card_group;
	}

	@Override
	public String toString() {
		return "CardVo{" +
				"card_title='" + card_title + '\'' +
				", card_content='" + card_content + '\'' +
				", card_index=" + card_index +
				", card_group='" + card_group + '\'' +
				'}';
	}
}
