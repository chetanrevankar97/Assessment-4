

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
 * Servlet implementation class FormServlet
 */
@WebServlet("/FormServlet")
public class FormServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public FormServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		MongoClient connection = AdManager.getMongo();
		MongoDatabase db = AdManager.getDb("zips");
		MongoCollection<Document> collection = db.getCollection("Assessment4");
		List<Ad> dataList = new LinkedList<>();
		HttpSession session=request.getSession();
		String category=(String) session.getAttribute("category");
		MongoCursor<Document> cursor = collection.find(Filters.eq("Category",category)).iterator();
		while (cursor.hasNext()) {
			Document d = (Document) cursor.next();

			Ad l = new Ad(d.getString("posting"),d.getString("city"),d.getString("postal"),d.getString("desc"),d.getString("phone"),d.getString("email"));
			dataList.add(l);
		}
	
		
		session.setAttribute("list", dataList);
		
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//doGet(request, response);
		MongoClient connection = AdManager.getMongo();
		MongoDatabase db = AdManager.getDb("zips");
		MongoCollection<Document> collection = db.getCollection("Assessment4");
		
		
		
		
			if(request.getParameter("posting")!=null && request.getParameter("city")!=null && request.getParameter("postal")!=null &&request.getParameter("desc")!=null && request.getParameter("phone")!=null &&request.getParameter("email")!=null)
			{List<Ad> dataList = new LinkedList<>();
				HttpSession session=request.getSession();
				String category=(String) session.getAttribute("category");
		String posting=request.getParameter("posting");
		String city=request.getParameter("city");
		String postal=request.getParameter("postal");
		String desc=request.getParameter("desc");
		String phone=request.getParameter("phone");
		String email=request.getParameter("email");
		
		Document document1 = new Document("posting",posting).append("city",city).append("postal", postal).append("desc",desc).append("phone",phone).append("email",email).append("Category", category);
		collection.insertOne(document1);
		
		MongoCursor<Document> cursor = collection.find(Filters.eq("Category",category)).iterator();
		while (cursor.hasNext()) {
			Document d = (Document) cursor.next();

			Ad l = new Ad(d.getString("posting"),d.getString("city"),d.getString("postal"),d.getString("desc"),d.getString("phone"),d.getString("email"));
			dataList.add(l);
		}

		//ConnectionManager.close();
		
		request.setAttribute("list", dataList);
			}
		
		request.getRequestDispatcher("form.jsp").forward(request, response);
		
	}

}
