package controller;

import java.awt.event.ActionListener;

import javax.swing.JOptionPane;

import java.awt.event.ActionEvent;

import view.View_main;
import view.View_pregame;

public class Logic_View_pregame implements ActionListener{

	private View_main vm;
	private View_pregame vp;
	private int num_categorias;
	private int dificultad;
	private String categorias_seleccionadas="";
	private String aux = "";
	
	public Logic_View_pregame(View_pregame vp)
	{
		this.vp = vp;
		num_categorias = 1;
		dificultad=1;
		this.vp.chckbx_arte.setSelected(true);
		this.vp.rdbtn.setSelected(true);
		this.vp.rdbtn.addActionListener(this);
		this.vp.rdbtn_1.addActionListener(this);
		this.vp.rdbtn_2.addActionListener(this);
		this.vp.btn_iniciar.addActionListener(this);
		this.vp.btn_cancelar.addActionListener(this);
		this.vp.chckbx_arte.addActionListener(this);
		this.vp.chckbx_calc.addActionListener(this);
		this.vp.chckbx_ciencias.addActionListener(this);
		this.vp.chckbx_cine.addActionListener(this);
		this.vp.chckbx_geo.addActionListener(this);
		this.vp.chckbx_historia.addActionListener(this);
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
			if(num_categorias<3)
			{
				JOptionPane.showMessageDialog(vm, "Debe seleccionar 3 categorías o más");
			}
			else
			{
				String conf = "Nivel: "+dificultad+"\nCategorías Seleccionadas: \n";
				JOptionPane.showConfirmDialog(vm, conf);
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
		if(e.getSource()==vp.chckbx_arte)
		{
			
			if(vp.chckbx_arte.isSelected())
				num_categorias++;
			else
				num_categorias--;
		}
		if(e.getSource()==vp.chckbx_calc)
		{
			if(vp.chckbx_calc.isSelected())
				num_categorias++;
			else
				num_categorias--;
		}
		if(e.getSource()==vp.chckbx_ciencias)
		{
			if(vp.chckbx_ciencias.isSelected())
				num_categorias++;
			else
				num_categorias--;
		}
		if(e.getSource()==vp.chckbx_cine)
		{
			if(vp.chckbx_cine.isSelected())
				num_categorias++;
			else
				num_categorias--;
		}
		if(e.getSource()==vp.chckbx_geo)
		{
			if(vp.chckbx_geo.isSelected())
				num_categorias++;
			else
				num_categorias--;
		}
		if(e.getSource()==vp.chckbx_historia)
		{
			if(vp.chckbx_historia.isSelected())
				num_categorias++;
			else
				num_categorias--;
		}
		
	}

}
