package view;

import java.awt.Dimension;
import java.awt.EventQueue;
import java.awt.Toolkit;
import java.awt.event.WindowAdapter;
import java.awt.event.WindowEvent;

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
import javax.swing.SwingConstants;

public class View_pregame_general extends JFrame {

	private JPanel contentPane;
	public JButton btn_iniciar;
	public JButton btn_cancelar;
	public JSlider slider_tiempo;
	public JSlider slider_participantes;
	public JRadioButton rdbtn;
	public JRadioButton rdbtn_1;
	public JRadioButton rdbtn_2;
	public JCheckBox chckbx_historia;
	public JCheckBox chckbx_deportes;
	public JCheckBox chckbx_math;
	public JCheckBox chckbx_bio;
	public JCheckBox chckbx_geo;
	public JCheckBox chckbx_arte;
	public JCheckBox chckbx_gastro;
	
	//private Logic_View_pregame lvp;
	

	/**
	 * Launch the application.
	 */
	public static void main(String[] args) {
		EventQueue.invokeLater(new Runnable() {
			public void run() {
				try {
					View_pregame_general frame = new View_pregame_general();
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
	public View_pregame_general() {
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
		setTitle("Configuración	");
		
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
		
		JLabel lblNewLabel = new JLabel("Categorías:");
		lblNewLabel.setFont(new Font("Tahoma", Font.BOLD, 14));
		lblNewLabel.setBounds(28, 82, 85, 22);
		panel.add(lblNewLabel);
		
		chckbx_deportes = new JCheckBox("Deportes");
		chckbx_deportes.setFont(new Font("Tahoma", Font.PLAIN, 13));
		chckbx_deportes.setBounds(95, 112, 85, 23);
		panel.add(chckbx_deportes);
		
		chckbx_historia = new JCheckBox("Historia");
		chckbx_historia.setFont(new Font("Tahoma", Font.PLAIN, 13));
		chckbx_historia.setBounds(8, 111, 77, 23);
		panel.add(chckbx_historia);
		
		chckbx_math = new JCheckBox("Matemáticas");
		chckbx_math.setFont(new Font("Tahoma", Font.PLAIN, 13));
		chckbx_math.setBounds(190, 113, 97, 23);
		panel.add(chckbx_math);
		
		chckbx_bio = new JCheckBox("Biología");
		chckbx_bio.setFont(new Font("Tahoma", Font.PLAIN, 13));
		chckbx_bio.setBounds(297, 114, 85, 23);
		panel.add(chckbx_bio);
		
		chckbx_geo = new JCheckBox("Geografía");
		chckbx_geo.setFont(new Font("Tahoma", Font.PLAIN, 13));
		chckbx_geo.setBounds(392, 115, 85, 23);
		panel.add(chckbx_geo);
		
		JLabel lblNivel = new JLabel("Nivel:");
		lblNivel.setFont(new Font("Tahoma", Font.BOLD, 14));
		lblNivel.setBounds(28, 154, 85, 22);
		panel.add(lblNivel);
		
		rdbtn = new JRadioButton("1");
		rdbtn.setFont(new Font("Tahoma", Font.PLAIN, 13));
		rdbtn.setBounds(28, 183, 37, 23);
		panel.add(rdbtn);
		
		rdbtn_1 = new JRadioButton("2");
		rdbtn_1.setFont(new Font("Tahoma", Font.PLAIN, 13));
		rdbtn_1.setBounds(76, 183, 37, 23);
		panel.add(rdbtn_1);
		
		rdbtn_2 = new JRadioButton("3");
		rdbtn_2.setFont(new Font("Tahoma", Font.PLAIN, 13));
		rdbtn_2.setBounds(125, 183, 37, 23);
		panel.add(rdbtn_2);
		
		JLabel lblTiempo = new JLabel("Tiempo:");
		lblTiempo.setFont(new Font("Tahoma", Font.BOLD, 14));
		lblTiempo.setBounds(28, 213, 85, 22);
		panel.add(lblTiempo);
		
		slider_tiempo = new JSlider(JSlider.HORIZONTAL, 1, 5, 1);
		slider_tiempo.setPaintTicks(true);
		slider_tiempo.setMajorTickSpacing(1);
		slider_tiempo.setMinorTickSpacing(1);
		slider_tiempo.setMaximum(5);
		slider_tiempo.setMinimum(1);
		slider_tiempo.setPaintLabels(true);
		slider_tiempo.setBounds(38, 239, 326, 45);
		panel.add(slider_tiempo);
		
		btn_iniciar = new JButton("Iniciar");
		btn_iniciar.setBounds(142, 295, 120, 39);
		panel.add(btn_iniciar);
		
		btn_cancelar = new JButton("Cancelar");
		btn_cancelar.setBounds(404, 295, 120, 39);
		panel.add(btn_cancelar);
		
		JLabel lblParticipantes = new JLabel("Participantes:");
		lblParticipantes.setFont(new Font("Tahoma", Font.BOLD, 14));
		lblParticipantes.setBounds(28, 11, 115, 22);
		panel.add(lblParticipantes);
		
		JLabel lblMinutos = new JLabel("(minutos)");
		lblMinutos.setFont(new Font("Tahoma", Font.ITALIC, 12));
		lblMinutos.setBounds(96, 213, 85, 22);
		panel.add(lblMinutos);
		
		slider_participantes = new JSlider(SwingConstants.HORIZONTAL, 2, 8, 2);
		slider_participantes.setPaintTicks(true);
		slider_participantes.setPaintLabels(true);
		slider_participantes.setMinorTickSpacing(2);
		slider_participantes.setMajorTickSpacing(2);
		slider_participantes.setBounds(28, 40, 326, 45);
		panel.add(slider_participantes);
		
		chckbx_arte = new JCheckBox("Arte");
		chckbx_arte.setFont(new Font("Tahoma", Font.PLAIN, 13));
		chckbx_arte.setBounds(487, 116, 66, 23);
		panel.add(chckbx_arte);
		
		chckbx_gastro = new JCheckBox("Gastronomía");
		chckbx_gastro.setFont(new Font("Tahoma", Font.PLAIN, 13));
		chckbx_gastro.setBounds(563, 117, 98, 23);
		panel.add(chckbx_gastro);
		
		//lvp = new Logic_View_pregame(this);
	}
}
