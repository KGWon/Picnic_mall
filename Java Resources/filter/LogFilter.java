package filter;

import java.io.IOException;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Calendar;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;

public class LogFilter implements Filter{
	
	@Override
	public void init(FilterConfig filterConfig) throws ServletException {
		System.out.println("WebMarket Filter 초기화...");
	}

	@Override
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain filterChain)
			throws IOException, ServletException {
		System.out.println(" 접속한 클라이언트 IP : " + request.getRemoteAddr());
		long start = System.currentTimeMillis();
		System.out.println(" 접근한 URL 경로 : " + getURLpath(request));
		System.out.println(" 요청 처리 시작 시각 : " + getCurrentTime());
		filterChain.doFilter(request, response);
		
		long end = System.currentTimeMillis();
		System.out.println(" 요청 처리 종료 시각 : " + getCurrentTime());
		System.out.println(" 요청 처리 소요 시간 : " + (end - start)+ "ms");
		System.out.println("==========================================================================");
	}
	
	@Override
	public void destroy() {
		System.out.println("WebMarket Filter 해제...");
	}
	
	private String getURLpath(ServletRequest request) {
		HttpServletRequest req;
		String currentPath = "";
		String queryString = "";
		if(request instanceof HttpServletRequest) {
			req = (HttpServletRequest)request;
			currentPath = req.getRequestURI();
			queryString = req.getQueryString();
			queryString = queryString == null ? "" : "?" + queryString;
		}
		return currentPath + queryString;
	}
	
	private String getCurrentTime() {
		DateFormat format = new SimpleDateFormat("yyyy/MM/dd HH:mm:ss");
		Calendar calendar = Calendar.getInstance();
		calendar.setTimeInMillis(System.currentTimeMillis());
		return format.format(calendar.getTime());
	}
}
