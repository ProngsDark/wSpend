

import java.io.IOException;
import java.io.PrintWriter;
import wSpend.DB;
import wSpend.Expenses;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/adaugExpenses")
public class AdaugExpenses extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
    public AdaugExpenses() {
        super();
    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		DB database = new DB();
		String email = request.getParameter("email");
		int idUsers= database.getIdUsers(email);
		String name = request.getParameter("name");
		String amount = request.getParameter("amount");
		Expenses expense = new Expenses(name,amount,idUsers);
		database.writeInDataBase(expense);
		try(PrintWriter out = response.getWriter();){
			String output = database.getUpdate(email);
			out.println("<html lang=\\\"en\\\">"+output+"</html>");
		}
		
	}

}
