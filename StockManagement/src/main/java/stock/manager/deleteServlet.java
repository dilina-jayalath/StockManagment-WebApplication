package stock.manager;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class deleteServlet
 */
@WebServlet("/deleteServlet")
public class deleteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
		
		int no = Integer.parseInt(request.getParameter("num"));
		String name = request.getParameter("name");
		String code = request.getParameter("code");
		int qty = Integer.parseInt(request.getParameter("qty"));

		
		
		
boolean res = itemDBUtill.deleteItem(no);
		
		
		if(res == true){
			request.getRequestDispatcher("itemTableBtn.jsp").forward(request, response);
		}else {
			 request.getRequestDispatcher("fileHave.jsp").forward(request, response);
		}
		

		
		
	}

}
