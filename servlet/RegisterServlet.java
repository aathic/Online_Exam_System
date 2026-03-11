package servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import db.DBConnection;
@WebServlet("/RegisterServlet")
public class RegisterServlet extends HttpServlet {
	@Override
	public void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String name=req.getParameter("name");
		String email=req.getParameter("email");
		String password=req.getParameter("password");
		
		Connection c= DBConnection.getConnection();
		PrintWriter out=resp.getWriter();
		try {
			PreparedStatement ps=c.prepareStatement("insert into users(name,email,password,role)values(?,?,?,'student')");
			ps.setString(1, name);
			ps.setString(2, email);
			ps.setString(3, password);
			ps.executeUpdate();
			resp.sendRedirect("login.jsp");
		} catch (Exception e) {
			out.print(e);
			e.printStackTrace();
		}
	}
}
