import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name = "DiscountServlet", urlPatterns = "/calculator")
public class DiscountServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String description =  request.getParameter("description");
        float price = Float.parseFloat(request.getParameter("price"));
        int discountPercent = Integer.parseInt(request.getParameter("discount"));
        float discount = price * discountPercent / 100;
        float total = price - discount;

        PrintWriter printWriter = response.getWriter();
        printWriter.println("<html>");
        printWriter.println("<h1>Product Description: " + description);
        printWriter.println("<h1>Price: " + price);
        printWriter.println("<h1>Discount Percent: " + discountPercent);
        printWriter.println("<h1>Discount: " + discount);
        printWriter.println("<h1>Total: " + total);
        printWriter.println("</html>");
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
