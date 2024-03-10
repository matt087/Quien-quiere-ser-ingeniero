package view;

import java.awt.Dimension;
import java.awt.EventQueue;
import java.awt.Toolkit;
import java.awt.event.WindowAdapter;
import java.awt.event.WindowEvent;

import javax.swing.BorderFactory;
import javax.swing.JFrame;
import javax.swing.JPanel;
import javax.swing.border.Border;
import javax.swing.border.EmptyBorder;

import controller.Logic_View_menu_game;
import javax.swing.JLabel;
import java.awt.Color;
import javax.swing.SwingConstants;

public class View_menu_game extends JFrame {

	private JPanel contentPane;
	public static Logic_View_menu_game lvmg;	
	public static int num;
	public JLabel lblParticipante1;
	public JLabel lblParticipante2;
	public JLabel lblParticipante_extra1;
	public JLabel lblParticipante3;
	public JLabel lblParticipante4;
	public JLabel lblParticipante5;
	public JLabel lblParticipante6;
	public JLabel lblParticipante_extra2;
	public JLabel lblParticipante7;
	public JLabel lblParticipante8;
	public JLabel lbl_Tema;

	/**
	 * Launch the application.
	 */
	public static void main(String[] args) {
		EventQueue.invokeLater(new Runnable() {
			public void run() {
				try {
					View_menu_game frame = new View_menu_game(num);
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
	public View_menu_game(int num) {
		setDefaultCloseOperation(JFrame.DISPOSE_ON_CLOSE);
		addWindowListener(new WindowAdapter() {
			@Override
			public void windowClosing(WindowEvent e) {
				View_main vm = new View_main();
				vm.setVisible(true);
			}
		});
		setBounds(300, 300, 683, 384);
		setResizable(false);
		setTitle("Participantes");
		
		Dimension screenSize = Toolkit.getDefaultToolkit().getScreenSize();
		int width = screenSize.width / 2;
		int height = screenSize.height / 2;
//		setSize(width, height);

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
		
		Border borde = BorderFactory.createLineBorder(Color.black, 1);
		
		lblParticipante1 = new JLabel("");
		lblParticipante1.setHorizontalAlignment(SwingConstants.CENTER);
		lblParticipante1.setBackground(new Color(255, 255, 255));
		lblParticipante1.setBounds(10, 11, 146, 50);
		panel.add(lblParticipante1);
		lblParticipante1.setBorder(borde);
		
		lblParticipante2 = new JLabel("");
		lblParticipante2.setHorizontalAlignment(SwingConstants.CENTER);
		lblParticipante2.setBackground(Color.WHITE);
		lblParticipante2.setBounds(10, 77, 146, 50);
		panel.add(lblParticipante2);
		lblParticipante2.setBorder(borde);

		
		lblParticipante4 = new JLabel("");
		lblParticipante4.setHorizontalAlignment(SwingConstants.CENTER);
		lblParticipante4.setBackground(Color.WHITE);
		lblParticipante4.setBounds(10, 284, 146, 50);
		panel.add(lblParticipante4);
		lblParticipante4.setBorder(borde);
		
		lblParticipante3 = new JLabel("");
		lblParticipante3.setHorizontalAlignment(SwingConstants.CENTER);
		lblParticipante3.setBackground(Color.WHITE);
		lblParticipante3.setBounds(10, 218, 146, 50);
		panel.add(lblParticipante3);
		lblParticipante3.setBorder(borde);
		
		lblParticipante5 = new JLabel("");
		lblParticipante5.setHorizontalAlignment(SwingConstants.CENTER);
		lblParticipante5.setBackground(Color.WHITE);
		lblParticipante5.setBounds(511, 11, 146, 50);
		panel.add(lblParticipante5);
		lblParticipante5.setBorder(borde);
		
		lblParticipante6 = new JLabel("");
		lblParticipante6.setHorizontalAlignment(SwingConstants.CENTER);
		lblParticipante6.setBackground(Color.WHITE);
		lblParticipante6.setBounds(511, 77, 146, 50);
		panel.add(lblParticipante6);
		lblParticipante6.setBorder(borde);
		
		lblParticipante7 = new JLabel("");
		lblParticipante7.setHorizontalAlignment(SwingConstants.CENTER);
		lblParticipante7.setBackground(Color.WHITE);
		lblParticipante7.setBounds(511, 218, 146, 50);
		panel.add(lblParticipante7);
		lblParticipante7.setBorder(borde);
		
		lblParticipante8 = new JLabel("");
		lblParticipante8.setHorizontalAlignment(SwingConstants.CENTER);
		lblParticipante8.setBackground(Color.WHITE);
		lblParticipante8.setBounds(511, 284, 146, 50);
		panel.add(lblParticipante8);
		lblParticipante8.setBorder(borde);
		
		lblParticipante_extra1 = new JLabel("");
		lblParticipante_extra1.setHorizontalAlignment(SwingConstants.CENTER);
		lblParticipante_extra1.setBackground(Color.WHITE);
		lblParticipante_extra1.setBounds(10, 146, 146, 50);
		panel.add(lblParticipante_extra1);
		lblParticipante_extra1.setBorder(borde);
		
		lblParticipante_extra2 = new JLabel("");
		lblParticipante_extra2.setHorizontalAlignment(SwingConstants.CENTER);
		lblParticipante_extra2.setBackground(Color.WHITE);
		lblParticipante_extra2.setBounds(511, 146, 146, 50);
		panel.add(lblParticipante_extra2);
		lblParticipante_extra2.setBorder(borde);
		
		lbl_Tema = new JLabel("");
		lbl_Tema.setHorizontalAlignment(SwingConstants.CENTER);
		lbl_Tema.setBackground(Color.WHITE);
		lbl_Tema.setBounds(260, 127, 146, 90);
		panel.add(lbl_Tema);
		lbl_Tema.setBorder(borde);
		
		lvmg = new Logic_View_menu_game(this, num);
		
	}
}
