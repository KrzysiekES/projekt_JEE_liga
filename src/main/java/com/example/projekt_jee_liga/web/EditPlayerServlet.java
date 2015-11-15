package main.java.com.example.projekt_jee_liga.web;

import main.java.com.example.projekt_jee_liga.service.StorageService;
import main.java.com.example.projekt_jee_liga.domain.Player;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import java.io.IOException;

@WebServlet(urlPatterns = "/editPlayer")
public class EditPlayerServlet extends HttpServlet
{
    /**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	@Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
    {
        response.setContentType("text/html");

        int ID = Integer.parseInt(request.getParameter("id"));
        int ClubId = Integer.parseInt(request.getParameter("clubId"));   
        String FirstName = request.getParameter("firstName");          
        String LastName = request.getParameter("lastName");        
        String Position = request.getParameter("position");    
        int Number = Integer.parseInt(request.getParameter("number"));              

        StorageService ss = (StorageService) getServletContext().getAttribute("storage");

        for (int i=0; i<ss.getAllPlayers().size(); i++)
        {
            if (ss.getAllPlayers().get(i).getPlayerId() == ID)
            {
                Player p = ss.getAllPlayers().get(i);
               p.setPlayerId(ID);
                p.setClubId(ClubId);
                p.setFirstName(FirstName);
                p.setLastName(LastName);
                p.setPosition(Position);
                p.setNumber(Number);
                break;
            }
        }

        this.getServletContext().getRequestDispatcher("/showAllPlayers.jsp").forward(request, response);
    }
}