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
import aB.Model.AddressBookDAO;

public class AddressInsertController implements ABController {

	@Override
	public void run(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		HttpSession session = request.getSession();
		String userID = ((MemberDTO)(session.getAttribute("user"))).getId();
		AddressBookDAO dao = AddressBookDAO.getInstance();
		AddressBookDTO dto = new AddressBookDTO();

		String name = request.getParameter("name");
		String phoneNumber = request.getParameter("phone");
		String email = request.getParameter("email");
		String address = request.getParameter("address");
				
		dto.setName(name);
		dto.setPhoneNumber(phoneNumber);
		dto.seteMail(email); //DTO끼리 다름 철자
		dto.setAddress(address);
		
		
		if(dao.insertAddress(userID, dto)) {
			RequestDispatcher dispatcher = request.getRequestDispatcher("/ABView/main.jsp");
			session.setAttribute("ab", dao.getAddressList(userID));
			dispatcher.forward(request, response);	
		}else {
			RequestDispatcher dispatcher = request.getRequestDispatcher("/ABView/insertAddress.jsp");
			dispatcher.forward(request, response);
		}
	}
}
