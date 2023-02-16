package feedback;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class adminLoginServlet
 */
@WebServlet("/adminLoginServlet")
public class adminLoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public adminLoginServlet() {
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


        
		String username = request.getParameter("userName");
        String password = request.getParameter("pass");
        System.out.println(username);
        System.out.println(password);
        String uid=username;
        try
        {
        	Class.forName("com.mysql.cj.jdbc.Driver");
        	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/feedback","root","");
            PreparedStatement statement = con.prepareStatement("select userName, password from adminLogin where userName =? and password=?");
            statement.setString(1, username);
            statement.setString(2, password);
            ResultSet result = statement.executeQuery();
            if(result.next()){  
            	HttpSession session=request.getSession();
                session.setAttribute("uname",username);
            	RequestDispatcher dispatch=request.getRequestDispatcher("staffHome.jsp");
    			request.setAttribute("username",uid);
    			dispatch.forward(request, response);
            }else{
            	RequestDispatcher dispatch=request.getRequestDispatcher("staffLogin.jsp");
    			request.setAttribute("info", "Invalid credentials");
    			dispatch.forward(request, response);
            }
        }catch(Exception e){
            System.out.println("DB related Error");
            e.printStackTrace();
        }
	}

}
