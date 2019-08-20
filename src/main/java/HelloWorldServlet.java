import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.*;
import java.util.Scanner;
import javax.servlet.*;
import javax.servlet.http.*;
import org.apache.commons.lang3.StringUtils;

@WebServlet("/adlister")

public class HelloWorldServlet extends HttpServlet {

//    public class PageHitCounter extends HttpServlet {

        private int hitCount;

        public void init() {
            // Reset hit counter.
            hitCount = 0;
        }
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html");
        PrintWriter out = response.getWriter();
        out.println("<h1>Hello, World2!</h1>");

        hitCount++;
//        PrintWriter out = response.getWriter();
        String title = "Total Number of Hits";
        String docType = "<!doctype html public \"-//w3c//dtd html 4.0 " + "transitional//en\">\n";

        out.println(docType +
                "<html>\n" +
                "<head><title>" + title + "</title></head>\n" +
                "<body bgcolor = \"#f0f0f0\">\n" +
                "<h1 align = \"center\">" + title + "</h1>\n" +
                "<h2 align = \"center\">" + hitCount + "</h2>\n" +
                "</body>" +
                "</html>");

        out.print(docType + "<html>\n" +
                "<form method=\"POST\" action=\"/register\">" +
                "<label for=\"username\">Username:</label>" +
                "<input id=\"username\" name=\"username\" placeholder=\"Enter name\" />" +
                "</form>" +
                "</html>");
        String name = "";
        String name1 = request.getParameter("name");

        out.println("<h1>Hello, " +  name1 + "</h1>");

    }
    }
//}

//    Make the page say "Hello, <name>!" if name is passed as part of the query string (e.g. /hello?name=codeup), otherwise default to "Hello, World!".
//
//        Create a page view counter
//
//        Create a page that displays a number that goes up by one every time the /count page is viewed.
//
//        Bonus
//
//        Allow the user to pass a parameter in the query string to reset the counter.
//System.out.println("You entered: " + StringUtils.isNumeric(userInput));
