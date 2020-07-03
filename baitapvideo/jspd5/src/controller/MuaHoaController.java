package controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.websocket.Session;

import been.Hoa;

//@WebServlet("/MuaHoaController")
public class MuaHoaController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private static ArrayList<Hoa> listHoa = new ArrayList<Hoa>();

	public MuaHoaController() {
		super();
		// TODO Auto-generated constructor stub
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		HttpSession session = request.getSession();
		int idHoa = Integer.parseInt(request.getParameter("idhoa"));
		String tenHoa = request.getParameter("tenhoa");
		int soLuong = Integer.parseInt(request.getParameter("soluong"));
		float giaBan = Float.parseFloat(request.getParameter("giaban"));
		Hoa objHoa = new Hoa(idHoa, tenHoa, soLuong, giaBan);
		listHoa.add(objHoa);
		session.setAttribute("listHoa", listHoa);
		
		for (Hoa hoa : listHoa) {
			System.out.println(hoa.toString());
		}
		RequestDispatcher rd = request.getRequestDispatcher("/basket.jsp");
		rd.forward(request, response);
	}

}
