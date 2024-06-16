package nB.Service;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import aB.Controller.ABController;
import nB.Model.PostDTO;
import nB.Model.PostDAO;

public class ViewPostController implements ABController {
	
    public void run(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	PostDAO dao = PostDAO.getInstance();
        String postNumber = request.getParameter("postId");
        PostDTO post = dao.getPostByPostNumber(postNumber);
        if (post == null) {
        	request.getRequestDispatcher("/controller/listPosts").forward(request, response);
        }
        request.setAttribute("post", post);
        request.getRequestDispatcher("/NBView/postView.jsp").forward(request, response);
    }
}
