package aB.Service;

import java.io.IOException;
import java.sql.Connection;

import aB.Model.*;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import aB.Controller.ABController;

public class AddressDeleteController implements ABController {

	@Override
	public void run(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		HttpSession session = request.getSession();
		String userID = ((MemberDTO)(session.getAttribute("user"))).getId();
		
		String[] checkedId = request.getParameterValues("user_CheckBox");
		AddressBookDAO dao = AddressBookDAO.getInstance();
		
		if (checkedId != null) {
			for (String id : checkedId) {
				dao.deleteAddress(id);
			}
			RequestDispatcher dispatcher = request.getRequestDispatcher("/ABView/main.jsp");
			session.setAttribute("ab", dao.getAddressList(userID));
			dispatcher.forward(request, response);	
		}
		else {
			RequestDispatcher dispatcher = request.getRequestDispatcher("/ABView/deleteMain.jsp");
			dispatcher.forward(request, response);
		}
	}
}
