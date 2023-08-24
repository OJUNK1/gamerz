package co.yedam.gamerz.review.web;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.yedam.gamerz.common.ViewResolve;
import co.yedam.gamerz.review.service.ReviewService;
import co.yedam.gamerz.review.service.ReviewVO;
import co.yedam.gamerz.review.serviceImpl.ReviewServiceImpl;
import co.yedam.gamerz.support.qna.service.QnaService;
import co.yedam.gamerz.support.qna.service.QnaVO;
import co.yedam.gamerz.support.qna.serviceImpl.QnaServiceImpl;

@WebServlet("/reviewinsert.do")
public class ReviewInsert extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public ReviewInsert() {
		super();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		ReviewService dao = new ReviewServiceImpl();
		ReviewVO vo = new ReviewVO();
		QnaService dao2 = new QnaServiceImpl();
		QnaVO qna = new QnaVO();

		vo.setReviewLocation(request.getParameter("reviewLocation"));
		vo.setReviewWriter(request.getParameter("reviewWriter"));
		vo.setReviewComment(request.getParameter("reviewComment"));

		qna.setQnaId(Integer.parseInt(request.getParameter("qnaId")));

		// 'admin' 사용자인 경우 qna_done 업데이트
		if ("ADMIN".equals(request.getParameter("memberAuthor"))) {
			qna.setQnaDone("답변완료");
			dao2.updateQnaDone(qna);
		}

		int num = dao.reviewInsert(vo);

		if (num == 1) {
			request.setAttribute("message", "리뷰 등록 성공");
		} else {
			request.setAttribute("message", "리뷰 등록 실패");
		}

		String viewName = "review/reviewmessage";
		ViewResolve.forward(request, response, viewName);

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}

}
