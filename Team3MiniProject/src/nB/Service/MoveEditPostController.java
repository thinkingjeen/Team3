package nB.Service;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import aB.Controller.ABController;
import nB.Model.PostDTO;
import nB.Model.PostDAO;

public class MoveEditPostController implements ABController {

	public void run(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PostDAO dao = PostDAO.getInstance();
		String postNumber = request.getParameter("postNumber");
		PostDTO post = dao.getPostByPostNumber(postNumber);
		
		request.setAttribute("editPost", post);
		request.getRequestDispatcher("/NBView/editPost.jsp").forward(request, response);
	}
}
