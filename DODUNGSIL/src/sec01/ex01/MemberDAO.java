package sec01.ex01;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

public class MemberDAO {
	private Connection con;
	private PreparedStatement pstmt;
	private DataSource dataFactory;

	public MemberDAO() {
		try {
			Context ctx = new InitialContext();
			Context envContext = (Context) ctx.lookup("java:/comp/env");
			dataFactory = (DataSource) envContext.lookup("jdbc/oracle");
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	public List listMembers() {
		List list = new ArrayList();
		try {
			con = dataFactory.getConnection();
			String query = "select * from user_member order by joinDate desc ";
			System.out.println("prepareStatememt : " + query);
			pstmt = con.prepareStatement(query);
			ResultSet rs = pstmt.executeQuery();
			while (rs.next()) {
				String id = rs.getString("id");
				String pwd = rs.getString("pwd");
				String name = rs.getString("name");
				String addr = rs.getString("addr");
				Date joinDate = rs.getDate("joinDate");
				MemberBean vo = new MemberBean();
				vo.setId(id);
				vo.setPwd(pwd);
				vo.setName(name);
				vo.setAddr(addr);
				vo.setJoinDate(joinDate);
				list.add(vo);
			}
			rs.close();
			pstmt.close();
			con.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}
 //회원정보 추가
	public void addMember(MemberBean memberBean) { // 
		try {
			Connection con = dataFactory.getConnection();
			String id = memberBean.getId();
			String pwd = memberBean.getPwd();
			String name = memberBean.getName();
			String addr = memberBean.getAddr();
			String query = "insert into user_member";
			query += " (id,pwd,name,addr)";
			query += " values(?,?,?,?)";
			System.out.println("prepareStatememt: " + query);
			pstmt = con.prepareStatement(query);
			pstmt.setString(1, id);
			pstmt.setString(2, pwd);
			pstmt.setString(3, name);
			pstmt.setString(4, addr);
			pstmt.executeUpdate();
			pstmt.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	//회원정보여부
	public boolean isExisted(MemberBean memberBean) { //회원 아이디를 데이터베이스에서 조회하여 해당 아이디가 존재하는지 확인 여부
		boolean result = false;																										//boolean 형태의 값을 반환 (반환값으로 true를 반환하면 회원이 존재하고, false를 반환하면 회원이 존재하지 않음을 나타냄)
		String id = memberBean.getId();
		String pwd = memberBean.getPwd();
		try {
			con = dataFactory.getConnection();
			//Oracle의 decode() 함수를 이용해 조회하여 ID와 비밀번호가 테이블에 존재하면 true를, 존재하지 않으면 false를 조회
			String query = "select decode(count(*),1,'true','false') as result from user_member";
			query += " where id=? and pwd=?";
			System.out.println(query);
			
			//메서드로 전달된 ID와 비밀번호를 이요해 SQL문을 작성한 후 데이터베이스에 조회
			pstmt = con.prepareStatement(query);
			pstmt.setString(1, id);
			pstmt.setString(2, pwd);
			ResultSet rs = pstmt.executeQuery();
			
			//커서를 첫번째 레코드로 위치
			rs.next();
			
			result = Boolean.parseBoolean(rs.getString("result"));
			System.out.println("result = " + result);
		} catch(Exception e) {
			e.printStackTrace();
		}
		return result;
	}

}