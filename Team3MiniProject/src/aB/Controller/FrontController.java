package aB.Controller;

import aB.Service.*;
import nB.Service.*;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/controller/*")
public class FrontController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	private Map<String, ABController> controllerMap = new HashMap<>();
	
	public FrontController() {
		controllerMap.put("/Team3MiniProject/controller/member/signIn", new MemberSignInController());
		controllerMap.put("/Team3MiniProject/controller/member/signUp", new MemberSignUpController());
		controllerMap.put("/Team3MiniProject/controller/member/logout", new MemberLogoutController());
		controllerMap.put("/Team3MiniProject/controller/member/update", new MemberUpdateController());
		controllerMap.put("/Team3MiniProject/controller/address/insert", new AddressInsertController());
		controllerMap.put("/Team3MiniProject/controller/address/update", new AddressUpdateController());
		controllerMap.put("/Team3MiniProject/controller/address/updateMain", new AddressUpdateMainController());
		controllerMap.put("/Team3MiniProject/controller/address/delete", new AddressDeleteController());
		
		

        controllerMap.put("/Team3MiniProject/controller/savePost", new SavePostController());
        controllerMap.put("/Team3MiniProject/controller/listPosts", new ListPostController());
        controllerMap.put("/Team3MiniProject/controller/viewPost", new ViewPostController());
        controllerMap.put("/Team3MiniProject/controller/moveEditPost", new MoveEditPostController());
        controllerMap.put("/Team3MiniProject/controller/editPost", new EditPostController());
        
        controllerMap.put("/Team3MiniProject/controller/postDelete", new PostDeleteController());

		
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	doHandle(request,response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	doHandle(request,response);
	}
	
	protected void doHandle(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		String requestURI = request.getRequestURI();
		ABController controller = controllerMap.get(requestURI);
		if(controller == null) {
			System.out.println("noControllerURI : "+requestURI);
		return;
		}
		controller.run(request, response);
	}
}