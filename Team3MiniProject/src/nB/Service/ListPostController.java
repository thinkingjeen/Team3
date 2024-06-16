package nB.Service;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import aB.Controller.ABController;
import nB.Model.PostDTO;
import nB.Model.PostDAO;

public class ListPostController implements ABController {
	
    public void run(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	PostDAO dao = PostDAO.getInstance();
    	List<PostDTO> posts = dao.getPosts(); 
        request.setAttribute("posts", posts);
        request.getRequestDispatcher("/NBView/board.jsp").forward(request, response);
    }
}


