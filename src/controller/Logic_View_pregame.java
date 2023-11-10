package controller;

import java.awt.event.ActionListener;
import java.awt.event.ActionEvent;

import view.View_main;
import view.View_pregame;

public class Logic_View_pregame implements ActionListener{

	private View_main vm;
	private View_pregame vp;
	
	public Logic_View_pregame(View_pregame vp)
	{
		this.vp = vp;
		this.vp.chckbx_arte.setSelected(true);
		this.vp.rdbtn.setSelected(true);
		this.vp.rdbtn.addActionListener(this);
		this.vp.rdbtn_1.addActionListener(this);
		this.vp.rdbtn_2.addActionListener(this);
		this.vp.btn_iniciar.addActionListener(this);
		this.vp.btn_cancelar.addActionListener(this);	
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
		if(e.getSource() == vp.rdbtn)
		{
			vp.rdbtn_1.setSelected(false);
			vp.rdbtn_2.setSelected(false);
		}
		else if(e.getSource() == vp.rdbtn_1)
		{
			vp.rdbtn.setSelected(false);
			vp.rdbtn_2.setSelected(false);
		}
		else if(e.getSource() == vp.rdbtn_2)
		{
			vp.rdbtn_1.setSelected(false);
			vp.rdbtn.setSelected(false);
		}
	}

}
