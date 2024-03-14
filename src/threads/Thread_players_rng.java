package threads;

import controller.Logic_View_main;

import java.util.ArrayList;
import java.util.Random;
import model.Participante;
import view.View_menu_game;

public class Thread_players_rng extends Thread{

	private View_menu_game vmg;
	private int participantes;
	private ArrayList<Participante> nombres = new ArrayList<Participante>();
	private ArrayList<Participante> auxiliar = new ArrayList<Participante>();
	private ArrayList<String> auxiliar_categorias = new ArrayList<String>();


	public Thread_players_rng(View_menu_game vmg, int participantes)
	{
		this.vmg=vmg;
		this.participantes=participantes;
	}
	
	private void randomCategory() throws InterruptedException
	{
		sleep(1000);
		for(int i=0; i<2; i++)
		{
			for(String s:auxiliar_categorias)
			{
				this.vmg.lbl_Tema.setText(s);
				sleep(200);
			}
		}
		int index = new Random().nextInt(this.auxiliar_categorias.size());
		this.vmg.lbl_Tema.setText(auxiliar_categorias.get(index));
		auxiliar_categorias.remove(index);
	}
	
	private void copyCategories()
	{
		for(String s:Logic_View_main.categorias)
		{
			auxiliar_categorias.add(s);
		}
	}
	
	private void randomParticipante()
	{
		Participante aux1;
		while(!nombres.isEmpty())
		{
			int index = new Random().nextInt(this.nombres.size());
			aux1=nombres.get(index);
			auxiliar.add(aux1);
			nombres.remove(aux1);
		}
	}
	
	private void copyPlayers(int num)
	{
		for(Participante p:Logic_View_main.participantes)
		{
			this.nombres.add(p);
		}
		randomParticipante();
	}

	
	private void setPlayers(int num) throws InterruptedException
	{
		if(num == 2)
		{
			sleep(1000);
			vmg.lblParticipante_extra1.setText(auxiliar.get(0).getNombre());
			sleep(1000);
			vmg.lblParticipante_extra2.setText(auxiliar.get(1).getNombre());
		}
		else if(num == 4)
		{
			sleep(1000);
			vmg.lblParticipante2.setText(auxiliar.get(0).getNombre());
			sleep(1000);
			vmg.lblParticipante3.setText(auxiliar.get(1).getNombre());
			sleep(1000);
			vmg.lblParticipante6.setText(auxiliar.get(2).getNombre());
			sleep(1000);
			vmg.lblParticipante7.setText(auxiliar.get(3).getNombre());
		}
		else if(num == 6)
		{
			sleep(1000);
			vmg.lblParticipante2.setText(auxiliar.get(0).getNombre());
			sleep(1000);
			vmg.lblParticipante_extra1.setText(auxiliar.get(4).getNombre());
			sleep(1000);
			vmg.lblParticipante3.setText(auxiliar.get(1).getNombre());
			sleep(1000);
			vmg.lblParticipante6.setText(auxiliar.get(2).getNombre());
			sleep(1000);
			vmg.lblParticipante_extra2.setText(auxiliar.get(5).getNombre());
			sleep(1000);
			vmg.lblParticipante7.setText(auxiliar.get(3).getNombre());
		}
		else 
		{
			sleep(1000);
			vmg.lblParticipante1.setText(auxiliar.get(0).getNombre());
			sleep(1000);
			vmg.lblParticipante2.setText(auxiliar.get(1).getNombre());
			sleep(1000);
			vmg.lblParticipante3.setText(auxiliar.get(2).getNombre());
			sleep(1000);
			vmg.lblParticipante4.setText(auxiliar.get(3).getNombre());
			sleep(1000);
			vmg.lblParticipante5.setText(auxiliar.get(4).getNombre());
			sleep(1000);
			vmg.lblParticipante6.setText(auxiliar.get(5).getNombre());
			sleep(1000);
			vmg.lblParticipante7.setText(auxiliar.get(6).getNombre());
			sleep(1000);
			vmg.lblParticipante8.setText(auxiliar.get(7).getNombre());
		}
		
	}

	private void setLabels(int num)
	{
		if(num == 2)
		{
			vmg.lblParticipante_extra1.setVisible(true);
			vmg.lblParticipante_extra2.setVisible(true);

		}
		else if(num == 4)
		{
			vmg.lblParticipante2.setVisible(true);
			vmg.lblParticipante3.setVisible(true);
			vmg.lblParticipante6.setVisible(true);
			vmg.lblParticipante7.setVisible(true);
		}
		else if(num == 6)
		{
			vmg.lblParticipante2.setVisible(true);
			vmg.lblParticipante3.setVisible(true);
			vmg.lblParticipante6.setVisible(true);
			vmg.lblParticipante7.setVisible(true);
			vmg.lblParticipante_extra1.setVisible(true);
			vmg.lblParticipante_extra2.setVisible(true);
		}
		else 
		{
			vmg.lblParticipante1.setVisible(true);
			vmg.lblParticipante2.setVisible(true);
			vmg.lblParticipante3.setVisible(true);
			vmg.lblParticipante4.setVisible(true);
			vmg.lblParticipante5.setVisible(true);
			vmg.lblParticipante6.setVisible(true);
			vmg.lblParticipante7.setVisible(true);
			vmg.lblParticipante8.setVisible(true);
		}
	}

	public void run()
	{
		copyPlayers(participantes);
		setLabels(participantes);
		try {
			setPlayers(participantes);
			for(Participante p:auxiliar)
			{
				Logic_View_main.padao.createPlayer(p);
			}
		} catch (InterruptedException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		copyCategories();
		try {
			randomCategory();
		} catch (InterruptedException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
}
