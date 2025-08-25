<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@ page import=" org.hibernate.HibernateException" %>
<%@ page import="org.hibernate.Session" %>
<%@ page import=" org.hibernate.SessionFactory" %>
<%@ page import=" org.hibernate.Transaction" %>
<%@ page import="  org.hibernate.cfg.Configuration" %>
<%@ page import="org.hibernate.query.Query" %>
<%@page import="com.contact.contact_class" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Contact form</title>
    <link rel="stylesheet" href="contact.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.7.2/css/all.min.css" integrity="sha512-Evv84Mr4kqVGRNSgIGL/F/aIDqQb7xQ2vcrdIwxfjThSH8CSR7PBEakCr51Ck+w+/U6swU2Im1vVX0SVk9ABhg==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    
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
</style>
 <style>
       
        footer {
            background-color: #044680;;
            color: white;
            padding: 40px 20px;
        }

        .footer-container {
            max-width: 1200px;
            margin: 0 auto;
            display: flex;
            justify-content: space-between;
            flex-wrap: wrap;
        }

        .footer-column {
            flex: 1;
            min-width: 180px;
            /* responsive ke liye */
            margin: 10px;
        }

        .footer-column h3 {
            margin-bottom: 15px;
            font-size: 18px;
            color: #f1c40f;
        }

        .footer-column ul {
            list-style: none;
            padding: 0;
        }

        .footer-column ul li {
            margin-bottom: 10px;
        }

        .footer-column ul li a {
            color: white;
            text-decoration: none;
            font-size: 14px;
        }

        .footer-column ul li a:hover {
            text-decoration: underline;
        }

        .footer-bottom {
            text-align: center;
            padding-top: 20px;
            font-size: 14px;
            color: #aaa;
        }
    </style>
 

<body>

<%

	try{
		
		if(request.getParameter("submit")!= null)
		{
			String nam1 = request.getParameter("name");
			String ema1 = request.getParameter("email");
			String mob1 = request.getParameter("mobile");
			String adc1 = request.getParameter("comments");
			
			
			Session session1= null;
			Transaction transaction1 = null;
			
			// Hibernate Configuration
			
			Configuration cfg= new Configuration();
			cfg.configure("hibernate.cfg.xml");
			
			
			SessionFactory factory= cfg.buildSessionFactory();
			session1 = factory.openSession();
			transaction1 = session1.beginTransaction();
			
		    // Implement your Hibernate save logic here

		    contact_class obj=new contact_class(nam1, ema1, mob1, adc1);
		    session1.save(obj); 
		    
		    
		    transaction1.commit();
		    %>
	    	<!-- Success Message Box -->
			    <div class="overlay">
			        <div class="message-box success">
			            <h2>✅ Congratulations Your information is submited.</h2>
			            <div class="ok">
			            	<a  href="contact.jsp" class="primary-button " id="ok" name="ok" type="submit" role="button">ok</a>
			            </div>
			        </div>
			    </div>
	    
	    <%
		    
		
	}
	
	
	
	
}
catch(Exception ex)
{
	out.println(ex);
%>
	
	
	<%
	
	
	
}





%>
    <!-- top banner -->
    <div class="top-banner">
        <div class="banner">
            <div class="small-bold-text banner-text">
                <marquee id="banner-marquee">
                    Welcome To Appletree Infotect Institute.Call for any course Enquiry:- 7503962162
                </marquee>
            </div>
        </div>
    </div>

    <!-- nav section -->
    <nav>
        <div class="containor nav-section flex">
            <div class="nav-item"></div>
                <div class="company-logo flex">
                    <img src="image/appletree.jpeg" alt="appletree logo">&nbsp; &nbsp;
                    <p class="a">Apple</p><p class="b">tree</p> &nbsp;<p class="c">Infotect</p>
                </div>
                
                
               
        
                <div class="nav-button">
                    <ul class="flex">
                        <li><a href="index.jsp" class="hover-links">Home</a></li>
                        <li><a href="index-gallery.jsp" class="hover-links">Gallery</a></li>
                        
                        <li><a href="Feedback.jsp" class="hover-links">Feedback</a></li>
                        <li><a href="Contact.jsp" class="hover-links">Contact</a></li>
                        <li><a href="login.jsp" class="button-links primary-button">Login</a></li>
                        
                    </ul>
                </div>
            </div>
        </div>
    </nav>
    <!--header section-->
    <section class="header-section">
        <div class="containor header-section-containor flex">
            <h1>Contect Form</h1>
        </div>
    </section>
    <!--feedback form -->
    <section class="feedback-form-section">
        <div class="containor feedback-form-contaior">
            <div class="feedback-form flex">
                <form action="" class="main-feedback-form ">
                    <h2>Contect Form</h2>

                    <div class="form-group">
                        <label for="name">Your Name</label>
                        <input type="text" id="name" name="name" placeholder="Enter Your Name" required>
                    </div>

                    <div class="form-group">
                        <label for="email">Email Address</label>
                        <input type="email" id="email" name="email" placeholder="you@example.com" required>
                    </div>
                    <div class="form-group">
                        <label for="mobile">Mobile Number</label>
                        <input type="mobile" id="mobile" name="mobile" placeholder="Mobile Number" required>
                    </div>

                    

                    <div class="form-group">
                        <label for="comments">Additional Comments</label>
                        <textarea id="comments" name="comments" rows="4" placeholder="Tell us more..."></textarea>
                    </div>

                    <button class="primary-button feedback-button" id="submit" name="submit" type="submit">Submit</button>
                </form>
            </div>
        </div>
    </section>
    
    <!--footer section-->

  

  
    <footer>
        <div class="footer-container">
            <div class="footer-column">
                <h3>Apple Tree Infotech</h3>
                <ul>
                    Apple Tree infotech deal also Website , Software and Apps Development.
                    
                </ul>
            </div>
            <div class="footer-column">
                <h3>GET IN TOUCH</h3>
                <ul>
                    <li><a href="#">Mob:7503962162</a></li>
                    <li><a href="#">hr@appletreeinfotech.in</a></li>
                    <li><a href="#">www.appletreeinfotech.in</a></li>
                </ul>
            </div>
            <div class="footer-column">
                <h3>Useful Links</h3>
                <ul>
                    <li><a href="index.jsp">Home </a></li>
                    <li><a href="index-gallery.jsp">Gallery</a></li>
                    <li><a href="Feedback.jsp">Feedback</a></li>
                    <li><a href="Contact.jsp"> Contact</a></li>
                    
                </ul>
              
            </div>
            <div class="footer-column" >
                <h3>Links</h3>
                <ul>
                   <i class="fa-brands fa-instagram"></i>
                   <i class="fa-brands fa-facebook"></i>
                   <i class="fa-brands fa-square-twitter"></i>
                   <i class="fa-brands fa-square-whatsapp"></i>
                </ul>
            </div>
            
        </div>

        
    </footer>
    
    
    


    <!--sub footer section -->
    <div class="subfooter">
        <div class="containor flex subfooter-containor">
            <div class="footer-bottom">
            &copy; 2025 appletree infotech. All rights reserved.
        </div>

        </div>
    </div>
    <!--script section-->
    <script>
   
     </script>
</body>

</html>