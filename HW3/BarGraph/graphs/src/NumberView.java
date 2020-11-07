import javax.swing.*;
import java.awt.*;

public class NumberView extends JFrame {
    Numbers model;

    public NumberView(int n1, int n2, int n3, Numbers model) {

        // NumberView -> Model -> GraphView
        this.model = model;

        add(new JLabel("Red"));
        JTextField redNumber = new JTextField(10);
        redNumber.setText(n1 + "");
        add(redNumber);

        add(new JLabel("Yellow"));
        JTextField yellowNumber = new JTextField(10);
        yellowNumber.setText(n2 + "");
        add(yellowNumber);

        add(new JLabel("Blue"));
        JTextField blueNumber = new JTextField(10);
        blueNumber.setText(n3 + "");
        add(blueNumber);


        JButton update = new JButton("Update");
        add(update);
        setVisible(true);
        setSize(200, 500);
        setLayout(new FlowLayout());
        setTitle("Update Values");
        setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);



        update.addActionListener(event -> {
            int number1 = Integer.parseInt(redNumber.getText());
            int number2 = Integer.parseInt(yellowNumber.getText());
            int number3 = Integer.parseInt(blueNumber.getText());
            model.updateValues(number1, number2, number3);
        });



    }
}
