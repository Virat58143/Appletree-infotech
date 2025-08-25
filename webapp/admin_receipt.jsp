<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import=" org.hibernate.HibernateException" %>
<%@ page import="org.hibernate.Session" %>
<%@ page import=" org.hibernate.SessionFactory" %>
<%@ page import=" org.hibernate.Transaction" %>
<%@ page import="  org.hibernate.cfg.Configuration" %>
<%@ page import= "org.hibernate.query.Query" %>
<%@page import="com.installment.installment_class" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Receipt form</title>
<link rel="stylesheet" href="admin-receipt.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.7.2/css/all.min.css" integrity="sha512-Evv84Mr4kqVGRNSgIGL/F/aIDqQb7xQ2vcrdIwxfjThSH8CSR7PBEakCr51Ck+w+/U6swU2Im1vVX0SVk9ABhg==" crossorigin="anonymous" referrerpolicy="no-referrer" />





<%
    String mobileStr = request.getParameter("mobile");
    String selectedInstallment = request.getParameter("selectinstallment");

    if (request.getParameter("search") !=null && mobileStr != null && selectedInstallment != null) {
        long mobile = Long.parseLong(mobileStr);
	
        Configuration cfg = new Configuration();
        cfg.configure("hibernate.cfg.xml");
        SessionFactory factory = cfg.buildSessionFactory();
        Session session1 = factory.openSession();

        try {
        	
        	String hql = "FROM installment_class WHERE mob2 = :mob2 AND snoi2 = :snoi2";
        	Query query = session1.createQuery(hql);
        	query.setParameter("mob2", mobile);
        	query.setParameter("snoi2", selectedInstallment);

            
            installment_class result = (installment_class) query.uniqueResult();
            
            if (result != null) {
            	
            	request.setAttribute("name", result.getNam2());
                request.setAttribute("cnm", result.getCou2());
                request.setAttribute("tfe", result.getTfe2());
                request.setAttribute("ins", result.getSnoi2());
                request.setAttribute("dfe", result.getEif2());
                request.setAttribute("dfd", result.getDfd2());
                request.setAttribute("rfe", result.getRfe2());
                
		            
            } else {
                request.setAttribute("error", "No record found!");
            }
        } catch (Exception e) {
            out.println("Error: " + e.getMessage());
        } finally {
            session1.close();
            factory.close();
        }
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
            <h1>Receipt Form</h1>
        </div>
    </section>
    
	  <section class="receipt-form-section">
        <div class="containor receipt-form-containor">
            <div class="receipt-form flex">
                <form action="" class="main-receipt-form ">
                    <h2>Receipt Form</h2>



                    <div class="admin-group">
                        <label for="mobile">Mobile Number</label>
                        <input type="text" id="mobile" name="mobile" placeholder="Mobile Number" value="<%= request.getParameter("mobile") != null ? request.getParameter("mobile") : "" %>" required>
                    </div>

                    <div class="admin-group">
                        <label for="selectinstallment">Select Number Of Installment</label>
                        <select id="selectinstallment" name="selectinstallment" value="<%= selectedInstallment %>"  required>
                            <option value="">-- Choose one --</option>
                            <option value="1">1</option>
                            <option value="2">2</option>
                            <option value="3">3</option>
                            <option value="one time">One Time</option>
                        </select>
                    </div>


                    <button class="primary-button admin-button" id="submit" name="search" type="submit">Search</button>

                    

                    <div class="admin-group">
                        <label for="name">Name</label>
                        <input type="text" id="name" name="name"   value="<%= request.getAttribute("name") != null ? request.getAttribute("name") : "" %>" readonly>
                    </div>
                    <div class="admin-group">
                        <label for="cnm">Course Name</label>
                        <input type="text" id="cnm" name="cnm" value="<%= request.getAttribute("cnm") != null ? request.getAttribute("cnm") : "" %>" readonly>
                    </div>

                    <div class="admin-group">
                        <label for="tfe">Total Fees </label>
                        <input type="text" id="tfe" name="tfe" value="<%= request.getAttribute("tfe") != null ? request.getAttribute("tfe") : "" %>" readonly>
                    </div>
                    <div class="admin-group">
                        <label for="ins">Installment</label>
                        <input type="text" id="ins" name="ins" value="<%= request.getAttribute("ins") != null ? request.getAttribute("ins") : "" %>" readonly>
                    </div>

                    <div class="admin-group">
                        <label for="dfe">Deposite Fess</label>
                        <input type="text" id="dfe" name="dfe" value="<%= request.getAttribute("dfe") != null ? request.getAttribute("dfe") : "" %>" readonly>
                    </div>


                    <div class="admin-group">
                        <label for="dfd">Deposite Fess Date</label>
                        <input type="date" id="dfd" name="dfd" value="<%= request.getAttribute("dfd") != null ? request.getAttribute("dfd") : "" %>" readonly>
                    </div>




                    <div class="admin-group">
                        <label for="rfe">Remaining Fess</label>
                        <input type="text" id="rfe" name="rfe"value="<%= request.getAttribute("rfe") != null ? request.getAttribute("rfe") : "" %>" readonly>
                    </div>
                    
                    
                     <button class="primary-button admin-button" type="button" onclick="printForm()">Print</button>

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
	
	
</body>
</html>