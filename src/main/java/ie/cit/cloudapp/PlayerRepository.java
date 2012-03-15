package ie.cit.cloudapp;


import java.util.ArrayList;
import java.util.List;

public class PlayerRepository {
	private List<Player> players = new ArrayList<Player>();

	public List<Player> getPlayers() {
		return players;
	}

	public void addPlayer(Player player) {
		players.add(player);
	}

}