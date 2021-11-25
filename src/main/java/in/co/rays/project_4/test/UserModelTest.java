package in.co.rays.project_4.test;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

import in.co.rays.project_4.bean.UserBean;
import in.co.rays.project_4.exception.ApplicationException;
import in.co.rays.project_4.exception.DuplicateRecordException;
import in.co.rays.project_4.exception.RecordNotFoundException;
import in.co.rays.project_4.model.UserModel;

public class UserModelTest {
	
	
	public static UserModel model=new UserModel();
	
	public static void main(String[] args) throws ParseException, DuplicateRecordException, ApplicationException {
		
//		testAdd();   //done
//		testDelete();
//		testUpdate();
//		testFindByPK();
//		testFindByLogin();
//		testSearch();  //done
//		testGetRoles();
//		testList();  //done
//		testAuthenticate(); //done
//		testRegisterUser();   //not
//		testChangePassword();  //not
//		testForgetPassword();
//		testResetPassword();
	}

	public static void testAdd() throws ParseException, DuplicateRecordException{
		
	try{
		UserBean bean=new UserBean();
		SimpleDateFormat sdf=new SimpleDateFormat("dd-mm-yyyy");
		
		bean.setFirstName("danish");
		bean.setLastName("Khan");
		bean.setLogin("danishKhan@gmail.com");
		bean.setPassword("Danish@2020");
		bean.setDob(sdf.parse("20-12-2015"));
		
		long pk=model.add(bean);
		UserBean addedbean=model.findByPK(pk);
		System.out.println("Test add success");
		if(addedbean==null){
			System.out.println("Test add fail");
		}
		
		}catch(ApplicationException e){
			e.printStackTrace();
		}
	}
	public static void testDelete(){
		
	try{
		UserBean bean=new UserBean();
		bean.setId(3L);
		model.delete(bean);
		System.out.println("Test delete success"+bean.getId());
		UserBean deletedbean=model.findByPK(3L);
		if(deletedbean!=null){
			System.out.println("Test Delete fail");
		}
	}catch(ApplicationException e){
		e.printStackTrace();
	}
				
	}
	public static void testUpdate() throws DuplicateRecordException{
		 
		try{
			UserBean bean=model.findByPK(8L);
			bean.setFirstName("dk");
			bean.setLastName("danish");
			bean.setLogin("danish@2021");
//			bean.setPassword("password");
			
			model.update(bean);
			UserBean updatebean=model.findByPK(8L);
			if("firstname".equals(updatebean.getLogin())){
				System.out.println("test update fail");
			}
			
		}catch(ApplicationException e){
			e.printStackTrace();
		}
	  catch (DuplicateRecordException e) {
         e.printStackTrace();
	}
	}
	public static void testFindByPK(){
		
		try{
			UserBean bean=model.findByPK(4);
			if(bean==null){
				System.out.println("test find by pk fail");
			}
			System.out.println(bean.getId());
			System.out.println(bean.getFirstName());
			System.out.println(bean.getLastName());
			System.out.println(bean.getLogin());
			System.out.println(bean.getPassword());
			System.out.println(bean.getDob());
			System.out.println(bean.getRoleId());
			System.out.println(bean.getUnSuccessfullLogin());
			System.out.println(bean.getGender());
			System.out.println(bean.getLastLogin());
			System.out.println(bean.getLock());
		
		}catch(ApplicationException e){
			e.printStackTrace();
		}
		
	}
	
	public static void testFindByLogin(){
		
		try{
			UserBean bean=model.findByLogin("danishkhan@gmail.com");
			
			if(bean==null){
				System.out.println("Test update fail");
			}
			System.out.println(bean.getId());
			System.out.println(bean.getFirstName());
			System.out.println(bean.getLastName());
			System.out.println(bean.getLogin());
			System.out.println(bean.getPassword());
			System.out.println(bean.getDob());
			System.out.println(bean.getRoleId());
			System.out.println(bean.getUnSuccessfullLogin());
			System.out.println(bean.getGender());
			System.out.println(bean.getLastLogin());
			System.out.println(bean.getLock());

		}catch(ApplicationException e){
			e.printStackTrace();
		}
	}

	
	public static void testGetRoles() throws ApplicationException{
		
		UserBean bean=new UserBean();
		List list=new ArrayList();
		bean.setRoleId(2);
//		list=model.getRoles(bean);
		list=model.getRoles(bean);
		
		if(list.size()<0){
			System.out.println("Test get Roles fails");
		}
		Iterator it=list.iterator();
		while(it.hasNext()){
			bean=(UserBean)it.next();
			
			System.out.println(bean.getId());
			System.out.println(bean.getFirstName());
			System.out.println(bean.getLastName());
			System.out.println(bean.getLogin());
			System.out.println(bean.getPassword());
			System.out.println(bean.getDob());
			System.out.println(bean.getRoleId());
			System.out.println(bean.getUnSuccessfullLogin());
			System.out.println(bean.getGender());
			System.out.println(bean.getLastLogin());
			System.out.println(bean.getLock());
		}
	 
	}

