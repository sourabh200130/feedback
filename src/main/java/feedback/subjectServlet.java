package feedback;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class subjectServlet
 */
@WebServlet("/subjectServlet")
public class subjectServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public subjectServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		// TODO Auto-generated method stub
		String subName=request.getParameter("subName");
		String subCode=request.getParameter("subCode");
		String sem=request.getParameter("sem");
		String lecName=request.getParameter("lecName");
		String subType=request.getParameter("type");
		
		try {
			// Driver
			Class.forName("com.mysql.cj.jdbc.Driver");
			// connection: url, username,pass
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/feedback","root","");
			// writing query
			String qry="insert into subject(subName,subCode,sem,lecName,type) values(?,?,?,?,?)";
			// Writing statement
			PreparedStatement ps=con.prepareStatement(qry);
			ps.setString(1, subName);ps.setString(2, subCode);ps.setString(3, sem);ps.setString(4, lecName);ps.setString(5, subType);
			
			//execute 
			int ack=ps.executeUpdate();
			
			if(ack!=0)
			{
				if(subType.equalsIgnoreCase("theory")) {
					request.setAttribute("subCode", subCode);
					RequestDispatcher dis=request.getRequestDispatcher("addQuestionT.jsp");
					dis.forward(request, response);
				}
				else {
					request.setAttribute("subCode", subCode);
					RequestDispatcher dis=request.getRequestDispatcher("addQuestionL.jsp");
					dis.forward(request, response);
				}
			}
		} catch (ClassNotFoundException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		} catch (SQLException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}
	
	}

}
