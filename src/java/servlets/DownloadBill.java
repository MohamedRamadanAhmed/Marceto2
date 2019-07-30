package servlets;

import beans.PaymentBean;
import beans.UserBean;
import java.io.DataOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Mohamed Ramadan
 */
public class DownloadBill extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet DownloadBill</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet DownloadBill at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        ArrayList<PaymentBean> payments = (ArrayList<PaymentBean>) request.getAttribute("paymentlist");
        HttpSession session = request.getSession(false);
        UserBean user = (UserBean) session.getAttribute("userObj");

        String bill = "Dear " + user.getFirstName() + " " + user.getLastName() + ",\n"
                + " \n"
                + "    your order will arrive during 6 days from ," + payments.get(payments.size() - 1).getDate() + "\n"
                + "    \n"
                + "    price : " + payments.get(payments.size() - 1).getAmount() + "  \n"
                + "        \n"
                + "        thanks,";
        File f = new File("F:\\ITI Intake 39\\Bills\\bill.txt");
        //byte[] fil=new byte[];

        FileOutputStream outputStream = new FileOutputStream(f);
        DataOutputStream out = new DataOutputStream(outputStream);
        byte[] strToByte = bill.getBytes();
        outputStream.write(strToByte);
        outputStream.close();
        String fileName = "bill.txt";
        String filepath = "F:\\ITI Intake 39\\Bills\\";

        response.setContentType("APPLICATION/OCTET-STREAM");
        response.setHeader("Content-Disposition", "attachment; filename=\"" + fileName + "\"");
        FileInputStream fn = new FileInputStream(filepath + fileName);
        int i;
        while ((i = fn.read()) != -1) {
            response.getWriter().write(i);
        }
        fn.close();
        response.getWriter().close();
        request.getRequestDispatcher(request.getContextPath() + "/home").forward(request, response);
    }
}
