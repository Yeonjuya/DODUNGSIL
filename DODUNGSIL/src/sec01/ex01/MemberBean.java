package sec01.ex01;

import java.sql.Date;

public class MemberBean {
	private String id;
	private String pwd;
	private String name;
	private String addr;
	private Date joinDate;
	
	public MemberBean() {
		
	}

	public MemberBean(String id, String pwd, String name, String addr) {
		this.id = id;
		this.pwd = pwd;
		this.name = name;
		this.addr = addr;
		// 회원 테이블의 컬럼 이름과 동일하게 이름과 자료형 선언
	}



	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getPwd() {
		return pwd;
	}

	public void setPwd(String pwd) {
		this.pwd = pwd;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getAddr() {
		return addr;
	}

	public void setAddr(String addr) {
		this.addr = addr;
	}

	public Date getJoinDate() {
		return joinDate;
	}

	public void setJoinDate(Date joinDate) {
		this.joinDate = joinDate;
	}
}