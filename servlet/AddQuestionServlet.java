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
@WebServlet("/AddQuestionServlet")
public class AddQuestionServlet extends HttpServlet {
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String correct_answer=req.getParameter("correct_answer");
		String option1=req.getParameter("option1");
		String option2=req.getParameter("option2");
		String option3=req.getParameter("option3");
		String option4=req.getParameter("option4");
		
		String exam_id=req.getParameter("exam_id");
		String question=req.getParameter("question");
		
		try {
			Connection c=DBConnection.getConnection();
			PreparedStatement ps=c.prepareStatement("insert into question(exam_id,question,option1,option2,option3,option4,correct_answer) values(?,?,?,?,?,?,?)");
			ps.setString(2,question);
			ps.setInt(1,Integer.parseInt(exam_id));
			ps.setString(3, option1);
			ps.setString(4, option2);
			ps.setString(5, option3);
			ps.setString(6, option4);
			ps.setString(7,correct_answer);
			ps.executeUpdate();
			resp.getWriter().print("question added");
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}
