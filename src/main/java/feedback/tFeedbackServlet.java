package feedback;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class tFeedbackServlet
 */
@WebServlet("/tFeedbackServlet")
public class tFeedbackServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public tFeedbackServlet() {
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


		List<theory> store=new ArrayList<theory>();// dynamic storage to keep objects
		String sem = request.getParameter("subCode");
		System.out.println(sem);

		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/feedback","root","");
			String qry="select * from theoryq where subCode = ?;";
			PreparedStatement ps=con.prepareStatement(qry);
			ps.setString(1, sem);
			ResultSet rs = ps.executeQuery();
			theory tmp=null;// initalize
			while(rs.next())
			{
				// convert row into object
				tmp=new theory();
				//tmp=new Student(rs.getString("name"), rs.getString("dept"), qry, qry, qry, qry, qry, qry, qry, serialVersionUID, serialVersionUID, null, null);
				// rs.getType("columnname")
				tmp.setSubCode((rs.getString("subCode")));;tmp.setOne(rs.getString("one"));tmp.setTwo(rs.getString("two"));
				tmp.setThree(rs.getString("three"));tmp.setFour(rs.getString("four"));tmp.setFive(rs.getString("five"));
				tmp.setSix(rs.getString("six"));tmp.setSeven(rs.getString("seven"));tmp.setEight(rs.getString("eight"));
				tmp.setNine(rs.getString("Nine"));tmp.setTen(rs.getString("ten"));
				store.add(tmp);
			}
			RequestDispatcher dis=request.getRequestDispatcher("answerT.jsp");
			request.setAttribute("data", store);
			dis.forward(request, response);
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		finally {
			
		}
	
	
	}

}