	public static void testSearch(){
		
		try{
			UserBean bean=new UserBean();
			List list=new ArrayList();
			bean.setFirstName("ankit");
			list=model.search(bean,0,0);
			if(list.size()<0){
				System.out.println("test search fail");
			}
			Iterator it=list.iterator();
			while(it.hasNext()){
				bean=(UserBean)it.next();
				System.out.println(bean.getId());
				System.out.println(bean.getFirstName());
				System.out.println(bean.getLastName());
				System.out.println(bean.getLogin());
				System.out.println(bean.getPassword());
				System.out.println(bean.getDob());
				System.out.println(bean.getRoleId());
				System.out.println(bean.getUnSuccessfullLogin());
				System.out.println(bean.getGender());
				System.out.println(bean.getLastLogin());
				System.out.println(bean.getLock());
			}
			
		}catch(ApplicationException e){
			e.printStackTrace();
		}

	}

public static void testList() {

    try {
        UserBean bean = new UserBean();
        List list = new ArrayList();
        list = model.list(1, 10);
        if (list.size() < 0) {
            System.out.println("Test list fail");
        }
        Iterator it = list.iterator();
        while (it.hasNext()) {
            bean = (UserBean) it.next();
            System.out.println(bean.getId());
            System.out.println(bean.getFirstName());
            System.out.println(bean.getLastName());
            System.out.println(bean.getLogin());
            System.out.println(bean.getPassword());
            System.out.println(bean.getDob());
            System.out.println(bean.getRoleId());
            System.out.println(bean.getUnSuccessfullLogin());
            System.out.println(bean.getGender());
            System.out.println(bean.getLastLogin());
            System.out.println(bean.getLock());
            System.out.println(bean.getMobileNo());
            System.out.println(bean.getCreatedBy());
            System.out.println(bean.getModifiedBy());
            System.out.println(bean.getCreatedDateTime());
            System.out.println(bean.getModifiedDateTime());
        }

    } catch (ApplicationException e) {
        e.printStackTrace();
    }
}


	public static void testAuthenticate() {

    try {
        UserBean bean = new UserBean();
        bean.setLogin("umesh.prajapati297@gmail.com");
        bean.setPassword("Jio@2020");
        bean = model.authenticate(bean.getLogin(), bean.getPassword());
        if (bean != null) {
            System.out.println("Successfully login");

        } else {
            System.out.println("Invalied login Id & password");
        }

    } catch (ApplicationException e) {
        e.printStackTrace();
    }
}


      public static void testRegisterUser() throws ParseException {
    
    	  try {
        UserBean bean = new UserBean();
        SimpleDateFormat sdf = new SimpleDateFormat("MM/dd/yyyy");

//         bean.setId(1L);
        bean.setFirstName("gopal");
         bean.setLastName("sharma");
        bean.setLogin("gopal@gmail.com");
        bean.setPassword("abcde");
        bean.setConfirmPassword("abcde");
        bean.setDob(sdf.parse("02/01/2002"));
        bean.setGender("Male");
        bean.setMobileNo("9876556541");
        bean.setRoleId(2);
      
        long pk = model.registerUser(bean);
        
        System.out.println("Successfully register");
        System.out.println(bean.getFirstName());
        System.out.println(bean.getLogin());
        System.out.println(bean.getLastName());
        System.out.println(bean.getDob());
        UserBean registerbean = model.findByPK(pk);
        if (registerbean != null) {
            System.out.println("Test registation fail");
        }
    } catch (ApplicationException e) {
        e.printStackTrace();
    } catch (DuplicateRecordException e) {
        e.printStackTrace();
    }
}


      public static void testChangePassword() {

    
    	try {
        UserBean bean = model.findByLogin("anuragn967@gmail.com");
        String oldPassword = bean.getPassword();
        bean.setId(15L);
        bean.setPassword("anurag@2020");
        bean.setConfirmPassword("anurag@2020");
        String newPassword = bean.getPassword();
        try {
            model.changePassword(7L, oldPassword, newPassword);
            System.out.println("password has been change successfully");
        } catch (RecordNotFoundException e) {
            e.printStackTrace();
        }

    } catch (ApplicationException e) {
        e.printStackTrace();
    }

}


      public static void testforgetPassword() {
    
    	try {
        boolean b = model.forgetPassword("ranjitchoudhary20@gmail.com");

        System.out.println("Suucess : Test Forget Password Success");

    } catch (RecordNotFoundException e) {
        e.printStackTrace();
    } catch (ApplicationException e) {
        e.printStackTrace();
    }
}


      /*public static void testresetPassword() {
    UserBean bean = new UserBean();
    try {
        bean = model.findByLogin("ranjitchoudhary20@gmail.com");
        if (bean != null) {
            boolean pass = model.resetPassword(bean);
            if (pass = false) {
                System.out.println("Test Update fail");
            }
        }

    } catch (ApplicationException e) {
        e.printStackTrace();
    }*/
	
}
