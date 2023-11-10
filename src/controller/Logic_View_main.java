package controller;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;

import view.View_main;
import view.View_pregame;
import view.View_configuration;

public class Logic_View_main implements ActionListener{

	private View_main vm;
	private View_configuration vc;
	private View_pregame vp;
	
	
	public Logic_View_main(View_main vm)
	{
		this.vm=vm;
		this.vm.btn_configuration.addActionListener(this);
		this.vm.btn_exit.addActionListener(this);
		this.vm.btn_start.addActionListener(this);
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
