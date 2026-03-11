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

@WebServlet("/SubmitExamServlet")
public class SubmitExamServlet extends HttpServlet{
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		int score=0;
		
		try {
			Connection c=DBConnection.getConnection();
			PreparedStatement ps=c.prepareStatement("select * from question where exam_id=1");
			ResultSet rs=ps.executeQuery();
			while(rs.next()) {
				int qid=rs.getInt("question_id");
				String correct=rs.getString("correct_answer");
				String answer=req.getParameter("q"+qid);
				if(correct.equals(answer))
					score++;
			}
			PreparedStatement ps2=c.prepareStatement("insert into results(Student_id,exam_id,score)values(?,?,?)");
			ps2.setInt(1, 1);
			ps2.setInt(2, 1);
			ps2.setInt(3, score);
			
			ps2.executeUpdate();
			resp.sendRedirect("result.jsp");
			
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}
