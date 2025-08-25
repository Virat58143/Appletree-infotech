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
<link rel="stylesheet" href="reciept.css">
<style>
.main-receipt-form {
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
</head>
<body>

<%

long mob2 = (long) session.getAttribute("mobile");  // Get long type mobile value
String mobileStr = String.valueOf(mob2);  // Convert to String if needed for form input

   
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
	
	  <section class="receipt-form-section">
        <div class="containor receipt-form-containor">
            <div class="receipt-form flex">
           
                <form action="" class="main-receipt-form ">
                	<a href="login.jsp" class="close-button">✖</a>
                    <h2>Receipt Form </h2>



                    <div class="admin-group">
                        <label for="mobile">Mobile Number</label>
                        <input type="text" id="mobile" name="mobile" placeholder="Mobile Number" value="<%= mobileStr != null ? mobileStr : "" %>" readonly>
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
	<script>
			 function printForm() {
			  window.print();
													}
	</script>
	
</body>
</html>