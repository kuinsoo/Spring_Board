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

	private String cart_title;
	private String cart_content;
	private String cart_index;
	private String cart_group;

	public CardVo() {
	}

	public CardVo(String cart_title, String cart_content, String cart_index, String cart_group) {
		this.cart_title = cart_title;
		this.cart_content = cart_content;
		this.cart_index = cart_index;
		this.cart_group = cart_group;
	}

	public String getCart_title() {
		return cart_title;
	}

	public void setCart_title(String cart_title) {
		this.cart_title = cart_title;
	}

	public String getCart_content() {
		return cart_content;
	}

	public void setCart_content(String cart_content) {
		this.cart_content = cart_content;
	}

	public String getCart_index() {
		return cart_index;
	}

	public void setCart_index(String cart_index) {
		this.cart_index = cart_index;
	}

	public String getCart_group() {
		return cart_group;
	}

	public void setCart_group(String cart_group) {
		this.cart_group = cart_group;
	}

	@Override
	public String toString() {
		return "CardVo{" +
				"cart_title='" + cart_title + '\'' +
				", cart_content='" + cart_content + '\'' +
				", cart_index='" + cart_index + '\'' +
				", cart_group='" + cart_group + '\'' +
				'}';
	}
}
