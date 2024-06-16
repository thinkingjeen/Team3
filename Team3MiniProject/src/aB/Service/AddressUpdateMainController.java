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

public class AddressUpdateMainController implements ABController {

	@Override
	public void run(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {String checkedId = request.getParameter("user_CheckBox");
		AddressBookDAO dao = AddressBookDAO.getInstance();
		if(checkedId != null) {
			request.setAttribute("checked",dao.getAddress(checkedId));
			RequestDispatcher dispatcher = request.getRequestDispatcher("/ABView/updateAddress.jsp");
			dispatcher.forward(request, response);
		}
		else {
			RequestDispatcher dispatcher = request.getRequestDispatcher("/ABView/updateMain.jsp");
			dispatcher.forward(request, response);
		}
		
	}
}
