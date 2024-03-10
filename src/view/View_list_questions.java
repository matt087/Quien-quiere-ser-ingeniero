package view;

import java.awt.Dimension;
import java.awt.EventQueue;
import java.awt.Toolkit;
import java.awt.event.WindowAdapter;
import java.awt.event.WindowEvent;

import javax.swing.JFrame;
import javax.swing.JPanel;
import javax.swing.JScrollPane;
import javax.swing.border.EmptyBorder;
import javax.swing.DefaultListModel;
import javax.swing.JComboBox;
import javax.swing.JLabel;
import java.awt.Font;
import javax.swing.JList;

import controller.Logic_View_list_questions;

public class View_list_questions extends JFrame {

	private JPanel contentPane;
	public JList list_questions;
	public  DefaultListModel<String> listModel = new DefaultListModel<String>();
	public JComboBox<String> comboBox_questions;
	private Logic_View_list_questions lvlq;

	/**
	 * Launch the application.
	 */
	public static void main(String[] args) {
		EventQueue.invokeLater(new Runnable() {
			public void run() {
				try {
					View_list_questions frame = new View_list_questions();
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
	public View_list_questions() {
		setDefaultCloseOperation(JFrame.DISPOSE_ON_CLOSE);
		addWindowListener(new WindowAdapter() {
			@Override
			public void windowClosing(WindowEvent e) {
				View_configuration vc = new View_configuration();
				vc.setVisible(true);
			}
		});
		setBounds(200, 200, 600, 500);
		setResizable(false);
		setTitle("Lista de Preguntas");

		Dimension screenSize = Toolkit.getDefaultToolkit().getScreenSize();
		int width = screenSize.width / 2;
		int height = screenSize.height / 2;
		setSize(width, height+100);

		int x = (screenSize.width - width) / 2;
		int y = (screenSize.height - height) / 2;
		setLocation(x, y-50);

		contentPane = new JPanel();
		contentPane.setBorder(new EmptyBorder(5, 5, 5, 5));

		setContentPane(contentPane);
		contentPane.setLayout(null);

		JPanel panel = new JPanel();
		panel.setBounds(0, 0, 667, 445);
		contentPane.add(panel);
		panel.setLayout(null);

		list_questions = new JList<>(listModel);
		list_questions.setFont(new Font("Tahoma", Font.PLAIN, 11));
		list_questions.setBounds(53, 79, 562, 324);
		panel.add(list_questions);
		
		JScrollPane scrollPane = new JScrollPane(list_questions);
		scrollPane.setBounds(53, 79, 562, 324);
		scrollPane.setHorizontalScrollBarPolicy(JScrollPane.HORIZONTAL_SCROLLBAR_ALWAYS);
		scrollPane.setVerticalScrollBarPolicy(JScrollPane.VERTICAL_SCROLLBAR_ALWAYS);
		panel.add(scrollPane);

		comboBox_questions = new JComboBox();
		comboBox_questions.setFont(new Font("Tahoma", Font.PLAIN, 12));
		comboBox_questions.setBounds(138, 33, 477, 22);
		panel.add(comboBox_questions);

		JLabel lblNewLabel = new JLabel("Categoría:");
		lblNewLabel.setFont(new Font("Tahoma", Font.BOLD, 14));
		lblNewLabel.setBounds(53, 33, 77, 22);
		panel.add(lblNewLabel);



		lvlq = new Logic_View_list_questions(this);
	}
}
