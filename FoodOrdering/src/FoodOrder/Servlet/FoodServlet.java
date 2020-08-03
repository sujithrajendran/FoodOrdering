package FoodOrder.Servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import FoodOrder.Bean.Food;
import FoodOrder.DAO.DAOFood;

/**
 * Servlet implementation class FoodServlet
 */
@WebServlet("/FoodServlet")
public class FoodServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		HttpSession session=request.getSession();
		String page=(String) session.getAttribute("food");
		DAOFood userdao=new DAOFood();
		String result="";
		PrintWriter out = response.getWriter();
		if(page.equals("ordering"))
		{
			System.out.println("servlet food ordering");
		    String idly=request.getParameter("idly");
			String dosai=request.getParameter("dosai");
			String parotta=request.getParameter("parotta");
			String masaldosai=request.getParameter("masaldosai");
			String oniondosai=request.getParameter("oniondosai");
			String eggfriedrice=request.getParameter("EggFriedRice");
			String eggnoodles=request.getParameter("EggNoodles");
			String chickenfriedrice=request.getParameter("ChickenFriedRice");
			String chickennoodles=request.getParameter("ChickenNoodles");
			String chappathi=request.getParameter("chappathi");
			String chickenbriyani=request.getParameter("ChickenBriyani");
			String eggbriyani=request.getParameter("EggBriyani");
			String muttonbriyani=request.getParameter("MuttonBriyani");
			String chillichicken=request.getParameter("ChilliChicken");
			Food f=new Food();
			f.setIdly(idly);
			f.setDosai(dosai);
			f.setParotta(parotta);
			f.setMasalDosai(masaldosai);
			f.setOnionDosai(oniondosai);
			f.setEggFriedRice(eggfriedrice);
			f.setEggNoodles(eggnoodles);
			f.setChickenFriedRice(chickenfriedrice);
			f.setChickenNoodles(chickennoodles);
		    f.setChappathi(chappathi);
		    f.setChcikenBriyani(chickenbriyani);
		    f.setEggBriyani(eggbriyani);
		    f.setMuttonBriyani(muttonbriyani);
		    f.setChilliChicken(chillichicken);
			System.out.println(idly+" "+dosai+" "+parotta+" "+masaldosai+" "+oniondosai+" "+eggfriedrice+" "+eggnoodles+" "+chickenfriedrice+" "+ chickennoodles+" "+chappathi+" "+chickenbriyani+" "+eggbriyani+" "+muttonbriyani+" "+chillichicken);			
			result=userdao.order(f);
			if(result.equals("done"))
			{
			out.println("<script type=\"text/javascript\">");
			out.println("alert('Ordered Successfully');");
			out.println("location='Thankyou.jsp';");
			out.println("</script>");
			}
			else 
			{
				out.println("<script type=\"text/javascript\">");
				out.println("alert('invalid ');");
				out.println("location='OrderFood.jsp';");
				out.println("</script>");
			}

} 
	}

}
