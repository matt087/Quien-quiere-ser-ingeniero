package view;

import java.awt.EventQueue;
import java.awt.Toolkit;
import javax.swing.JFrame;
import javax.swing.JPanel;
import java.awt.Dimension;
import javax.swing.JButton;
import javax.swing.ImageIcon;
import java.awt.Image;

import controller.Logic_View_main;
import javax.swing.JLabel;
import javax.swing.JToggleButton;

public class View_main extends JFrame {
	public JButton btn_start;
	public JButton btn_configuration;
	public JButton btn_exit;
	private Logic_View_main lvm;
	private JLabel lblNewLabel;
	public JToggleButton tgl_btn;

	/**
	 * Launch the application.
	 */
	public static void main(String[] args) {
		EventQueue.invokeLater(new Runnable() {
			public void run() {
				try {
					View_main frame = new View_main();
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
	public View_main() {
		setDefaultCloseOperation(JFrame.DISPOSE_ON_CLOSE);
		setResizable(false);
		setTitle("¿Quién quiere ser ingeniero?");
		setBounds(300, 300, 683, 384);

		Dimension screenSize = Toolkit.getDefaultToolkit().getScreenSize();
		int width = screenSize.width / 2;
		int height = screenSize.height / 2;

		int x = (screenSize.width - width) / 2;
		int y = (screenSize.height - height) / 2;
		setLocation(x, y);

		getContentPane().setLayout(null);
		getContentPane().setLayout(null);

		JPanel panel = new JPanel();
		panel.setBounds(0, 0, 667, 345);
		getContentPane().add(panel);
		panel.setLayout(null);

		btn_configuration = new JButton("Configuración");
		btn_configuration.setBounds(265, 257, 136, 23);
		panel.add(btn_configuration);

		btn_exit = new JButton("Salir");
		btn_exit.setBounds(265, 291, 136, 23);
		panel.add(btn_exit);

		btn_start = new JButton("Iniciar");
		btn_start.setBounds(265, 223, 136, 23);
		panel.add(btn_start);

		ImageIcon imagen1 = new ImageIcon("src/resources/qqsi.png");
		Image image1 = imagen1.getImage().getScaledInstance(230, 215, Image.SCALE_SMOOTH);
		ImageIcon scaled1 = new ImageIcon(image1);

		lblNewLabel = new JLabel(scaled1);
		lblNewLabel.setBounds(198, 11, 266, 201);
		panel.add(lblNewLabel);
		
		tgl_btn = new JToggleButton("");
		tgl_btn.setBounds(10, 11, 117, 23);
		panel.add(tgl_btn);

		lvm = new Logic_View_main(this);
	}
}
