package servlet;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import db.DBConnection;
@WebServlet("/AddExamServlet")
public class AddExamServlet extends HttpServlet {
	@Override
	public void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String exam_name=req.getParameter("exam_name");
		String duration=req.getParameter("duration");
		
		try {
			Connection con=DBConnection.getConnection();
			
			PreparedStatement ps=con.prepareStatement("insert into exams(exam_name,duration) values(?,?)");
			
			ps.setString(1, exam_name);
			ps.setString(2,duration);
			
			ps.executeUpdate();
			
			resp.getWriter().print("exam added successfully");
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}
