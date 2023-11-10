package view;

import java.awt.Dimension;
import java.awt.EventQueue;
import java.awt.Toolkit;
import javax.swing.JFrame;
import javax.swing.JPanel;
import javax.swing.border.EmptyBorder;
import javax.swing.JButton;
import javax.swing.ImageIcon;
import java.awt.Image;


import controller.Logic_View_configuration;
import javax.swing.JLabel;
import java.awt.event.ActionListener;
import java.awt.event.ActionEvent;

public class View_configuration extends JFrame {

	private JPanel contentPane;
	public JButton btn_return;
	private Logic_View_configuration lvc;
	public JButton btn_load;
	public JButton btn_edit;
	public JButton btn_delete;
	private JLabel lblNewLabel;
	private JLabel lblNewLabel_1;
	private JLabel lblNewLabel_2;

	/**
	 * Launch the application.
	 */
	public static void main(String[] args) {
		EventQueue.invokeLater(new Runnable() {
			public void run() {
				try {
					View_configuration frame = new View_configuration();
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
	public View_configuration() {
		setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
		setResizable(false);
		setTitle("Configuración");
//		setBounds(100, 100, 450, 300);
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
		
		btn_return = new JButton("Regresar");
		btn_return.setBounds(568, 311, 89, 23);
		panel.add(btn_return);
		
		btn_load = new JButton("Cargar preguntas");
		btn_load.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent e) {
			}
		});
		btn_load.setBounds(53, 55, 150, 32);
		panel.add(btn_load);
		
		btn_edit = new JButton("Editar preguntas");
		btn_edit.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent e) {
			}
		});
		btn_edit.setBounds(257, 55, 150, 32);
		panel.add(btn_edit);
		
		btn_delete = new JButton("Borrar preguntas");
		btn_delete.setBounds(461, 55, 150, 32);
		panel.add(btn_delete);
		
		ImageIcon imagen1 = new ImageIcon("src/resources/descargar-archivo.png");
		ImageIcon imagen2 = new ImageIcon("src/resources/nuevo-documento.png");
		ImageIcon imagen3 = new ImageIcon("src/resources/eliminar-seleccion.png");
		
		Image image1 = imagen1.getImage().getScaledInstance(100, 100, Image.SCALE_SMOOTH);
		Image image2 = imagen2.getImage().getScaledInstance(100, 100, Image.SCALE_SMOOTH);
		Image image3 = imagen3.getImage().getScaledInstance(100, 100, Image.SCALE_SMOOTH);
		
		ImageIcon scaled1 = new ImageIcon(image1);
		ImageIcon scaled2 = new ImageIcon(image2);
		ImageIcon scaled3 = new ImageIcon(image3);

		lblNewLabel = new JLabel(scaled1);
		lblNewLabel.setBounds(53, 97, 150, 150);
		panel.add(lblNewLabel);
		
		lblNewLabel_1 = new JLabel(scaled2);
		lblNewLabel_1.setBounds(257, 97, 150, 150);
		panel.add(lblNewLabel_1);
		
		lblNewLabel_2 = new JLabel(scaled3);
		lblNewLabel_2.setBounds(461, 97, 150, 150);
		panel.add(lblNewLabel_2);
		lvc = new Logic_View_configuration(this);
	}
}
