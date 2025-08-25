<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import=" org.hibernate.HibernateException" %>
<%@ page import="org.hibernate.Session" %>
<%@ page import=" org.hibernate.SessionFactory" %>
<%@ page import=" org.hibernate.Transaction" %>
<%@ page import="  org.hibernate.cfg.Configuration" %>
<%@page import="com.addmission.addmission_class" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Addmission Form</title>
<link rel="stylesheet" href="<%= request.getContextPath() %>/addmission.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.7.2/css/all.min.css" integrity="sha512-Evv84Mr4kqVGRNSgIGL/F/aIDqQb7xQ2vcrdIwxfjThSH8CSR7PBEakCr51Ck+w+/U6swU2Im1vVX0SVk9ABhg==" crossorigin="anonymous" referrerpolicy="no-referrer" />



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
 
</head>
<body>

<%

	try{
		
		if(request.getParameter("submit")!= null)
		{
			
			String stu1 = request.getParameter("name");
			String dob1 = request.getParameter("date");
			long mob1 = Long.parseLong(request.getParameter("mobile"));
			String add1 = request.getParameter("address");
			String ema1 = request.getParameter("email");
			String fnm1 = request.getParameter("fathername");
			long fmo1 = Long.parseLong(request.getParameter("fathermobile"));
			String foc1 = request.getParameter("occupation");
			String sqf1 = request.getParameter("qualification");
			String csy1 = request.getParameter("year");
			String cou1 = request.getParameter("course");
			long tfe1 = Long.parseLong(request.getParameter("totalfees"));
			
			String unm1 = request.getParameter("username");
			String pas1 = request.getParameter("password");
			
			
				Session session1 = null;
		       Transaction transaction1 = null;
			   // Hibernate Configuration
			   Configuration cfg = new Configuration();
			   cfg.configure("hibernate.cfg.xml");  // Loads hibernate.cfg.xml
			   
			   SessionFactory factory = cfg.buildSessionFactory();
			    session1 = factory.openSession();
			    transaction1 = session1.beginTransaction();
			    
			    // Implement your Hibernate save logic here
			    
			    addmission_class obj= new addmission_class(stu1, dob1, mob1, add1, ema1, fnm1, fmo1, foc1, sqf1, csy1, cou1, tfe1,unm1,pas1);
			    		session1.save(obj); 
			    
			    
			    transaction1.commit();
			    %>
		    	<!-- Success Message Box -->
				    <div class="overlay">
				        <div class="message-box success">
				            <h2>✅ Congratulations information save Successfully.</h2>
				            
				            <div class="ok">
				            	<a  href="addmission.jsp" class="primary-button " id="ok" name="ok" type="submit" role="button">ok</a>
				            </div>
				        </div>
				    </div>
				    
						    
		    <%	
			    
			
		}
		
		
		
		
	}
	catch(Exception ex)
	{
		%>
		
		<!-- Error Message Box -->
	    <div class="overlay">
	        <div class="message-box error">
	            <h2>❌ Error: <%= ex.getMessage() %></h2>
	        </div>
	    </div>
		
		<%
		
		
		
	}

