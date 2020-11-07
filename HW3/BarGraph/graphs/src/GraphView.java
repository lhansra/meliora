import javax.swing.*;
import java.awt.*;

public class GraphView extends JFrame {
    int n1;
    int n2;
    int n3;


    public GraphView(int n1, int n2, int n3) {
        // initialize some variables
        this.n1 = n1;
        this.n2 = n2;
        this.n3 = n3;

        setSize(500, 500);
        setVisible(true);
        setTitle("Bar Chart");
        setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
    }

    public void updateGraph(int n1, int n2, int n3) {
        this.n1 = n1;
        this.n2 = n2;
        this.n3 = n3;
        // update values
        repaint();
    }



    @Override
    public void paint(Graphics g) {
        super.paint(g); // to clear the previous stuff if any (for repainting)
        Graphics2D g2 = (Graphics2D) g;

        // how to glue it to the bottom? little math here
        int y1 = getHeight() - n1 - 15;

        g2.setColor(Color.RED);
        Rectangle rec1 = new Rectangle(10, y1, 50, n1);
        g2.draw(rec1);
        g2.fill(rec1);

        int y2 = getHeight() - n2 - 15;

        g2.setColor(Color.YELLOW);
        Rectangle rec2 = new Rectangle(100, y2, 50, n2);
        g2.draw(rec2);
        g2.fill(rec2);

        int y3 = getHeight() - n3 - 15;

        g2.setColor(Color.BLUE);
        Rectangle rec3 = new Rectangle(190, y3, 50, n3);
        g2.draw(rec3);
        g2.fill(rec3);

    }
}
