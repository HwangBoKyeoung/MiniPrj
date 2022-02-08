package co.nnull.prj.web;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.nnull.prj.comm.Command;
import co.nnull.prj.command.Deal;
import co.nnull.prj.command.Experience;
import co.nnull.prj.command.Free;
import co.nnull.prj.command.IdCheck;
import co.nnull.prj.command.InfoUseCommand;
import co.nnull.prj.command.InsertEnquiry;
import co.nnull.prj.command.LoginCommand;
import co.nnull.prj.command.LoginForm;
import co.nnull.prj.command.LogoutCommand;
import co.nnull.prj.command.MainCommand;
import co.nnull.prj.command.MainMCommand;
import co.nnull.prj.command.MapCommand;
import co.nnull.prj.command.MemberShip;
import co.nnull.prj.command.Notice;
import co.nnull.prj.command.NoticeDelete;
import co.nnull.prj.command.NoticeSelect;
import co.nnull.prj.command.NoticeUpdate;
import co.nnull.prj.command.NoticeUpdateForm;
import co.nnull.prj.command.NoticeWrite;
import co.nnull.prj.command.NoticeWriteForm;
import co.nnull.prj.command.Payment;
import co.nnull.prj.command.PaymentFail;
import co.nnull.prj.command.PaymentSuccess;
import co.nnull.prj.command.RegisterForm;
import co.nnull.prj.command.UserMyPage;


@WebServlet("*.do")
public class FrontController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private HashMap<String, Command> map = null;
       
    public FrontController() {
        super();
    }

	public void init(ServletConfig config) throws ServletException {
		map = new HashMap<String, Command>();
		
//		유저페이지		
//		메인
		map.put("/main.do", new MainCommand()); // 메인
		
//		접속관련
		map.put("/loginForm.do", new LoginForm()); // 로그인 폼
		map.put("/login.do", new LoginCommand()); // 로그인
		map.put("/logout.do", new LogoutCommand()); // 로그아웃
		map.put("/registerForm.do", new RegisterForm()); // 회원가입 폼 호출
		map.put("/idCheck.do", new IdCheck()); // 아이디 중복체크
		map.put("/userMypage.do", new UserMyPage());	// 일반회원 마이페이지
		
//		멤버십
		map.put("/memberShip.do", new MemberShip()); // 멤버십 -> 서비스
		map.put("/payment.do", new Payment()); // 결제 테스트
		map.put("/paymentSuccess.do", new PaymentSuccess()); // 결제 성공
		map.put("/paymentFail.do", new PaymentFail()); // 결제 실패
		
//		이용안내
		map.put("/infoUse.do", new InfoUseCommand()); // 이용안내 -> 프로그램
		
//		게시판
		map.put("/notice.do", new Notice());	// 공지사항
		map.put("/noticeSelect.do", new NoticeSelect()); // 공지사항 한 건 선택
		map.put("/noticeWriteForm.do", new NoticeWriteForm()); // 공지사항 글쓰기 폼
		map.put("/noticeWrite.do", new NoticeWrite()); // 공지사항 글쓰기
		map.put("/noticeUpdateForm.do", new NoticeUpdateForm()); // 공지사항 글수정 폼
		map.put("/noticeUpdate.do", new NoticeUpdate()); // 공지사항 글수정
		map.put("/noticeDelete.do", new NoticeDelete()); // 공지사항 삭제
		
		map.put("/free.do", new Free());	// 자유게시판
		map.put("/deal.do", new Deal());	// 중고거래
		map.put("/experience.do", new Experience());	// 체험신청
		
//		오시는길
		map.put("/map.do", new MapCommand());	// 오시는길
		map.put("/insertEnquiry.do", new InsertEnquiry());	// 문의사항
		
		
//		관리자페이지
//		메인
		map.put("/mainM.do", new MainMCommand());	//메인
	}

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		
		String uri = request.getRequestURI();
		String context = request.getContextPath();
		String page = uri.substring(context.length());
		
		Command command = map.get(page);
		String viewPage = command.exec(request, response);
		
		if(viewPage!=null && !viewPage.endsWith(".do")) {
			if(viewPage.startsWith("ajax:")){
				PrintWriter out = response.getWriter();
				out.print(viewPage.substring(5));
			} else {
				viewPage = viewPage + ".tiles";
			}
		}
		
		RequestDispatcher rd = request.getRequestDispatcher(viewPage);
		rd.forward(request, response);
	}

}
