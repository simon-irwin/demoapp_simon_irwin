package ie.cit.cloudapp;
import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.context.WebApplicationContext;
import org.springframework.web.context.support.WebApplicationContextUtils;


public class PlayerServlet extends HttpServlet {
	
	private WebApplicationContext ctx;

	@Override
	public void init() throws ServletException {
		ctx = WebApplicationContextUtils
				.getWebApplicationContext(getServletContext());
	}

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		PlayerRepository playerRepo = getPlayerRepo(req);
		req.setAttribute("players", playerRepo.getPlayers());
		doForward(req, resp);
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		PlayerRepository playerRepo = getPlayerRepo(req);
		Player player = new Player();
		player.setFirstName(req.getParameter("firstName"));
		player.setSurname(req.getParameter("surname"));
		playerRepo.addPlayer(player);

		req.setAttribute("players", playerRepo.getPlayers());
		doForward(req, resp);
	}

	@Override
	protected void doPut(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		Integer index = Integer.valueOf(req.getParameter("playerId"));
		//TodoRepository repo = getRepo(req);
		//Todo todo = repo.getTodos().get(index - 1);
		//todo.setDone(!todo.isDone());
		//req.setAttribute("todos", repo.getTodos());
		doForward(req, resp);
	}

	@Override
	protected void doDelete(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		Integer index = Integer.valueOf(req.getParameter("playerId"));
		PlayerRepository playerRepo = getPlayerRepo(req);
		playerRepo.getPlayers().remove(index - 1);
		req.setAttribute("todos", playerRepo.getPlayers());
		doForward(req, resp);
	}

	private PlayerRepository getPlayerRepo(HttpServletRequest req) {
		return ctx.getBean(PlayerRepository.class);
	}

	private void doForward(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		RequestDispatcher rd = getServletContext().getRequestDispatcher(
				"/signup.jsp");
		rd.forward(req, resp);
	}

}
