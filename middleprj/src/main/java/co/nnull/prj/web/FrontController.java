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
import co.nnull.prj.command.BMItest;
import co.nnull.prj.command.BulletinExperienceSelect;
import co.nnull.prj.command.BulletinExperienceSelectOne;
import co.nnull.prj.command.Deal;
import co.nnull.prj.command.DealDelete;
import co.nnull.prj.command.DealSelect;
import co.nnull.prj.command.DealUpdate;
import co.nnull.prj.command.DealUpdateForm;
import co.nnull.prj.command.DealWrite;
import co.nnull.prj.command.DealWriteForm;
import co.nnull.prj.command.DeleteSchedule;
import co.nnull.prj.command.DeleteUser;
import co.nnull.prj.command.EnquirySelectM;
import co.nnull.prj.command.EnquirySelectOne;
import co.nnull.prj.command.ExpForm;
import co.nnull.prj.command.ExpRequest;
import co.nnull.prj.command.Free;
import co.nnull.prj.command.FreeDelete;
import co.nnull.prj.command.FreeSelect;
import co.nnull.prj.command.FreeUpdate;
import co.nnull.prj.command.FreeUpdateForm;
import co.nnull.prj.command.FreeWrite;
import co.nnull.prj.command.FreeWriteForm;
import co.nnull.prj.command.IdCheck;
import co.nnull.prj.command.InfoSchedule;
import co.nnull.prj.command.InfoUseCommand;
import co.nnull.prj.command.InsertCalendar;
import co.nnull.prj.command.InsertEnquiry;
import co.nnull.prj.command.InsertServieM;
import co.nnull.prj.command.LoginCommand;
import co.nnull.prj.command.LoginForm;
import co.nnull.prj.command.LogoutCommand;
import co.nnull.prj.command.MainCommand;
import co.nnull.prj.command.MainMCommand;
import co.nnull.prj.command.MapCommand;
import co.nnull.prj.command.MemberList;
import co.nnull.prj.command.MemberSelect;
import co.nnull.prj.command.MemberShip;
import co.nnull.prj.command.MemberShipForm;
import co.nnull.prj.command.MemberStatusDelete;
import co.nnull.prj.command.MemberStatusUpdate;
import co.nnull.prj.command.MemberStatusUpdateForm;
import co.nnull.prj.command.MembersMembership;
import co.nnull.prj.command.MyInfoUpdate;
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
import co.nnull.prj.command.PlaceOrder;
import co.nnull.prj.command.Register;
import co.nnull.prj.command.RegisterForm;
import co.nnull.prj.command.ReplyDealDelete;
import co.nnull.prj.command.ReplyDealWrite;
import co.nnull.prj.command.ReplyFreeDelete;
import co.nnull.prj.command.ReplyFreeWrite;
import co.nnull.prj.command.Sales;
import co.nnull.prj.command.ScheduleInfo;
import co.nnull.prj.command.ScheduleInfoPage;
import co.nnull.prj.command.ScheduleManage;
import co.nnull.prj.command.ScheduleView;
import co.nnull.prj.command.UpdateCalendar;
import co.nnull.prj.command.UpdateScheduleForm;
import co.nnull.prj.command.UserMyPage;
import co.nnull.prj.common.InsertForm;


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
		map.put("/register.do", new Register()); // 회원가입)
		map.put("/idCheck.do", new IdCheck()); // 아이디 중복체크
		map.put("/userMypage.do", new UserMyPage());	// 일반회원 마이페이지
		map.put("/myInfoUpdate.do", new MyInfoUpdate());	// 회원정보수정
		map.put("/deleteUser.do", new DeleteUser());	//회원정보삭제
		
//		멤버십
		map.put("/memberShip.do", new MemberShip()); // 멤버십 -> 서비스
		map.put("/memberShipSelect.do", new MemberShipForm()); // 멤버십 상품 상세페이지
		map.put("/membersMembership.do", new MembersMembership()); // 멤버십 회원 정보 수정
		map.put("/payment.do", new Payment()); // 결제 테스트
		map.put("/paymentSuccess.do", new PaymentSuccess()); // 결제 성공
		map.put("/paymentFail.do", new PaymentFail()); // 결제 실패
		map.put("/placeorder.do", new PlaceOrder()); 	// 주문내역 DB
		
//		이용안내
		map.put("/infoUse.do", new InfoUseCommand()); // 이용안내 -> 프로그램
		map.put("/infoSchedule.do", new InfoSchedule()); // 이용안내 -> 스케쥴
		map.put("/scheduleView.do", new ScheduleView());	// 스케줄 -> 달력형태로 보기
		
