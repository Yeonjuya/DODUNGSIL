package ex01.ex02;

import java.sql.Date;

public class orderBean {
	private int num;
	private String id;
	private String title;
	private String content;
	private int price;
	public int getNum() {
		return num;
	}

	public void setNum(int num) {
		this.num = num;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public int getPrice() {
		return price;
	}

	public void setPrice(int price) {
		this.price = price;
	}

	public Date getJoinDate() {
		return joinDate;
	}

	public void setJoinDate(Date joinDate) {
		this.joinDate = joinDate;
	}

	private Date joinDate;
	
	public orderBean() {
		
	}

	public orderBean(int num, String id, String title, String content, int price){
		this.num = num;
		this.id = id;
		this.title = title;
		this.content = content;
		this.price = price;
		// 주문 테이블의 컬럼 이름과 동일하게 이름과 자료형 선언
	}
}