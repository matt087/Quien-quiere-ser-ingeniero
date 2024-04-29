package model;

import java.util.List;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import patron_generico.connection;

public class Pregunta2_DAO 
{
	private connection query = new connection("QQSI");
	private String querySQL="";

	public boolean createQuestion(Pregunta p)
	{
		querySQL=String.format("INSERT INTO pregunta VALUES(%d, %d, %d, '%s', '%s', '%s', '%s', '%s', '%s');",
				p.getId_pregunta(),
				p.getId_categoría(),
				p.getNivel(),
				p.getPregunta(),
				p.getOpciones()[0],
				p.getOpciones()[1],
				p.getOpciones()[2],
				p.getOpciones()[3],
				p.getRespuesta());
		return query.setQuery(querySQL);
	}

	public List<Pregunta> getQuestions()
	{
		List<Pregunta> preguntas = new ArrayList<Pregunta>();
		querySQL="SELECT * FROM pregunta;";
		ResultSet res=query.getQuery(querySQL);
		try {
			while(res.next()) 
			{
				String[] aux = new String[4];
				aux[0]=res.getString(5);
				aux[1]=res.getString(6);
				aux[2]=res.getString(7);
				aux[3]=res.getString(8);

				preguntas.add(new Pregunta(
						res.getInt(1),  
						res.getInt(2), 
						res.getString(4),
						aux,
						res.getString(9), 
						res.getInt(3)
						));
			}
		} catch (SQLException e) 
		{
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return preguntas;
	}
	
	public void close() 
	{
		query.closeConn();
	}

}
