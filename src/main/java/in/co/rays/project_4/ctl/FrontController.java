package in.co.rays.project_4.ctl;


import in.co.rays.project_4.ctl.ORSView;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import in.co.rays.project_4.util.ServletUtility;

/**
 * Front Functionality ctl. to perform session management operation
 * @author Umesh
 *
 */
@WebFilter(urlPatterns={"/ctl/*","/doc/*"})
public class FrontController implements Filter{

	
	public void destroy(){
		
	}
	
	public void doFilter(ServletRequest req, ServletResponse resp, FilterChain chain)
			throws IOException, ServletException {
		System.out.println("doFilter() of FrontController");
		
		HttpServletRequest request=(HttpServletRequest)req;
		HttpServletResponse response=(HttpServletResponse)resp;
		
		HttpSession session=request.getSession();
//		HttpSession session=request.getSession(true);
		
		String uri=request.getRequestURI();
		request.setAttribute("uri",uri);
		System.out.println("URI of FrontController: "+uri);
		
		if(session.getAttribute("user")==null){
			request.setAttribute("msg", "your session has been expired. Please re-Login. ");
			ServletUtility.forward(ORSView.LOGIN_VIEW,request,response);
			System.out.println("Forworded to Login View from frontcontroller.");
		}else{
			chain.doFilter(req, resp);
		}
		
	}
	
	public void init(FilterConfig conf){
		
	}

}
