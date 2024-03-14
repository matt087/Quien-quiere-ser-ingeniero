package controller;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.util.ArrayList;
import java.util.List;

import model.Participante;
import model.Participante_DAO;
import model.Pregunta;
import model.Pregunta_DAO;
import patron_generico.archivos;
import view.View_main;
import view.View_pregame;
import view.View_configuration;

public class Logic_View_main implements ActionListener{

	private View_main vm;
	private View_configuration vc;
	private View_pregame vp;
	public static Pregunta_DAO pdao = new Pregunta_DAO();
	public static Participante_DAO padao = new Participante_DAO();
	public static List<Pregunta> preguntas;
	public static List<Participante> participantes;
	public static List<String> categorias;
	
	public Logic_View_main(View_main vm)
	{
		this.vm=vm;
		this.vm.btn_configuration.addActionListener(this);
		this.vm.btn_exit.addActionListener(this);
		this.vm.btn_start.addActionListener(this);
		Logic_View_main.preguntas = pdao.getQuestions();
		Logic_View_main.participantes = new ArrayList<Participante>();
		Logic_View_main.categorias = new ArrayList<String>();
		padao.deletePlayers();
	}
	
	@Override
	public void actionPerformed(ActionEvent e) {
		// TODO Auto-generated method stub
		if(e.getSource() == vm.btn_configuration)
		{
			vc = new View_configuration();
			vm.dispose();
			vc.setVisible(true);
		}
		if(e.getSource() == vm.btn_exit)
		{
			vm.dispose();
		}
		if(e.getSource() == vm.btn_start)
		{
			vp = new View_pregame();
			vm.dispose();
			vp.setVisible(true);
		}
	}

}
