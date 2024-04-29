package controller;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.util.ArrayList;
import java.util.List;

import model.Participante;
import model.Participante_DAO;
import model.Pregunta;
import model.Pregunta_DAO;
import model.Pregunta2_DAO;
import view.View_main;
import view.View_pregame;
import view.View_pregame_general;
import view.View_configuration;

public class Logic_View_main implements ActionListener{

	private View_main vm;
	private View_configuration vc;
	private View_pregame vp;
	private View_pregame_general vpg;
	public static Pregunta_DAO pdao = new Pregunta_DAO();
	public static Pregunta2_DAO pdao2 = new Pregunta2_DAO();
	public static Participante_DAO padao = new Participante_DAO();
	public static List<Pregunta> preguntas;
	public static List<Participante> participantes;
	public static List<String> categorias;
	public static boolean modo;
	
	public Logic_View_main(View_main vm)
	{
		
		modo=false;
		vm.tgl_btn.setText("Normal");
		this.vm=vm;
		this.vm.btn_configuration.addActionListener(this);
		this.vm.btn_exit.addActionListener(this);
		this.vm.btn_start.addActionListener(this);
		Logic_View_main.preguntas = new ArrayList<Pregunta>();
		Logic_View_main.preguntas = pdao2.getQuestions();
		this.vm.tgl_btn.addItemListener(
				e-> {
					if(this.vm.tgl_btn.isSelected())
					{
						Logic_View_main.preguntas.clear();
						Logic_View_main.preguntas = pdao.getQuestions();
						vm.tgl_btn.setText("Quito");
						modo = true;
					}
					else
					{
						Logic_View_main.preguntas.clear();
						Logic_View_main.preguntas = pdao2.getQuestions();
						vm.tgl_btn.setText("Normal");
						modo=false;
					}
				});
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
			System.out.println(modo);
			if(modo)
			{
				vp = new View_pregame();
				vm.dispose();
				vp.setVisible(true);
			}
			else 
			{
				vpg = new View_pregame_general();
				vm.dispose();
				vpg.setVisible(true);
			}
			
		}
	}

}
