package main.java.com.example.projekt_jee_liga.web;

import main.java.com.example.projekt_jee_liga.service.StorageService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import java.io.IOException;


@WebServlet(urlPatterns = "/deletePlayer")
public class DeletePlayerServlet extends HttpServlet
{

	private static final long serialVersionUID = 1L;

	@Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
    {
        response.setContentType("text/html");

        int index = -1;
        
        int ID = Integer.parseInt(request.getParameter("iddelete"));

        StorageService ss = (StorageService) getServletContext().getAttribute("storage");

        for (int i=0; i<ss.getAllPlayers().size(); i++)
        {
            if (ss.getAllPlayers().get(i).getPlayerId() == ID)
            {
                index = i;
                break;
            }
        }
        
        if (index != -1)
            ss.getAllPlayers().remove(index);

        this.getServletContext().getRequestDispatcher("/showAllPlayers.jsp").forward(request, response);
    }
}