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
 * Servlet implementation class insertingTServlet
 */
@WebServlet("/insertingTServlet")
public class insertingTServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public insertingTServlet() {
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
		//doGet(request, response);
		String subCode=request.getParameter("subCode");
		String one=request.getParameter("q1");
		String two=request.getParameter("q2");
		String three=request.getParameter("q3");
		String four=request.getParameter("q4");
		String five=request.getParameter("q5");
		String six=request.getParameter("q6");
		String seven=request.getParameter("q7");
		String eight=request.getParameter("q8");
		String nine=request.getParameter("q9");
		String ten=request.getParameter("q10");
		HttpSession session2=request.getSession();
		String uid=(String)session2.getAttribute("uname");

		
		try {
			// Driver
			Class.forName("com.mysql.cj.jdbc.Driver");
			// connection: url, username,pass
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/feedback","root","");
			// writing query
			String qry="insert into theorya(USN,subCode,one,two,three,four,five,six,seven,eight,nine,ten) values(?,?,?,?,?,?,?,?,?,?,?,?)";
			// Writing statement
			PreparedStatement ps=con.prepareStatement(qry);
			ps.setString(1, uid);ps.setString(2, subCode);ps.setString(3, one);ps.setString(4, two);ps.setString(5, three);ps.setString(6, four);ps.setString(7,five);
			ps.setString(8,six);ps.setString(9,seven);ps.setString(10,eight);ps.setString(11,nine);ps.setString(12,ten);
			
			//execute 
			int ack=ps.executeUpdate();
			RequestDispatcher dis=request.getRequestDispatcher("semSelection.jsp");
			if(ack!=0)
			{
				System.out.println("Record inserted");
				request.setAttribute("info","Done");
			}
			else
			{
				System.out.println("Record not inserted");
				request.setAttribute("info", "Failed");
			}
			dis.forward(request, response);
		} catch (ClassNotFoundException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		} catch (SQLException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}
	}

}
