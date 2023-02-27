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
 * Servlet implementation class staffSubSelectServlet
 */
@WebServlet("/staffSubSelectServlet")
public class staffSubSelectServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public staffSubSelectServlet() {
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


		List<subject> store=new ArrayList<subject>();// dynamic storage to keep objects
		String subCode = request.getParameter("subCode");
		System.out.println(subCode);
		String subType="";
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/feedback","root","");
			String qry="select type from subject where subCode = ?;";
			PreparedStatement s=con.prepareStatement(qry);
			s.setString(1, subCode);
			ResultSet rs = s.executeQuery();
			while(rs.next()) {
				subType=rs.getString("type");
			}
			System.out.println(subType);
			if(subType.equals("theory")) {
				List<theory> t=new ArrayList<theory>();// dynamic storage to keep objects
				System.out.println(subCode);

				try {
					String qry1="select * from theorya where subCode = ?;";
					PreparedStatement ps=con.prepareStatement(qry1);
					ps.setString(1, subCode);
					ResultSet rs1 = ps.executeQuery();
					theory tmp=null;// initalize
					while(rs1.next())
					{
						// convert row into object
						tmp=new theory();
						//tmp=new Student(rs.getString("name"), rs.getString("dept"), qry, qry, qry, qry, qry, qry, qry, serialVersionUID, serialVersionUID, null, null);
						// rs.getType("columnname")
						tmp.setUSN((rs1.getString("USN")));;tmp.setOne(rs1.getString("one"));tmp.setTwo(rs1.getString("two"));
						tmp.setThree(rs1.getString("three"));tmp.setFour(rs1.getString("four"));tmp.setFive(rs1.getString("five"));
						tmp.setSix(rs1.getString("six"));tmp.setSeven(rs1.getString("seven"));tmp.setEight(rs1.getString("eight"));
						tmp.setNine(rs1.getString("Nine"));tmp.setTen(rs1.getString("ten"));
						t.add(tmp);
					}
					RequestDispatcher dis=request.getRequestDispatcher("viewFeedbackT.jsp");
					request.setAttribute("data", t);
					request.setAttribute("subCode", subCode);
					dis.forward(request, response);
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				} 
				finally {
					
				}
			}
			else if(subType.equalsIgnoreCase("lab")) {

				List<lab> t=new ArrayList<lab>();// dynamic storage to keep objects
				System.out.println(subCode);

				try {
					String qry1="select * from laba where subCode = ?;";
					PreparedStatement ps=con.prepareStatement(qry1);
					ps.setString(1, subCode);
					ResultSet rs1 = ps.executeQuery();
					lab tmp=null;// initalize
					while(rs1.next())
					{
						// convert row into object
						tmp=new lab();
						//tmp=new Student(rs.getString("name"), rs.getString("dept"), qry, qry, qry, qry, qry, qry, qry, serialVersionUID, serialVersionUID, null, null);
						// rs.getType("columnname")
						tmp.setUSN((rs1.getString("USN")));;tmp.setOne(rs1.getString("one"));tmp.setTwo(rs1.getString("two"));
						tmp.setThree(rs1.getString("three"));tmp.setFour(rs1.getString("four"));tmp.setFive(rs1.getString("five"));
						tmp.setSix(rs1.getString("six"));tmp.setSeven(rs1.getString("seven"));tmp.setEight(rs1.getString("eight"));
						t.add(tmp);
					}
					RequestDispatcher dis=request.getRequestDispatcher("viewFeedbackL.jsp");
					request.setAttribute("data", t);
					request.setAttribute("subCode", subCode);
					dis.forward(request, response);
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				} 
				finally {
					
				}
			
			
			
			
			}
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
