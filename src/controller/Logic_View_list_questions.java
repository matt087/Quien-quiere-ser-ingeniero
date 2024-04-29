package controller;

import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;

import view.View_list_questions;
import model.Pregunta;

public class Logic_View_list_questions implements ActionListener{

	private View_list_questions vlq;
	private int id_pregunta=0;

	public Logic_View_list_questions(View_list_questions vlq) 
	{
		this.vlq = vlq;
		this.vlq.comboBox_questions.addActionListener(this);
		this.vlq.comboBox_questions.addItem("Seleccione una categoría: ");
		setCmbx();
	}

	private void setCmbx()
	{
		if(Logic_View_main.modo)
		{
			this.vlq.comboBox_questions.addItem("Gastronomia");
			this.vlq.comboBox_questions.addItem("Historia");
			this.vlq.comboBox_questions.addItem("Lugares");
			this.vlq.comboBox_questions.addItem("Personajes");
			this.vlq.comboBox_questions.addItem("Juegos Tradicionales");
		}
		else
		{
			this.vlq.comboBox_questions.addItem("Gastronomia");
			this.vlq.comboBox_questions.addItem("Historia");
			this.vlq.comboBox_questions.addItem("Matemáticas");
			this.vlq.comboBox_questions.addItem("Biología");
			this.vlq.comboBox_questions.addItem("Deportes");
			this.vlq.comboBox_questions.addItem("Geografía");
			this.vlq.comboBox_questions.addItem("Arte");
		}
	}
	
	@Override
	public void actionPerformed(ActionEvent e) {
		// TODO Auto-generated method stub
		if(e.getSource() == vlq.comboBox_questions)
		{
			if(!vlq.comboBox_questions.getSelectedItem().equals("Seleccione una categoría: "))
			{
				vlq.listModel.clear();
				if(vlq.comboBox_questions.getSelectedItem().equals("Gastronomia"))
					id_pregunta = 1;
				if(vlq.comboBox_questions.getSelectedItem().equals("Historia"))
					id_pregunta = 2;
				if(vlq.comboBox_questions.getSelectedItem().equals("Lugares"))
					id_pregunta = 3;
				if(vlq.comboBox_questions.getSelectedItem().equals("Personajes"))
					id_pregunta = 4;
				if(vlq.comboBox_questions.getSelectedItem().equals("Juegos Tradicionales"))
					id_pregunta = 5;
				if(vlq.comboBox_questions.getSelectedItem().equals("Matemáticas"))
					id_pregunta = 6;
				if(vlq.comboBox_questions.getSelectedItem().equals("Biología"))
					id_pregunta = 7;
				if(vlq.comboBox_questions.getSelectedItem().equals("Deportes"))
					id_pregunta = 8;
				if(vlq.comboBox_questions.getSelectedItem().equals("Geografía"))
					id_pregunta = 9;
				if(vlq.comboBox_questions.getSelectedItem().equals("Arte"))
					id_pregunta = 10;
				for(Pregunta p:Logic_View_main.preguntas)
				{
					if(p.getId_categoría()==id_pregunta)
					{
						vlq.listModel.addElement(p.getInfo());
						
					}
				}
			}
			else
				vlq.listModel.clear();
		}
		

	}

}
