package view;

import java.awt.Dimension;
import java.awt.EventQueue;
import java.awt.Toolkit;

import javax.swing.JFrame;
import javax.swing.JPanel;
import javax.swing.border.EmptyBorder;
import javax.swing.JLabel;
import java.awt.Font;
import javax.swing.JCheckBox;
import javax.swing.JRadioButton;
import javax.swing.JSlider;
import javax.swing.JButton;

import controller.Logic_View_pregame;

public class View_pregame extends JFrame {

	private JPanel contentPane;
	public JButton btn_iniciar;
	public JButton btn_cancelar;
	public JSlider slider;
	public JRadioButton rdbtn;
	public JRadioButton rdbtn_1;
	public JRadioButton rdbtn_2;
	public JCheckBox chckbx_arte;
	public JCheckBox chckbx_calc;
	public JCheckBox chckbx_ciencias;
	public JCheckBox chckbx_cine;
	public JCheckBox chckbx_geo;
	public JCheckBox chckbx_historia;
	
	private Logic_View_pregame lvp;

	/**
	 * Launch the application.
	 */
	public static void main(String[] args) {
		EventQueue.invokeLater(new Runnable() {
			public void run() {
				try {
					View_pregame frame = new View_pregame();
					frame.setVisible(true);
				} catch (Exception e) {
					e.printStackTrace();
				}
			}
		});
	}

	/**
	 * Create the frame.
	 */
	public View_pregame() {
		setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
		//setBounds(100, 100, 450, 300);
		setResizable(false);
//		setTitle("¿Quién quiere ser ingeniero?");
		
		Dimension screenSize = Toolkit.getDefaultToolkit().getScreenSize();
		int width = screenSize.width / 2;
		int height = screenSize.height / 2;
		setSize(width, height);

		int x = (screenSize.width - width) / 2;
		int y = (screenSize.height - height) / 2;
		setLocation(x, y);
		
		contentPane = new JPanel();
		contentPane.setBorder(new EmptyBorder(5, 5, 5, 5));

		setContentPane(contentPane);
		contentPane.setLayout(null);
		
		JPanel panel = new JPanel();
		panel.setBounds(0, 0, 667, 345);
		contentPane.add(panel);
		panel.setLayout(null);
		
		JLabel lblNewLabel = new JLabel("Categorías:");
		lblNewLabel.setFont(new Font("Tahoma", Font.BOLD, 14));
		lblNewLabel.setBounds(10, 82, 85, 22);
		panel.add(lblNewLabel);
		
		chckbx_calc = new JCheckBox("Cálculo");
		chckbx_calc.setFont(new Font("Tahoma", Font.PLAIN, 13));
		chckbx_calc.setBounds(119, 111, 97, 23);
		panel.add(chckbx_calc);
		
		chckbx_arte = new JCheckBox("Arte");
		chckbx_arte.setFont(new Font("Tahoma", Font.PLAIN, 13));
		chckbx_arte.setBounds(10, 111, 97, 23);
		panel.add(chckbx_arte);
		
		chckbx_ciencias = new JCheckBox("Ciencias");
		chckbx_ciencias.setFont(new Font("Tahoma", Font.PLAIN, 13));
		chckbx_ciencias.setBounds(228, 111, 97, 23);
		panel.add(chckbx_ciencias);
		
		chckbx_cine = new JCheckBox("Cine");
		chckbx_cine.setFont(new Font("Tahoma", Font.PLAIN, 13));
		chckbx_cine.setBounds(337, 111, 97, 23);
		panel.add(chckbx_cine);
		
		chckbx_geo = new JCheckBox("Geografía");
		chckbx_geo.setFont(new Font("Tahoma", Font.PLAIN, 13));
		chckbx_geo.setBounds(446, 111, 97, 23);
		panel.add(chckbx_geo);
		
		chckbx_historia = new JCheckBox("Historia");
		chckbx_historia.setFont(new Font("Tahoma", Font.PLAIN, 13));
		chckbx_historia.setBounds(555, 111, 97, 23);
		panel.add(chckbx_historia);
		
		JLabel lblNivel = new JLabel("Nivel:");
		lblNivel.setFont(new Font("Tahoma", Font.BOLD, 14));
		lblNivel.setBounds(10, 149, 85, 22);
		panel.add(lblNivel);
		
		rdbtn = new JRadioButton("1");
		rdbtn.setFont(new Font("Tahoma", Font.PLAIN, 13));
		rdbtn.setBounds(10, 178, 37, 23);
		panel.add(rdbtn);
		
		rdbtn_1 = new JRadioButton("2");
		rdbtn_1.setFont(new Font("Tahoma", Font.PLAIN, 13));
		rdbtn_1.setBounds(49, 178, 37, 23);
		panel.add(rdbtn_1);
		
		rdbtn_2 = new JRadioButton("3");
		rdbtn_2.setFont(new Font("Tahoma", Font.PLAIN, 13));
		rdbtn_2.setBounds(88, 178, 63, 23);
		panel.add(rdbtn_2);
		
		JLabel lblTiempo = new JLabel("Tiempo:");
		lblTiempo.setFont(new Font("Tahoma", Font.BOLD, 14));
		lblTiempo.setBounds(10, 213, 85, 22);
		panel.add(lblTiempo);
		
		slider = new JSlider();
		slider.setBounds(10, 242, 326, 26);
		panel.add(slider);
		
		btn_iniciar = new JButton("Iniciar");
		btn_iniciar.setBounds(142, 279, 120, 39);
		panel.add(btn_iniciar);
		
		btn_cancelar = new JButton("Cancelar");
		btn_cancelar.setBounds(404, 279, 120, 39);
		panel.add(btn_cancelar);
		
		lvp = new Logic_View_pregame(this);
	}
}
