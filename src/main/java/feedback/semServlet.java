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

import feedback.subject;

/**
 * Servlet implementation class semServlet
 */
@WebServlet("/semServlet")
public class semServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public semServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {


		List<subject> store=new ArrayList<subject>();// dynamic storage to keep objects
		String sem = request.getParameter("type");
		System.out.println(sem);

		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/feedback","root","");
			String qry="select * from subject where sem = ?;";
			PreparedStatement ps=con.prepareStatement(qry);
			ps.setString(1, sem);
			ResultSet rs = ps.executeQuery();
			subject tmp=null;// initalize
			while(rs.next())
			{
				// convert row into object
				tmp=new subject();
				//tmp=new Student(rs.getString("name"), rs.getString("dept"), qry, qry, qry, qry, qry, qry, qry, serialVersionUID, serialVersionUID, null, null);
				// rs.getType("columnname")
				tmp.setSubName(rs.getString("subName"));tmp.setSubCode(rs.getString("subCode"));tmp.setSem(rs.getString("sem"));
				tmp.setLecName(rs.getString("lecName"));tmp.setType(rs.getString("type"));
				store.add(tmp);
			}
			RequestDispatcher dis=request.getRequestDispatcher("selectSub.jsp");
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
