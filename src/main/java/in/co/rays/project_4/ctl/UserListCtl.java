package in.co.rays.project_4.ctl;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.log4j.Logger;

import in.co.rays.project_4.bean.BaseBean;
import in.co.rays.project_4.bean.UserBean;
import in.co.rays.project_4.exception.ApplicationException;
import in.co.rays.project_4.model.RoleModel;
import in.co.rays.project_4.model.UserModel;
import in.co.rays.project_4.util.DataUtility;
import in.co.rays.project_4.util.PropertyReader;
import in.co.rays.project_4.util.ServletUtility;


/**
 * user list funcitonality controller.to perform search and show operation
 * @author Umesh
 *
 */
@WebServlet(name="UserListCtl",urlPatterns={"/ctl/UserListCtl"})
public class UserListCtl extends BaseCtl{
	
	private static Logger log=Logger.getLogger(UserListCtl.class);

	protected void preload(HttpServletRequest request) {
		System.out.println("@ Now we are in Preload method of UserListCtl....");
		RoleModel model=new RoleModel();
		System.out.println("Role modle object is Created..");
		try {
			List list=model.list();
			request.setAttribute("roleList", list);
			System.out.println("list() of Rolemodle has been called and pass list object into request set Attributes..");
		} catch (Exception e) {
			log.error(e);
			
		}
	}	
	protected BaseBean populateBean(HttpServletRequest request){
		System.out.println("populateBean() of UserListCtl....");
		UserBean bean=new UserBean();
		
		bean.setFirstName(DataUtility.getString(request.getParameter("firstName")));
		bean.setLogin(DataUtility.getString(request.getParameter("login")));
		bean.setRoleId(DataUtility.getLong(request.getParameter("roleId")));
		populateDTO(bean, request);
		return bean;
	}
	
	/**
	 * Contains Display logics
	 */
	protected void doGet(HttpServletRequest request,HttpServletResponse response) throws IOException, ServletException{
		System.out.println("doGet() of UserListCtl......");
		log.debug("UserListCtl doGet Start");
		List list=null;
//		List next;
		/*int pageNo=1;
		int pageSize=DataUtility.getInt(PropertyReader.getValue("page.size"));*/
		
		int pageNo=DataUtility.getInt(request.getParameter("pageNo"));
		int pageSize=DataUtility.getInt(request.getParameter("pageSize"));
		
		pageNo=(pageNo==0)?1:pageNo;
		pageSize=(pageSize==0)?DataUtility.getInt(PropertyReader.getValue("page.size")):pageSize;
		
		System.out.println("==========>>>>>>>>>>>>>>>>"+pageSize);
		UserBean bean=(UserBean)populateBean(request);
		
		String op=DataUtility.getString(request.getParameter("operation"));
		System.out.println("WE get Operation: "+op);
		String[] ids=request.getParameterValues("ids");
		System.out.println("WE get Ids: "+ids);
		
		UserModel model=new UserModel();
		try{
			list=model.search(bean, pageNo, pageSize);
			System.out.println("list=model.search(bean, pageNo, pageSize) working....");
			
			System.out.println("list object recieved from model.search method: "+list);
			if(list==null||list.size()==0){
				ServletUtility.setErrorMessage("No record found", request);
				
			}if(list==null||list.size()==0){
				request.setAttribute("nextListSize", 0);
				
			}else{
				request.setAttribute("nextListSize", list.size());
			}
			ServletUtility.setList(list, request);
			ServletUtility.setPageNo(pageNo, request);
			ServletUtility.setPageSize(pageSize, request);
			ServletUtility.forward(getView(), request, response);
			System.out.println("Try block finish getView() called..");
			
		}catch(ApplicationException e){
			log.error(e);
			ServletUtility.handleException(e, request, response);
			return;
		}
		log.debug("UserListCtl doGet End");
	}
	
	/**
	 * Contains Submit logics
	 */
	protected void doPost(HttpServletRequest request,HttpServletResponse response) throws IOException, ServletException{
		
		log.debug("UserListCtl doPost start");
		System.out.println("Do post of UserListCtl....");
		
		List list=null;
		List next=null;
		
		int pageNo=DataUtility.getInt(request.getParameter("pageNo"));
		int pageSize=DataUtility.getInt(request.getParameter("pageSize"));
		
		pageNo=(pageNo==0)?1:pageNo;
		pageSize=(pageSize==0)?DataUtility.getInt(PropertyReader.getValue("page.size")):pageSize;
		
		UserBean bean=(UserBean)populateBean(request);
		String op=DataUtility.getString(request.getParameter("operation"));
		System.out.println("This is operation: "+op);
		String[] ids=request.getParameterValues("ids");
		System.out.println("WE get ids: "+ids);
		UserModel model=new UserModel();
		
		try{
			if(OP_SEARCH.equalsIgnoreCase(op)||OP_NEXT.equalsIgnoreCase(op)||OP_PREVIOUS.equalsIgnoreCase(op)){
				
				if(OP_SEARCH.equalsIgnoreCase(op)){
					pageNo=1;
				}else if(OP_NEXT.equalsIgnoreCase(op)){
					pageNo++;
				}else if(OP_PREVIOUS.equalsIgnoreCase(op)&&pageNo>1){
					pageNo--;
				}
			}else if (OP_NEW.equalsIgnoreCase(op)) {
				ServletUtility.redirect(ORSView.USER_CTL, request, response);
				return;
			}else if(OP_NEXT.equalsIgnoreCase(op)){
				ServletUtility.redirect(ORSView.USER_CTL, request, response);
				return;
			} else if (OP_RESET.equalsIgnoreCase(op)) {

				ServletUtility.redirect(ORSView.USER_LIST_CTL, request, response);
				return;
			}else if (OP_DELETE.equalsIgnoreCase(op)) {
						
				System.out.println("Operation Delete starts....");
						pageNo = 1;
						if (ids != null && ids.length > 0) {
							UserBean deletebean = new UserBean();
							for (String id : ids) {
								deletebean.setId(DataUtility.getInt(id));
								model.delete(deletebean);
								ServletUtility.setSuccessMessage("Data Deleted Successfully", request);
							}
							System.out.println("Delete finish.....");
				}else{
					ServletUtility.setErrorMessage("Select at least one record", request);
					
				}
			}if (OP_BACK.equalsIgnoreCase(op)) {
				ServletUtility.redirect(ORSView.USER_LIST_CTL, request, response);
				return;	
			}
			bean = (UserBean) populateBean(request);
			list=model.search(bean, pageNo, pageSize);
			ServletUtility.setList(list, request);
			if(list==null||list.size()==0&&!OP_DELETE.equalsIgnoreCase(op)){
				ServletUtility.setErrorMessage("No record found", request);
			}
			if (next == null || next.size() == 0) {
				request.setAttribute("nextListSize", "0");
			} else {
				request.setAttribute("nextListSize", next.size());
			}
			ServletUtility.setList(list, request);
			ServletUtility.setPageNo(pageNo, request);
			ServletUtility.setPageSize(pageSize, request);
			ServletUtility.forward(getView(), request, response);
		
		}catch(ApplicationException e){
			log.error(e);
			ServletUtility.handleException(e, request, response);
			return;
		}
	log.debug("UserListCtl doGet End");
}

	@Override
	protected String getView() {
		// TODO Auto-generated method stub
		return ORSView.USER_LIST_VIEW;
	}

	
}
