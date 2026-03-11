package servlet;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import db.DBConnection;

@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String email=req.getParameter("email");
		String password=req.getParameter("password");
		
		try {
			Connection c= DBConnection.getConnection();
			PreparedStatement ps=c.prepareStatement("select * from users where email=? and password=?");
			ps.setString(1, email);
			ps.setString(2, password);
			ResultSet rs=ps.executeQuery();
			if(rs.next()) {
				String role=rs.getString("role");
				if(role.equals("admin")) {
					resp.sendRedirect("admin.jsp");
				}else {
					resp.sendRedirect("dashboard.jsp");
				}
			}else {
				resp.getWriter().println("<h1>INVALID USER</h1>");
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}
