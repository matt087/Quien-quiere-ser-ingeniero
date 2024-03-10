package model;

public class Pregunta 
{
	int id_pregunta;
	int id_categoría;
	String pregunta;
	String opciones[];
	String respuesta;
	int nivel;
	
	public Pregunta(int id_pregunta, int id_categoría, String pregunta, 
			String[] opciones, String respuesta,int nivel) 
	{
		this.id_pregunta = id_pregunta;
		this.id_categoría = id_categoría;
		this.pregunta = pregunta;
		this.opciones = opciones;
		this.respuesta = respuesta;
		this.nivel = nivel;
	}
	
	public int getId_pregunta() 
	{
		return id_pregunta;
	}
	public void setId_pregunta(int id_pregunta) 
	{
		this.id_pregunta = id_pregunta;
	}
	public int getId_categoría() 
	{
		return id_categoría;
	}
	public void setId_categoría(int id_categoría) 
	{
		this.id_categoría = id_categoría;
	}
	public String getPregunta() 
	{
		return pregunta;
	}
	public void setPregunta(String pregunta) 
	{
		this.pregunta = pregunta;
	}
	public String[] getOpciones() 
	{
		return opciones;
	}
	public void setOpciones(String[] opciones) 
	{
		this.opciones = opciones;
	}
	public String getRespuesta() 
	{
		return respuesta;
	}
	public void setRespuesta(String respuesta) 
	{
		this.respuesta = respuesta;
	}
	public int getNivel() 
	{
		return nivel;
	}
	public void setNivel(int nivel) 
	{
		this.nivel = nivel;
	}

	public String getInfo()
	{
		return getPregunta()+" Opciones: ["+getOpciones()[0]+", "+getOpciones()[1]+", "+getOpciones()[2]+", "
				+getOpciones()[3]+"] Respuesta: "+getRespuesta()+" Nivel: "+getNivel();
	}

}
