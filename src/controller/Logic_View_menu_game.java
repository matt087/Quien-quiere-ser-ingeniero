package controller;

import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;

import javax.swing.JOptionPane;

import model.Participante;
import model.Participante_DAO;
import threads.Thread_players_rng;
import view.View_menu_game;

public class Logic_View_menu_game implements ActionListener{

	private View_menu_game vmg;
	
	public Logic_View_menu_game(View_menu_game vmg, int participantes)
	{
		this.vmg=vmg;
		startGame(participantes);
		setLabels();
		Thread_players_rng tpr = new Thread_players_rng(vmg, participantes);
		tpr.start();
	}
	
	public void setLabels()
	{
		vmg.lblParticipante1.setVisible(false);
		vmg.lblParticipante2.setVisible(false);
		vmg.lblParticipante3.setVisible(false);
		vmg.lblParticipante4.setVisible(false);
		vmg.lblParticipante5.setVisible(false);
		vmg.lblParticipante6.setVisible(false);
		vmg.lblParticipante7.setVisible(false);
		vmg.lblParticipante8.setVisible(false);
		vmg.lblParticipante_extra1.setVisible(false);
		vmg.lblParticipante_extra2.setVisible(false);
	}
	
	public void startGame(int num)
	{
		String participantes[] = new String[num];
		for(int i=0; i<num; i++)
		{
			participantes[i] = JOptionPane.showInputDialog("Ingrese el nombre del participante "+(i+1)+": ");
			Logic_View_main.participantes.add(new Participante(i+1, participantes[i], 0));
		}
	}
	
	@Override
	public void actionPerformed(ActionEvent e) {
		// TODO Auto-generated method stub
		
	}

}