%>
	
	<!-- top banner -->
    <div class="top-banner">
        <div class="banner">
            <div class="small-bold-text banner-text">
                <marquee id="banner-marquee">
                    Welcome To Appletree Infotech Institute.Call for any course Enquiry:- 7503962162, 9355343070
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
                    <p class="a">Apple</p><p class="b">tree</p> &nbsp;<p class="c">Infotech</p>
                </div>
                <div class="nav-button">
                    <ul class="flex">
                        <li><a href="student_portal.jsp" class="hover-links">Home</a></li>
                        <li><a href="gallery.jsp" class="hover-links">Gallery</a></li>
                        <li><a href="addmission.jsp" class="hover-links">Addmission</a></li>
                        <li><a href="installment.jsp" class="hover-links">Installment</a></li>
						 <li><a href="admin_receipt.jsp" class="hover-links">Receipt</a></li>                        
                        <li><a href="index.jsp" class="button-links primary-button">Logout</a></li>
                        
                    </ul>
                </div>
            </div>
        
    </nav>
    <!--header section-->
    <section class="header-section">
        <div class="containor header-section-containor flex">
            <h1>Addmission Form</h1>
        </div>
    </section>

    <!--admin portal form -->
    <section class="admin-form-section">
        <div class="containor admin-form-contaior">
            <div class="admin-form flex">
                <form action="" class="main-admin-form ">
                    <h2>Addmission Form </h2>

                    
                    <div class="admin-group">
                        <label for="name">Student Name</label>
                        <input type="text" id="name" name="name" placeholder="Enter Your Name" required>
                    </div>

                    <div class="admin-group">
                        <label for="date">DOB</label>
                        <input type="date" id="date" name="date" required>
                    </div>
                    <div class="admin-group">
                        <label for="mobile">Mobile Number</label>
                        <input type="text" id="mobile" name="mobile" placeholder="Mobile Number" required>
                    </div>

                    <div class="admin-group">
                        <label for="address">Address</label>
                        <input type="text" id="address" name="address" placeholder="Enter Address" required>
                    </div>

                    <div class="admin-group">
                        <label for="email">Email Address</label>
                        <input type="email" id="email" name="email" placeholder="you@example.com" required>
                    </div>

                    <h2>Father Section</h2>

                    <div class="admin-group">
                        <label for="fathername">Father Name</label>
                        <input type="text" id="fathername" name="fathername" placeholder="Enter Father Name" required>
                    </div>

                    <div class="admin-group">
                        <label for="fathermobile">Mobile Number</label>
                        <input type="text" id="fathermobile" name="fathermobile" placeholder="Mobile Number" required>
                    </div>



                    <div class="admin-group">
                        <label for="occupation">Father Occupation</label>
                        <select id="occupation" name="occupation" required>
                            <option value="">-- Choose one --</option>
                            <option value="business">Business</option>
                            <option value="private job">Private Job</option>
                            <option value="govt. job">Govt. Job</option>
                        </select>
                    </div>

                    <h2>Student Qualification Section</h2>

                    <div class="admin-group">
                        <label for="qualification">Student Qualification</label>
                        <input type="text" id="qualification" name="qualification"
                            placeholder="Enter Student Qualification " required>
                    </div>

                    <div class="admin-group">
                        <label for="year">Current Study Year</label>
                        <input type="text" id="year" name="year" placeholder="Enter Current Study Year" required>
                    </div>

                    <h2>Course Section</h2>

                    <div class="admin-group">
                        <label for="course">Course Interested For</label>
                        <input type="text" id="course" name="course" placeholder="Enter Course Name" required>
                    </div>

                    <div class="admin-group">
                        <label for="totalfees">Total Fees Of Course</label>
                        <input type="text" id="totalfees" name="totalfees" placeholder="Enter Total Fees" required>
                    </div>

                   
                    
                    <div class="admin-group">
                        <label for="username">User Name</label>
                        <input type="text" id="username" name="username" placeholder="Enter Username" required>
                    </div>

                    <div class="admin-group">
                        <label for="password">Password</label>
                        <input type="password" id="password" name="password" placeholder="Password" required>
                    </div>

                    <button class="primary-button admin-button" id="submit" name="submit" type="submit">Submit</button> 
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
                    <li><a href="student_portal.jsp">Home </a></li>
                    <li><a href="gallery.jsp">Gallery</a></li>
                    <li><a href="addmission.jsp">Addmission</a></li>
                    <li><a href="installment.jsp"> Installment</a></li>
                    <li><a href="admin_receipt.jsp"> Reciept</a></li>
                    
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
    
    function subtractValue() {
    	
    	var val1 = parseFloat(document.getElementById("totalfees").value);
    	var val2 = parseFloat(document.getElementById("insfees").value);
    	var result = val1 - val2;
    	document.getElementById("remanyfees").value = result;
    	
    }
    
    
    
     </script>
	

</body>
</html> 