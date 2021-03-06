package servlet;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import service.INotificationService;
import service.IStaffBusService;
import service.IStaffService;
import service.NotificationServiceImp;
import service.StaffBusServiceImp;
import service.StaffServiceImp;

/**
 * Servlet implementation class DeleteNotificationServlet
 */
@WebServlet("/DeleteNotificationServlet")
public class DeleteNotificationServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DeleteNotificationServlet() {
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
		
		String NID = request.getParameter("NID");
		
		INotificationService iNotificationService  = new NotificationServiceImp();
		iNotificationService.removeNotification(NID);
		
		response.sendRedirect("admin/NotificationList.jsp");
		
	}

}