//		게시판
		map.put("/notice.do", new Notice());	// 공지사항
		map.put("/noticeSelect.do", new NoticeSelect()); // 공지사항 한 건 선택
		map.put("/noticeWriteForm.do", new NoticeWriteForm()); // 공지사항 글쓰기 폼
		map.put("/noticeWrite.do", new NoticeWrite()); // 공지사항 글쓰기
		map.put("/noticeUpdateForm.do", new NoticeUpdateForm()); // 공지사항 글수정 폼
		map.put("/noticeUpdate.do", new NoticeUpdate()); // 공지사항 글수정
		map.put("/noticeDelete.do", new NoticeDelete()); // 공지사항 삭제
		
		map.put("/free.do", new Free());	// 자유게시판
		map.put("/freeSelect.do", new FreeSelect()); // 자유게시판 한 건 선택
		map.put("/freeWriteForm.do", new FreeWriteForm()); // 자유게시판 글쓰기 폼
		map.put("/freeWrite.do", new FreeWrite()); // 자유게시판 글쓰기
		map.put("/freeUpdateForm.do", new FreeUpdateForm()); // 자유게시판 글수정 폼
		map.put("/freeUpdate.do", new FreeUpdate()); // 자유게시판 글수정
		map.put("/freeDelete.do", new FreeDelete()); // 자유게시판 삭제
		map.put("/replyFreeWrite.do", new ReplyFreeWrite()); // 자유게시판 댓글쓰기
		map.put("/replyFreeDelete.do", new ReplyFreeDelete()); // 자유게시판 댓글삭제
		
		map.put("/deal.do", new Deal());	// 중고거래
		map.put("/dealSelect.do", new DealSelect()); // 중고거래 한 건 선택
		map.put("/dealWriteForm.do", new DealWriteForm()); // 중고거래 글쓰기 폼
		map.put("/dealWrite.do", new DealWrite()); // 중고거래 글쓰기
		map.put("/dealUpdateForm.do", new DealUpdateForm()); // 중고거래 글수정 폼
		map.put("/dealUpdate.do", new DealUpdate()); // 중고거래 글수정
		map.put("/dealDelete.do", new DealDelete()); // 중고거래 삭제
		map.put("/replyDealWrite.do", new ReplyDealWrite()); // 중고거래 댓글쓰기
		map.put("/replydealDelete.do", new ReplyDealDelete()); // 중고거래 댓글삭제
		
		map.put("/expForm.do", new ExpForm());	// 체험신청 폼
		map.put("/expRequest.do", new ExpRequest()); // 체험신청 글전송
		
//		오시는길
		map.put("/map.do", new MapCommand());	// 오시는길
		map.put("/insertEnquiry.do", new InsertEnquiry());	// 문의사항
		
		
//		관리자페이지
//		메인
		map.put("/mainM.do", new MainMCommand());	//메인
		map.put("/memberList.do", new MemberList()); //관리자 -> 회원리스트
		map.put("/memberSelect.do", new MemberSelect());	//회원 개별조회
		map.put("/memberStatusUpdateForm.do", new MemberStatusUpdateForm()); //관리자 회원 수정폼
		map.put("/memberStatusUpdate.do", new MemberStatusUpdate()); // 관리자 회원 키, 몸무게 수정
		map.put("/memberStatusDelete.do", new MemberStatusDelete()); // 관리자 회원 삭제

		map.put("/BMI.do", new BMItest()); // bmi계산기 테스트
		
//		매출현황
		map.put("/sales.do", new Sales());	// 매출현황
		
//		일정
		map.put("/scheduleManage.do", new ScheduleManage());	// 일정 입력, 수정, 삭제
		map.put("/scheduleInfoPage.do", new ScheduleInfoPage());	// 일정json처리
		map.put("/scheduleInfo.do", new ScheduleInfo());	// 일정보기
		map.put("/updateScheduleForm.do", new UpdateScheduleForm());	//  스케줄수정 폼
		map.put("/updateCalendar.do", new UpdateCalendar());	// 일정수정
		map.put("/deleteSchedule.do", new DeleteSchedule());	// 일정삭제
		map.put("/insertForm.do", new InsertForm());	//일정등록 폼
		map.put("/insertCalendar.do", new InsertCalendar());	//일정등록
		
//		회원등록 글 조회
		map.put("/enquirySelectM.do", new EnquirySelectM());	// 상담문의조회
		map.put("/enquirySelectOne.do", new EnquirySelectOne());	// 상담문의 1건 조회
		map.put("/bulletinExperienceSelect.do", new BulletinExperienceSelect());	// 체험신청조회
		map.put("/bulletinExperienceSelectOne.do", new BulletinExperienceSelectOne());	//체험신청 1건 조회
		map.put("/insertServiceM.do", new InsertServieM());	// 서비스등록
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
				return;
			} else {
				viewPage = viewPage + ".tiles";
			}
		}
		
		RequestDispatcher rd = request.getRequestDispatcher(viewPage);
		rd.forward(request, response);
	}

}
