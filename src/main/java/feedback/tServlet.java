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

/**
 * Servlet implementation class tServlet
 */
@WebServlet("/tServlet")
public class tServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public tServlet() {
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
		String one=request.getParameter("one");
		String two=request.getParameter("two");
		String three=request.getParameter("three");
		String four=request.getParameter("four");
		String five=request.getParameter("five");
		String six=request.getParameter("six");
		String seven=request.getParameter("seven");
		String eight=request.getParameter("eight");
		String nine=request.getParameter("nine");
		String ten=request.getParameter("ten");
		
		try {
			// Driver
			Class.forName("com.mysql.cj.jdbc.Driver");
			// connection: url, username,pass
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/feedback","root","");
			// writing query
			String qry="insert into theoryq(subCode,one,two,three,four,five,six,seven,eight,nine,ten) values(?,?,?,?,?,?,?,?,?,?,?)";
			// Writing statement
			PreparedStatement ps=con.prepareStatement(qry);
			ps.setString(1, subCode);ps.setString(2, one);ps.setString(3, two);ps.setString(4, three);ps.setString(5, four);ps.setString(6,five);
			ps.setString(7,six);ps.setString(8,seven);ps.setString(9,eight);ps.setString(10,nine);ps.setString(11,ten);
			
			//execute 
			int ack=ps.executeUpdate();
			RequestDispatcher dis=request.getRequestDispatcher("staffHome.jsp");
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
