package ex01.ex02;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

public class OrderDAO {
	private Connection con;
	private PreparedStatement pstmt;
	private DataSource dataFactory;
	private int price;

	public OrderDAO() {
		try {
			Context ctx = new InitialContext();
			Context envContext = (Context) ctx.lookup("java:/comp/env");
			dataFactory = (DataSource) envContext.lookup("jdbc/oracle");
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	public List listOrder() {
		List list = new ArrayList();
		try {
			con = dataFactory.getConnection();
			String query = "select * from orders order by joinDate desc ";
			System.out.println("prepareStatememt : " + query);
			pstmt = con.prepareStatement(query);
			ResultSet rs = pstmt.executeQuery();
			while (rs.next()) {
				int num = rs.getInt("num");
				String id = rs.getString("id");
				String title = rs.getString("title");
				String content = rs.getString("content");
				int price = rs.getInt("price");
				Date joinDate = rs.getDate("joinDate");
				orderBean vo = new orderBean();
				vo.setNum(num);
				vo.setId(id);
				vo.setTitle(title);
				vo.setContent(content);
				vo.setPrice(price);
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
	public int getNext() {
	      String query = "select num from orders order by num desc ";
	      try {
	         con = dataFactory.getConnection();
	         pstmt = con.prepareStatement(query);
	         ResultSet rs = pstmt.executeQuery();
	         if(rs.next()) {
	            return rs.getInt(1) + 1;
	         }
	         return 1;
	      } catch (Exception e) {
	         e.printStackTrace();
	      }
	      return -1;
	   }
 //게시글 추가
	public void write(orderBean OB) {
	      try {
	         Connection con = dataFactory.getConnection();
	         Integer num = getNext();
	         String id = OB.getId();
	         String title = OB.getTitle();
	         String content = OB.getContent();
	         Integer price = OB.getPrice();
	         String query = "insert into orders";
	         query += " (num,id,title,content,price)";
	         query += " values(?,?,?,?,?)";
	         System.out.println("prepareStatememt: " + query);
	         pstmt = con.prepareStatement(query);
	         pstmt.setInt(1, num);
	         pstmt.setString(2, id);
	         pstmt.setString(3, title);
	         pstmt.setString(4, content);
	         pstmt.setInt(5, price);
	         pstmt.executeUpdate();
	         pstmt.close();
	      } catch (Exception e) {
	         e.printStackTrace();
	      }
	   }
	public orderBean getlistOrder(int num) {
	       orderBean vo = null;

	       try {
	           con = dataFactory.getConnection();
	           String query = "SELECT * FROM orders WHERE num = ?";
	           pstmt = con.prepareStatement(query);
	           pstmt.setInt(1, num);
	           ResultSet rs = pstmt.executeQuery();
	           if (rs.next()) {
	               String id = rs.getString("id");
	               String title = rs.getString("title");
	               String content = rs.getString("content");
	               Integer price= rs.getInt("price");
	               Date joinDate = rs.getDate("joinDate");

	               vo = new orderBean();
	               vo.setNum(num);
	               vo.setId(id);
	               vo.setTitle(title);
	               vo.setPrice(price);
	               vo.setContent(content);
	               vo.setJoinDate(joinDate);
	           }
	       } catch (SQLException e) {
	           e.printStackTrace();
	       } 
	       return vo;
	   }

	public void deleteOrder(int num) {
			try {
					con = dataFactory.getConnection();
					String query = "DELETE FROM orders WHERE num = ?";
					pstmt = con.prepareStatement(query);
					pstmt.setInt(1, num);
					pstmt.executeUpdate();
					pstmt.close();
				} catch (SQLException e) {
					e.printStackTrace();
				} 
			}
			}