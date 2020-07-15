package com.Controller;

import java.io.FileWriter;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/hjhj")
public class MainController  extends HttpServlet{
	
	private static  String DB_URL = "jdbc:mysql://localhost:3306/sinhvien";
	private static  String USER_NAME = "root";
	private static  String PASSWORD = "abc123456";   

	
	protected void service(HttpServletRequest req,HttpServletResponse resp) throws ServletException, IOException {
		
		String sql = "select Ten,Mssv,LopHoc,TruongHoc,TheUuDai.theuudai from ThongTinSV inner join TheUuDai on ThongTinSV.Id = TheUuDai.Id";
		  ArrayList<thongtinsv> dulieu = new ArrayList<thongtinsv>();
		  Connection conn = getConnection(DB_URL, USER_NAME, PASSWORD);
         
		 try {
			 Statement stmt = conn.createStatement();
	          ResultSet rs = stmt.executeQuery(sql);
	            
	            while (rs.next()) { //add ResultSet to array list
	                thongtinsv thongtin = new thongtinsv();
	                thongtin.setMssv(rs.getString(2));
	                thongtin.setTen(rs.getString(1));
	                thongtin.setTruonghoc(rs.getString(4));
	                thongtin.setLophoc(rs.getString(3));
	                thongtin.setTheuudai(rs.getString(5));
	                dulieu.add(thongtin); //
	            }
	      
	            
	        } catch (Exception ex) {
	            ex.printStackTrace();
	        }
		try { // insert thong tin sinh vien
			Statement stmt = conn.createStatement();
		String ten = req.getParameter("ten"); 
		String massv = req.getParameter("massv");
		String truonghoc = req.getParameter("truonghoc");
		String lophoc = req.getParameter("lophoc");
		String vip = req.getParameter("vip");
		String sql1 = "insert into ThongTinSV (Ten, Mssv, TruongHoc, LopHoc) VALUES (\""+ ten +"\","+ massv +",\""+ truonghoc +"\",\""+lophoc+"\")";
		String sql2 = "insert into TheUuDai (theuudai) VALUES (\""+vip+"\");";
		System.out.println(sql1);
		
		stmt.executeUpdate(sql1);
		stmt.executeUpdate(sql2);
		}
		catch(Exception E) {
			E.printStackTrace();
		}
		
		req.setAttribute("dulieu", dulieu); //add arraylist to Attribute
		
		
		req.getRequestDispatcher("WEB-INF/views/index.jsp").forward(req, resp);
	}
	
	    public static Connection getConnection(String dbURL, String userName, 
	            String password) {
	        Connection conn = null;
	        try {
	            Class.forName("com.mysql.jdbc.Driver");
	            conn = DriverManager.getConnection(dbURL, userName, password);
	            System.out.println("connect successfully!");
	        } catch (Exception ex) {
	            System.out.println("connect failure!");
	            ex.printStackTrace();
	        }
	        return conn;
	    }
	
}
