package servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.Staff;
import service.IStaffService;
import service.StaffServiceImp;

/**
 * Servlet implementation class GetStaffServlet
 */
@WebServlet("/GetStaffServlet")
public class GetStaffServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public GetStaffServlet() {
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
		response.setContentType("text/html");

		
		String staffID = request.getParameter("staffID");
		IStaffService iStaffService = new StaffServiceImp();
		Staff staff = iStaffService.getStaffByID(staffID);
		
		request.setAttribute("staff", staff);
		RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/admin/GetStaff.jsp");
		
		dispatcher.forward(request, response);
	}

}
