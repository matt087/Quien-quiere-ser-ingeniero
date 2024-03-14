package controller;

import java.awt.event.ActionListener;

import javax.swing.JOptionPane;
import javax.swing.event.ChangeEvent;
import javax.swing.event.ChangeListener;

import java.awt.event.ActionEvent;

import view.View_main;
import view.View_menu_game;
import view.View_pregame;

public class Logic_View_pregame implements ActionListener{

	private View_main vm;
	private View_pregame vp;
	private int num_categorias;
	private int dificultad;
	private int participantes=2;
	private String categorias_seleccionadas="";
	private String aux="", aux1="",aux2="",aux3="",aux4="";
	private int tiempo=1;
	private int resultado=0;

	public Logic_View_pregame(View_pregame vp)
	{
		this.vp = vp;
		num_categorias = 0;
		dificultad=1;
		this.vp.rdbtn.setSelected(true);
		this.vp.rdbtn.addActionListener(this);
		this.vp.rdbtn_1.addActionListener(this);
		this.vp.rdbtn_2.addActionListener(this);
		this.vp.btn_iniciar.addActionListener(this);
		this.vp.btn_cancelar.addActionListener(this);
		this.vp.chckbx_historia.addActionListener(this);
		this.vp.chckbx_gastronomia.addActionListener(this);
		this.vp.chckbx_lugares.addActionListener(this);
		this.vp.chckbx_Juegos.addActionListener(this);
		this.vp.chckbx_personajes.addActionListener(this);
		this.vp.slider_participantes.addChangeListener(new ChangeListener() {
			@Override
			public void stateChanged(ChangeEvent e) 
			{
				// TODO Auto-generated method stub
				participantes = vp.slider_participantes.getValue();
			}
		});
		this.vp.slider_tiempo.addChangeListener(new ChangeListener() {
			@Override
			public void stateChanged(ChangeEvent e) 
			{
				// TODO Auto-generated method stub
				tiempo = vp.slider_tiempo.getValue();
			}
		});
	}

	@Override
	public void actionPerformed(ActionEvent e) {
		// TODO Auto-generated method stub
		if(e.getSource() == vp.btn_cancelar)
		{
			vm = new View_main();
			vp.dispose();
			vm.setVisible(true);
		}
		if(e.getSource() == vp.btn_iniciar)
		{
			categorias_seleccionadas=aux+aux1+aux2+aux3+aux4;
			if(num_categorias<3)
			{
				JOptionPane.showMessageDialog(vm, "Debe seleccionar 3 categorías o más", "Error", JOptionPane.ERROR_MESSAGE);
			}
			else 
			{
				if(participantes%2!=0) 
				{
					participantes-=1;
				}
				String conf = "Nivel: "+dificultad+"\nCategorías Seleccionadas: \n"+categorias_seleccionadas
						+"\nParticipantes: "+participantes+"\nTiempo: "+tiempo+" minutos";
				resultado = JOptionPane.showConfirmDialog(vm, conf, "Confirmación",JOptionPane.OK_CANCEL_OPTION);
				if(resultado==0)
				{
					View_menu_game vmg = new View_menu_game(participantes);
					vmg.setVisible(true);
					vp.dispose();
					for(String s:Logic_View_main.categorias)
					{
						System.out.println(s);
					}
				}
			}
		}
		if(e.getSource() == vp.rdbtn)
		{
			vp.rdbtn_1.setSelected(false);
			vp.rdbtn_2.setSelected(false);
			dificultad=1;
		}
		else if(e.getSource() == vp.rdbtn_1)
		{
			vp.rdbtn.setSelected(false);
			vp.rdbtn_2.setSelected(false);
			dificultad=2;
		}
		else if(e.getSource() == vp.rdbtn_2)
		{
			vp.rdbtn_1.setSelected(false);
			vp.rdbtn.setSelected(false);
			dificultad=3;
		}
		if(e.getSource()==vp.chckbx_historia)
		{
			aux="";
			if(vp.chckbx_historia.isSelected())
			{
				num_categorias++;
				aux="  -Historia\n";
				Logic_View_main.categorias.add("Historia");
			}
			else
			{
				num_categorias--;
				aux="";
				Logic_View_main.categorias.remove("Historia");
			}
		}
		if(e.getSource()==vp.chckbx_gastronomia)
		{
			aux1="";

			if(vp.chckbx_gastronomia.isSelected())
			{
				num_categorias++;
				aux1="  -Gastronomía\n";
				Logic_View_main.categorias.add("Gastronomía");
			}			
			else
			{
				num_categorias--;
				aux1="";
				Logic_View_main.categorias.remove("Gastronomía");
			}		
		}
		if(e.getSource()==vp.chckbx_lugares)
		{
			aux2="";
			if(vp.chckbx_lugares.isSelected())
			{
				num_categorias++;
				aux2="  -Lugares\n";
				Logic_View_main.categorias.add("Lugares");
			}			
			else
			{
				num_categorias--;
				aux2="";
				Logic_View_main.categorias.remove("Lugares");
			}		
		}
		if(e.getSource()==vp.chckbx_Juegos)
		{
			aux3="";
			if(vp.chckbx_Juegos.isSelected())
			{
				num_categorias++;
				aux3="  -Juegos T.\n";
				Logic_View_main.categorias.add("Juegos Tradicionales");
			}			
			else
			{
				num_categorias--;
				aux3="";
				Logic_View_main.categorias.remove("Juegos Tradicionales");
			}		
		}
		if(e.getSource()==vp.chckbx_personajes)
		{
			aux4="";
			if(vp.chckbx_personajes.isSelected())
			{
				num_categorias++;
				aux4="  -Personajes\n";
				Logic_View_main.categorias.add("Personajes");
			}			
			else
			{
				num_categorias--;
				aux4="";
				Logic_View_main.categorias.remove("Personajes");
			}		
		}

	}

}
