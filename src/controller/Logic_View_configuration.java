package controller;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;

import view.View_main;
import view.View_configuration;

public class Logic_View_configuration implements ActionListener{

	private View_main vm;
	private View_configuration vc;
	
	public Logic_View_configuration(View_configuration vc)
	{
		this.vc = vc;
		this.vc.btn_return.addActionListener(this);
		this.vc.btn_load.addActionListener(this);
		this.vc.btn_edit.addActionListener(this);
		this.vc.btn_delete.addActionListener(this);
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
	}

}
