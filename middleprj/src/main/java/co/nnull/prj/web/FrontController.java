package co.nnull.prj.web;

import java.io.IOException;
import java.util.HashMap;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.nnull.prj.comm.Command;
import co.nnull.prj.command.InsertEnquiry;
import co.nnull.prj.command.MainCommand;
import co.nnull.prj.command.MapCommand;
import co.nnull.prj.command.UserMyPage;
import co.nnull.prj.command.MemberShip;
import co.nnull.prj.command.Payment;
import co.nnull.prj.command.PaymentFail;
import co.nnull.prj.command.PaymentSuccess;


@WebServlet("*.do")
public class FrontController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private HashMap<String, Command> map = null;
       
    public FrontController() {
        super();
    }

	public void init(ServletConfig config) throws ServletException {
		map = new HashMap<String, Command>();
		
		map.put("/main.do", new MainCommand()); // 메인
		map.put("/map.do", new MapCommand());	// 오시는길
		map.put("/insertEnquiry.do", new InsertEnquiry());	// 문의사항db insert
		map.put("/userMypage.do", new UserMyPage());	// 일반회원 마이페이지
		map.put("/memberShip.do", new MemberShip()); // 멤버십 -> 서비스
		map.put("/payment.do", new Payment()); // 결제 테스트
		map.put("/paymentSuccess.do", new PaymentSuccess()); // 결제 성공
		map.put("/paymentFail.do", new PaymentFail()); // 결제 실패)
	}

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		
		String uri = request.getRequestURI();
		String context = request.getContextPath();
		String page = uri.substring(context.length());
		
		Command command = map.get(page);
		String viewPage = command.exec(request, response);
		
		if(viewPage!=null && !viewPage.endsWith(".do")) {
			viewPage = viewPage + ".tiles";
		}
		
		RequestDispatcher rd = request.getRequestDispatcher(viewPage);
		rd.forward(request, response);
	}

}
