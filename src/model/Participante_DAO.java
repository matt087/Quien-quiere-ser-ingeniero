package model;

import java.util.List;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import patron_generico.connection;

public class Participante_DAO {

	private connection query = new connection("QQSI");
	private String querySQL="";
	
	public boolean createPlayer(Participante p)
	{
		querySQL=String.format("INSERT INTO participantes VALUES(%d, '%s', %d);",
				p.getId_participante(),
				p.getNombre(),
				p.getPuntuacion());
		return query.setQuery(querySQL);
	}
	
	public List<Participante> getPlayers()
	{
		List<Participante> participantes = new ArrayList<Participante>();
		querySQL="SELECT * FROM participantes;";
		ResultSet res=query.getQuery(querySQL);
		try {
			while(res.next()) 
			{
				participantes.add(new Participante(
						res.getInt(1), 
						res.getString(2), 
						res.getInt(3)));
			}
		} catch (SQLException e) 
		{
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return participantes;
	}
	
	public boolean deletePlayers()
	{
		querySQL=String.format("TRUNCATE TABLE participantes");
		return query.setQuery(querySQL);
	}
	
}
