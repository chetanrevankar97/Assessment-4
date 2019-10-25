

import java.io.IOException;
import java.util.LinkedList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.bson.Document;

import com.mongodb.client.MongoClient;
import com.mongodb.client.MongoCollection;
import com.mongodb.client.MongoCursor;
import com.mongodb.client.MongoDatabase;
import com.mongodb.client.model.Filters;

/**
 * Servlet implementation class OptionServlet
 */
@WebServlet("/OptionServlet")
public class OptionServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public OptionServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//doGet(request, response);
		String btn=request.getParameter("opt");
		//List<Library> dataList = new LinkedList<>();
		//switch(btn){
		//case "JO":
			//reques
			//response.sendRedirect("form.jsp");
			//break;
		//}
		HttpSession session=request.getSession();
		session.setAttribute("category", btn);
		MongoClient connection = AdManager.getMongo();
		MongoDatabase db = AdManager.getDb("zips");
		MongoCollection<Document> collection = db.getCollection("Assessment4");
		List<Ad> dataList = new LinkedList<>();
		//HttpSession session=request.getSession();
		String category=(String) session.getAttribute("category");
		MongoCursor<Document> cursor = collection.find(Filters.eq("Category",category)).iterator();
		while (cursor.hasNext()) {
			Document d = (Document) cursor.next();

			Ad l = new Ad(d.getString("posting"),d.getString("city"),d.getString("postal"),d.getString("desc"),d.getString("phone"),d.getString("email"));
			dataList.add(l);
		}
	
		
		session.setAttribute("list", dataList);
		request.getRequestDispatcher("FormServlet").forward(request, response);
	}

}
