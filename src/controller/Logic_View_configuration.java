package controller;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;

import javax.swing.JOptionPane;

import model.Pregunta;
import patron_generico.archivos;
import view.View_main;
import view.View_configuration;
import view.View_list_questions;

public class Logic_View_configuration implements ActionListener{

	private View_main vm;
	private View_configuration vc;
	private View_list_questions vlq;
	private archivos file;
	private Pregunta aux_question;
	
	public Logic_View_configuration(View_configuration vc)
	{
		this.vc = vc;
		this.vc.btn_return.addActionListener(this);
		this.vc.btn_load.addActionListener(this);
		this.vc.btn_edit.addActionListener(this);
		this.file= new archivos("src/");
	}
	
	private void getQuestions()
	{
		String info = file.readerFile();
		String aux[]=info.split("\n");
		int last_index=1;
		for(String s:aux)
		{
			int id=1;
			boolean exists = false;
			String[] aux3 = new String[4];
			String aux2[] = s.split(";");
			if(aux2[0].equals("Gastronomía"))
				id = 1;
			if(aux2[0].equals("Historia"))
				id = 2;
			if(aux2[0].equals("Lugares"))
				id = 3;
			if(aux2[0].equals("Personajes"))
				id = 4;
			if(aux2[0].equals("Juegos Tradicionales"))
				id = 5;
			aux3[0]=aux2[2];
			aux3[1]=aux2[3];
			aux3[2]=aux2[4];
			aux3[3]=aux2[5];
			
			for(String b:aux2)
			{
				System.out.println(b);
			}
			
			aux_question =  new Pregunta(last_index, id, aux2[1], aux3, aux2[6],Integer.parseInt(aux2[7]));
			last_index++;
			for(Pregunta p:Logic_View_main.preguntas)
			{
				if(p.getPregunta().equals(aux_question.getPregunta()))
				{
					exists = true;
					break;
				}
			}	
			if(!exists)
			{
				Logic_View_main.preguntas.add(aux_question);
				Logic_View_main.pdao.createQuestion(aux_question);
			}
		}
		
	}
	
	@Override
	public void actionPerformed(ActionEvent e) {
		// TODO Auto-generated method stub
		if(e.getSource() == vc.btn_return)
		{
			vm = new View_main();
			vc.dispose();
			vm.setVisible(true);
		}
		else if (e.getSource() == vc.btn_edit)
		{
			vlq = new View_list_questions();
			vc.dispose();
			vlq.setVisible(true);
		}
		else if(e.getSource() == vc.btn_load)
		{
			if(file.getFileChooser(vc, "txt"))
			{
				getQuestions();
			}
			else
			{
				JOptionPane.showMessageDialog(vc, "Error al importar preguntas");
			}
		}
	}

}
