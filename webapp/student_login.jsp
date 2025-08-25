<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import=" org.hibernate.HibernateException" %>
<%@ page import="org.hibernate.Session" %>
<%@ page import=" org.hibernate.SessionFactory" %>
<%@ page import=" org.hibernate.Transaction" %>
<%@ page import="  org.hibernate.cfg.Configuration" %>
<%@ page import="org.hibernate.query.Query" %>
<%@page import="com.addmission.addmission_class" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Student Login</title>
<link rel="stylesheet" href="admin_login.css">

</head>
<style>

	/* submited box */

.overlay {
    position: fixed;
    top: 0;
    left: 0;
    width: 100%;
    height: 100%;
    background: rgba(0, 0, 0, 0.7);
    display: flex;
    justify-content: center;
    align-items: center;
    z-index: 9999;
}
.ok{
	padding-top: 20px;
	padding-bottom: 20px;
}
.message-box {
    background: white;
    padding: 40px;
    border-radius: 10px;
    text-align: center;
    font-size: 1.5rem;
    box-shadow: 0 0 20px rgba(0,0,0,0.5);
}
.message-box.success {
    border-left: 10px solid green;
}
.message-box.error {
    border-left: 10px solid red;
}
/* Make form relative so the close button positions inside it */
.main-login-form {
    position: relative;
}

/* Position close button within the form */
.close-button {
    position: absolute;
    top: 10px;
    right: 10px;
    font-size: 20px;
    text-decoration: none;
    color: black;
    background-color: white;
    border-radius: 50%;
    padding: 4px 10px;
    font-weight: bold;
    transition: background-color 0.3s ease;
    z-index: 1;
}

.close-button:hover {
    background-color: red;
    color: white;
}

</style>
<body style="background-image: url('image/student-login-img.jpg');">

<%
	if(request.getParameter("login")!= null)
	{
			String pst3 = request.getParameter("type");
			String anm3 = request.getParameter("name");
			String pas3 = request.getParameter("password");
		
		   // Hibernate Configuration
		   Configuration cfg = new Configuration();
		   cfg.configure("hibernate.cfg.xml");  // Loads hibernate.cfg.xml
		   
		   Session session1 = null;
		   
		   
		   SessionFactory factory = cfg.buildSessionFactory();
		    session1 = factory.openSession();
		    Transaction transaction1 = null;
		    
			try{
				
				transaction1 = session1.beginTransaction();
		        String hql = "FROM addmission_class WHERE unm2 = :name AND  pas2 = :password";
		        Query query = session1.createQuery(hql);
		        query.setParameter("name", anm3);
		        query.setParameter("password", pas3);
		        

		        
		       addmission_class user = (addmission_class) query.uniqueResult();    
		       
			if (user != null) {
		       // out.println("Login Successful. Welcome " + user.getUnm2());
		      long mob2Value = user.getMob2();
                session.setAttribute("mobile", mob2Value);
		       
		        %>
			    	<!-- Success Message Box -->
					    <div class="overlay">
					        <div class="message-box success">
					            <h2>✅ Congratulations Login Successfully.</h2>
					            <div class="ok">
					            	<a  href="reciept.jsp" class="primary-button " id="ok" name="ok" type="submit" role="button">ok</a>
					            </div>
					        </div>
					    </div>
			    <%	
		        // redirect or forward
		        // response.sendRedirect("student-portal.jsp");
		    } else {
		        //out.println("Invalid Credentials");
		        
		    	%>
		    	<!-- Success Message Box -->
				    <div class="overlay">
				        <div class="message-box error">
				            <h2>❌ Invalid Credentials.</h2>
				            <div class="ok">
				            	<a  href="student_login.jsp" class="primary-button " id="ok" name="ok" type="submit" role="button">ok</a>
				            </div>
				        </div>
				    </div>
		    
    <%	
   			 }
	

				transaction1.commit();
				} 
				catch (Exception e) {
			    if (transaction1 != null) transaction1.rollback();
			    out.println("Error: " + e.getMessage());
			} finally {
			    if(session1 != null) session1.close();
			    if (factory != null) factory.close();
			}
	}








%>
    <!--login section -->
    <section class="login-form-section" >
        <div class="containor login-form-contaior">
            <div class="login-form flex">
                <form method="post" action="" class="main-login-form " id="login">
                <a href="login.jsp" class="close-button">✖</a>
                    <h2>Login Form</h2>

                    <div class="login-group">
                        <label for="type">Plese Select Type:</label>
                        <select id="type" name="type" required>
                            <option value="student">Student</option>
                        </select>
                    </div>

                    <div class="login-group">
                        <label for="name">Username</label>
                        <input type="text" id="name" name="name" placeholder="Enter Username" required>
                    </div>
                    <div class="login-group">
                        <label for="password">Password</label>
                        <input type="password" id="password" name="password" placeholder="password" required>
                    </div>


                    <button class="primary-button login-button" name="login" id="login" type="submit">Login</button>
                </form>
            </div>
        </div>
    </section>

    <script>
        
    </script>
</body>
</html>










