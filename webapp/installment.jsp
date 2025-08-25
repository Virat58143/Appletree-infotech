<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import=" org.hibernate.HibernateException" %>
<%@ page import="org.hibernate.Session" %>
<%@ page import=" org.hibernate.SessionFactory" %>
<%@ page import=" org.hibernate.Transaction" %>
<%@ page import="  org.hibernate.cfg.Configuration" %>
<%@ page import="org.hibernate.query.Query" %>
<%@page import="com.addmission.addmission_class" %>
<%@page import="com.installment.installment_class" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Installment Form</title>
 <link rel="stylesheet" href="addmission.css">
 <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.7.2/css/all.min.css" integrity="sha512-Evv84Mr4kqVGRNSgIGL/F/aIDqQb7xQ2vcrdIwxfjThSH8CSR7PBEakCr51Ck+w+/U6swU2Im1vVX0SVk9ABhg==" crossorigin="anonymous" referrerpolicy="no-referrer" />
 
  <style>
  .overlay1 {
    position: fixed; /* Use fixed so it covers full screen and scrolls with it */
    top: 0;
    left: 0;
    width: 100%;
    height: 100%;
    background: rgba(0, 0, 0, 0.7);
    z-index: 1000; /* Make sure it's above everything */
    overflow-y: auto; /* Enable vertical scrolling */
    padding: 20px; /* Optional: add space from top/bottom edges */
}

.message-box1 {
    background: white;
    padding: 40px;
    border-radius: 10px;
    text-align: center;
    font-size: 1.5rem;
    box-shadow: 0 0 20px rgba(0,0,0,0.5);
    margin: auto;
    width: 90%;
    max-width: 500px;
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

<!-- SEARCH 1 BUTTON -->


 <%
			if(request.getParameter("search1")!=null)
			{
				// form se value ko in variable m store karna hain
				
				long mob3= Long.parseLong(request.getParameter("mobile"));
				
				
				// Hibernate Configuration
				   Configuration cfg = new Configuration();
				   cfg.configure("hibernate.cfg.xml");  // Loads hibernate.cfg.xml
				   
				   Session session1 = null;
				   
				   
				   SessionFactory factory = cfg.buildSessionFactory();
				   Session session2 = factory.openSession();
				    Transaction transaction1 = null;
				    
		             try {
						
						transaction1 = session2.beginTransaction();
						
				        String hql = "FROM addmission_class WHERE mob2 = :mobile";
				        Query query = session2.createQuery(hql);
				        query.setParameter("mobile",mob3);
				       
				        addmission_class user = (addmission_class) query.uniqueResult();    
						
				        if(user != null){
				        	
				        	request.setAttribute("name", user.getStu2());
				            request.setAttribute("course", user.getCif2());
				            request.setAttribute("totalfees", user.getTfe2());
				        	
				        }else
				        {
				        	out.println("invalid person");
				        }
				        transaction1.commit();
				       }
			             
		             catch (Exception e) 
			             {
					        if (transaction1 != null) transaction1.rollback();
					        out.println("Error: " + e.getMessage());
					   	 } 
				             finally 
				             {
						        if (session2 != null) session2.close();
						        if (factory != null) factory.close();
						    }
				  }

%>


<!--  search 2 button  -->
<%
		if(request.getParameter("search2")!=null)
			{
				// form se value ko in variable m store karna hain
				
				long mob4= Long.parseLong(request.getParameter("mobile"));
				String snoi4 = request.getParameter("selectinstallment");
				
				
				// Hibernate Configuration
				   Configuration cfg = new Configuration();
				   cfg.configure("hibernate.cfg.xml");  // Loads hibernate.cfg.xml
				   
				   Session session1 = null;
				   
				   
				   SessionFactory factory = cfg.buildSessionFactory();
				   Session session2 = factory.openSession();
				    Transaction transaction1 = null;
				    
		       try {
						
						 // Match found, redirect to appropriate form
				            
				            
				            if ("1".equals(snoi4))
				            {
				            	
				            	transaction1 = session2.beginTransaction();
								
						        String hql = "FROM installment_class WHERE mob2 = :mobile AND snoi2 = :selectinstallment";
						        Query query = session2.createQuery(hql);
						        query.setParameter("mobile",mob4);
						        query.setParameter("selectinstallment",snoi4);
						        
						       //	String name ="";
						        installment_class results = (installment_class) query.uniqueResult();    
								
						        if (results != null) 
						        {
						           
				            	//name = results.getNam2(); 
				            	request.setAttribute("name", results.getNam2());
					            request.setAttribute("cnm", results.getCou2());
					            request.setAttribute("tfe", results.getTfe2());
					            request.setAttribute("dfe", results.getEif2());
					            request.setAttribute("depdate", results.getDfd2());
					            request.setAttribute("rfe", results.getRfe2());
						        }
				            
						     // first ins bracket complete
%>
		            	 
		            	
		            	
		            	<div class="overlay overlay1">
				       		 <div class="message-box message-box1 success">
				        		<section class="installment-form-section">
								        <div class="containor installment-form-contaior">
								        
								        
								            <div class="installment-form flex">
								                <form action="" class="main-installment-form ">
								                 <div class="company-logo flex">
								                 	
								                    <img src="image/appletree.jpeg" alt="appletree logo">&nbsp; &nbsp;
								                   
								                </div>
								                    <h2 class="heading">First Installment Submitted</h2>
								
								
								                   
								
								                    <div class="installment-group">
								                        <label for="name">Student Name</label>
														<input type="text" id="name" name="name" placeholder="Student Name" value="<%= request.getAttribute("name") %>" readonly>
								                    </div>
								                         <div class="installment-group">
								                        <label for="cnm">Course Name</label>
								                        <input type="text" id="cnm" name="cnm" placeholder="Course Name" value="<%= request.getAttribute("cnm") %>" readonly>
								                    </div>
								                    
								                     <div class="installment-group">
								                        <label for="tfe">Total Fees </label>
								                        <input type="text" id="tfe" name="tfe" placeholder="Total Fees" value="<%= request.getAttribute("tfe") %>" readonly>
								                    </div>
								                    
								                    <div class="installment-group">
								  				  <label for="dfe">First Installment</label>
								   				 <input type="text" id="dfe" name="dfe" placeholder="Deposit Fees" value="<%= request.getAttribute("dfe") %>" readonly>
												</div>
												<div class="installment-group">
								  				  <label for="depdate">Deposit Fees Date</label>
								   					 <input type="date" id="depdate" name="depdate" value="<%= request.getAttribute("depdate") %>" readonly>
												</div>
											
													
													<div class="installment-group">
								  			  <label for="rfe">Remaning Fees</label>
								  				  <input type="text" id="rfe" name="rfe" placeholder="Remaining Fees" value="<%= request.getAttribute("rfe") %>" readonly>
													</div>
													
								                    
								
								                   <button class="primary-button print-button" type="button" onclick="printForm()">Print</button>
								
								 						
								                    
								
								                   
								                </form>
								                
								              	 <script>
								    					  function printForm() {
								                     	  window.print();
														}
												</script>
								            </div>
								        </div>
								    </section>
				            
				            </div>
				        </div>
				    
		            		
	<%
		            }
		                //response.sendRedirect("form1.jsp?mobile=" + mob);
		            
		            if ("2".equals(snoi4)) 
		            {
		            	//int selectinstallment1=1;
		            	
		       			
		            	
		                String hql1 = "FROM installment_class WHERE mob2 = :mobile  AND snoi2 = 1";
		 		        Query query = session2.createQuery(hql1);
		 		        query.setParameter("mobile",mob4);
		 		        //query.setParameter("selectinstallment1",1);
		 		        
		 		     
		 		        installment_class results1 = (installment_class) query.uniqueResult();   
		            	
		            	request.setAttribute("name", results1.getNam2());
			            request.setAttribute("cnm", results1.getCou2());
			            request.setAttribute("tfe", results1.getTfe2());
			           request.setAttribute("dfe", results1.getEif2());
			            request.setAttribute("depdate", results1.getDfd2());
			            
			            String hql2 = "FROM installment_class WHERE mob2 = :mobile AND snoi2 = :selectinstallment";
		 		        Query query2 = session2.createQuery(hql2);
		 		        query2.setParameter("mobile",mob4);
		 		        query2.setParameter("selectinstallment",snoi4);
		 		        
		 		       //	String name ="";
		 		        installment_class results2 = (installment_class) query2.uniqueResult();   
			            
			            // second installment
			            request.setAttribute("secondInstallment", results2.getEif2());
			            request.setAttribute("secondDate", results2.getDfd2());
			            //request.setAttribute("tfs", results2.getAsf2());
			            //request.setAttribute("rfe", results2.getRfe2());
			           
			            
					//	String val1 = request.getParameter("dfe");
					//	String val2 = request.getParameter("secondInstallment");
					//	out.println(val1);
					//	long first = Long.parseLong(val1);
					//	long second = Long.parseLong(val2);
					//	long result = first + second;
				
					//	request.setAttribute("tfs", result);
					
							long first = results1.getEif2();     // already long
						long second = results2.getEif2();    // already long
						long totalSubmitted = first + second;
						
						long totalFee = results1.getTfe2();  // already long
						long remaining = totalFee - totalSubmitted;
						
						request.setAttribute("tfs", totalSubmitted);
						request.setAttribute("rfe", remaining);
						
						// second ins bracket complete
		%>
		            	
		            	
	            		<div class="overlay overlay1">
				       		 <div class="message-box message-box1 success">
				       		 		 <section class="installment-form-section">
									        <div class="containor installment-form-contaior">
									        
									        
									            <div class="installment-form flex">
									                <form action="" class="main-installment-form ">
									                
									                 <div class="company-logo flex">
									                    <img src="image/appletree.jpeg" alt="appletree logo">&nbsp; &nbsp;
									                   
									                </div>
									                    <h2 class="heading">First Installment Submitted</h2>
									
									
									                   
									
									                    <div class="installment-group">
									                        <label for="name">Student Name</label>
									                        <input type="text" id="name" name="name" placeholder="Student Name" value="<%= request.getAttribute("name") %>" readonly>
									                    </div>
									                         <div class="installment-group">
									                        <label for="cnm">Course Name</label>
									                        <input type="text" id="cnm" name="cnm" placeholder="Course Name" value="<%= request.getAttribute("cnm") %>" readonly>
									                    </div>
									                    
									                     <div class="installment-group">
									                        <label for="tfe">Total Fees </label>
									                        <input type="text" id="tfe" name="tfe" placeholder="Total Fees" value="<%= request.getAttribute("tfe") %>" readonly>
									                    </div>
									                    
									                    <div class="installment-group">
									  				  <label for="dfe">First Installment</label>
									   				 <input type="text" id="dfe" name="dfe" placeholder="Deposit Fees" value="<%= request.getAttribute("dfe") %>" readonly>
													</div>
													<div class="installment-group">
									  				  <label for="depdate">Deposit Fees Date</label>
									   					 <input type="date" id="depdate" name="depdate" value="<%= request.getAttribute("depdate") %>" readonly >
													</div>
													
													
													
												
												<h2 class="heading">Second Installment Submitted</h2>
												
												
												
												<!-- ⬇ Second Installment Section -->
												<div class="installment-group">
									   			 <label for="secondInstallment">Second Installment</label>
									  			  <input type="text" id="secondInstallment" name="secondInstallment"  value="<%= request.getAttribute("secondInstallment") %>" readonly>
												</div>
												<div class="installment-group">
									  		  <label for="secondDate">Second Installment Date</label>
									  			  <input type="date" id="secondDate" name="secondDate"  value="<%= request.getAttribute("secondDate") %>" readonly>
														</div>
													<!-- ⬆ End Second Installment Section -->
									
													<div class="installment-group">
									  			  <label for="tfs">Total Fees Submited</label>
									  				  <input type="text" id="tfs" name="tfs"  value="<%= request.getAttribute("tfs") %>" readonly>
														</div>
														
														<div class="installment-group">
									  			  <label for="rfe">Remaning Fees</label>
									  				  <input type="text" id="rfe" name="rfe"  value="<%= request.getAttribute("rfe") %>" readonly>
														</div>
														
									                    
									
									                   <button class="primary-button print-button" type="button" onclick="printForm()">Print</button>
									
									 						
									                    
									
									                   
									                </form>
									                
									              	 <script>
									    					  function printForm() {
									                     	  window.print();
															}
													</script>
									            </div>
									        </div>
									    </section>
				       		 
				       			</div>
				       	</div>
				       	
	      <%
		            }
		               // response.sendRedirect("form2.jsp?mobile=" + mob);
		        
		          if ("3".equals(snoi4))
		            {
		        	  
		        	//int selectinstallment1=1;
		            	
		               
		                String hql1 = "FROM installment_class WHERE mob2 = :mobile  AND snoi2 = 1";
		 		        Query query = session2.createQuery(hql1);
		 		        query.setParameter("mobile",mob4);
		 		        //query.setParameter("selectinstallment1",1);
		 		        
		 		     // String name ="";
		 		        installment_class results1 = (installment_class) query.uniqueResult();   
		            	
		            	request.setAttribute("name", results1.getNam2());
			            request.setAttribute("cnm", results1.getCou2());
			            request.setAttribute("tfe1", results1.getTfe2());
			           request.setAttribute("fif", results1.getEif2());
			            request.setAttribute("firstdate", results1.getDfd2());
			            
			            String hql2 = "FROM installment_class WHERE mob2 = :mobile AND snoi2 = 2";
		 		        Query query2 = session2.createQuery(hql2);
		 		        query2.setParameter("mobile",mob4);
		 		      //  query2.setParameter("selectinstallment",snoi4);
		 		        
		 		       //	String name ="";
		 		        installment_class results2 = (installment_class) query2.uniqueResult();   
			            
			            // second installment
			            request.setAttribute("secondInstallment", results2.getEif2());
			            request.setAttribute("secondDate", results2.getDfd2());
			            
		        	  
			            // Third installment 
			              String hql3 = "FROM installment_class WHERE mob2 = :mobile AND snoi2 = :selectinstallment";
			              Query query3 = session2.createQuery(hql3);
			 		        query3.setParameter("mobile",mob4);
			 		        query3.setParameter("selectinstallment",snoi4);
			 		        
			 		       installment_class results3 = (installment_class) query3.uniqueResult(); 
			 		      request.setAttribute("thirdInstallment", results3.getEif2());
				            request.setAttribute("thirdDate", results3.getDfd2());
				            request.setAttribute("tfe", results3.getAsf2());
				            request.setAttribute("rfe", results3.getRfe2());
				            
				          
							
							
							long first = results1.getEif2();     // First Installment
							long second = results2.getEif2();    // Second Installment
							long third = results3.getEif2();     // Third Installment

							long totalSubmitted = first + second + third;

							long totalFee = results1.getTfe2();  // Total Fee from 1st record
							long remaining = totalFee - totalSubmitted;

							request.setAttribute("tfs", totalSubmitted);
							request.setAttribute("rfe", remaining);
			 		       
			            
							// third ins bracket complete
		            	%>
		            	
		            	
		            	<div class="overlay overlay1">
				       		 <div class="message-box message-box1 success">
	            					<section class="installment-form-section">
							        <div class="containor installment-form-contaior">
							        
							        
							            <div class="installment-form flex">
							                <form action="" class="main-installment-form ">
							                 <div class="company-logo flex">
							                 
							                    <img src="image/appletree.jpeg" alt="appletree logo" style="display: inline;">&nbsp; &nbsp;
							                   
							                   
							                </div>
							                    <h2 class="heading">First Installment Submitted</h2>
							
							
							                   
							
							                    <div class="installment-group">
							                        <label for="name">Student Name</label>
							                        <input type="text" id="name" name="name" placeholder="Student Name" value="<%= request.getAttribute("name") %>" readonly>
							                    </div>
							                         <div class="installment-group">
							                        <label for="cnm">Course Name</label>
							                        <input type="text" id="cnm" name="cnm" placeholder="Course Name" value="<%= request.getAttribute("cnm") %>" readonly>
							                    </div>
							                    
							                     <div class="installment-group">
							                        <label for="tfe1">Total Fees </label>
							                        <input type="text" id="tfe1" name="tfe1" placeholder="Total Fees" value="<%= request.getAttribute("tfe1") %>" readonly>
							                    </div>
							                    
							                    <div class="installment-group">
							  				  <label for="fif">First Installment Fees</label>
							   				 <input type="text" id="fif" name="fif" placeholder="First Installment Fees"  value="<%= request.getAttribute("fif") %>" readonly>
											</div>
											<div class="installment-group">
							  				  <label for="firstdate">First Deposit Fees Date</label>
							   					 <input type="date" id="firstdate" name="firstdate" value="<%= request.getAttribute("firstdate") %>" readonly>
											</div>
											
											
											
										<h2 class="heading">Second Installment Submitted</h2>
										
										
										
										<!-- ⬇ Second Installment Section -->
										<div class="installment-group">
							   			 <label for="secondInstallment">Second Installment</label>
							  			  <input type="text" id="secondInstallment" name="secondInstallment" placeholder="Second Installment"  value="<%= request.getAttribute("secondInstallment") %>" readonly>
										</div>
										<div class="installment-group">
							  		  <label for="secondDate">Second Deposit Fees Date</label>
							  			  <input type="date" id="secondDate" name="secondDate" value="<%= request.getAttribute("secondDate") %>" readonly >
												</div>
											
							
											
												
												
												<h2 class="heading">Third Installment Submitted</h2>
										
										
										
										<!-- ⬇ Second Installment Section -->
										<div class="installment-group">
							   			 <label for="thirdInstallment">Third Installment</label>
							  			  <input type="text" id="thirdInstallment" name="thirdInstallment" placeholder="third Installment" value="<%= request.getAttribute("thirdInstallment") %>" readonly>
										</div>
										<div class="installment-group">
							  		  <label for="thirdDate">Third Deposit Fees Date</label>
							  			  <input type="date" id="thirdDate" name="thirdDate" value="<%= request.getAttribute("thirdDate") %>" readonly>
												</div>
											<!-- ⬆ End Second Installment Section -->
							
											<div class="installment-group">
							  			  <label for="tfe">Total Fees Submited</label>
							  				  <input type="text" id="tfe" name="tfe" placeholder="Total Fees Submited" value="<%= request.getAttribute("tfs") %>" readonly >
												</div>
												
							                    <div class="installment-group">
							  			  <label for="rfe">Remaning Fees</label>
							  				  <input type="text" id="rfe" name="rfe" placeholder="Remaining Fees" value="<%= request.getAttribute("rfe") %>" readonly>
												</div>
												
												
							
							                   <button class="primary-button print-button" type="button" onclick="printForm()">Print</button>
							
							 						
							                    
							
							                   
							                </form>
							                
							              	 <script>
							    					  function printForm() {
							                     	  window.print();
													}
											</script>
							            </div>
							        </div>
							    </section>
	            		</div>
	            	</div>
	            	<%
		               // response.sendRedirect("form3.jsp?mobile=" + mob);
		            }
		           
               
				transaction1.commit();
				}
					
						    
				catch (Exception e) 
				            {
						        if (transaction1 != null) transaction1.rollback();
						        out.println("Error: " + e.getMessage());
						    } 
				           finally 
				               {
						        if (session2 != null) session2.close();
						        if (factory != null) factory.close();
						    }
						
				
				
					}
				

   %>

<!-- database me value leke gaye form se  -->
    <%

					try{
		
					if(request.getParameter("submit")!= null)
				{
			
					long mob3 = Long.parseLong(request.getParameter("mobile"));
					String nam3 = request.getParameter("name");
					String cou3 = request.getParameter("course");
					long tfe3 = Long.parseLong(request.getParameter("totalfees"));
					long mob33 = Long.parseLong(request.getParameter("mobile1"));
					String sin3 = request.getParameter("selectinstallment");
					String tni3 = request.getParameter("installment");
					String snoi3 = request.getParameter("selectinstallment1");
					long eif3 = Long.parseLong(request.getParameter("insfees"));
					long asf3 = Long.parseLong(request.getParameter("asf"));
					String dfd3 = request.getParameter("depdate");
					long rfe3 = Long.parseLong(request.getParameter("remanyfees"));


			
			
						Session session1 = null;
				       Transaction transaction1 = null;
					   // Hibernate Configuration
					   Configuration cfg = new Configuration();
					   cfg.configure("hibernate.cfg.xml");  // Loads hibernate.cfg.xml
					   
					   SessionFactory factory = cfg.buildSessionFactory();
					    session1 = factory.openSession();
					    transaction1 = session1.beginTransaction();
					    
					    // Implement your Hibernate save logic here
					    
					    installment_class obj= new installment_class(mob3, nam3, cou3, tfe3, mob33, sin3, tni3, snoi3, eif3, asf3, dfd3, rfe3);
					    		session1.save(obj); 
					    
					    
					    transaction1.commit();
	 %>
				    	<!-- Success Message Box -->
						    <div class="overlay">
						        <div class="message-box success">
						            <h2>✅ Congratulations information save Successfully.</h2>
						            
						            <div class="ok">
						            	<a  href="installment.jsp" class="primary-button " id="ok" name="ok" type="submit" role="button">ok</a>
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



<!--  fist installmet submited fatch value from database  -->





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
            <h1>Installment Form</h1>
        </div>
    </section>
    
     <section class="admin-form-section">
        <div class="containor admin-form-containor">
            <div class="admin-form flex">
                <form method="post" action="" class="main-admin-form ">
                 <h2>Installment Form </h2>
                
                	<div class="admin-group">
                    <label for="mobile">Mobile Number</label>
                    <input type="text" id="mobile" name="mobile" value="<%= request.getParameter("mobile") != null ? request.getParameter("mobile") : "" %>" >
                </div>
                
                 <button class="primary-button admin-button" id="submit" name="search1" type="submit" >Search</button>
                	
                	<div class="admin-group">
                        <label for="name">Student Name</label>
                        <input type="text" id="name" name="name" placeholder="Enter Your Name" value="<%= request.getAttribute("name") != null ? request.getAttribute("name") : "" %>" >
                    </div>
					
                    <div class="admin-group">
                        <label for="course">Course Interested For</label>
                        <input type="text" id="course" name="course" placeholder="Enter Course Name" value="<%= request.getAttribute("course") != null ? request.getAttribute("course") : "" %>">
                    </div>

                    <div class="admin-group">
                        <label for="totalfees">Total Fees Of Course</label>
                        <input type="text" id="totalfees" name="totalfees" placeholder="Enter Total Fees" value="<%= request.getAttribute("totalfees") != null ? request.getAttribute("totalfees") : "" %>" >
                    </div>
                    
                    	<h2>Installment Section</h2>
                    	
                    	<div class="admin-group">
                    	<label for="mobile">mobile Number</label>
                    <input type="text" id="mobile" name="mobile1" value="<%= request.getParameter("mobile") != null ? request.getParameter("mobile") : "" %>" readonly>

                </div>
                    	
                    	  <div class="admin-group">
                        <label for="selectinstallment">Select Number Of Installment</label>
                        <select id="selectinstallment" name="selectinstallment" >
                            <option value="">-- Choose one --</option>
                            <option value="1">1</option>
                            <option value="2">2</option>
                            <option value="3">3</option>
                            <option value="one time">One Time</option>
                        </select>
                    </div>
						
                	
                	  <button class="primary-button admin-button" id="submit" name="search2" type="submit">Search</button>
                	
                	
				                    <div class="admin-group">
				                   
                        <label for="installment">Total Number Of Installment</label>
                        <select id="installment" name="installment" >
                            <option value="">-- Choose one --</option>
                            <option value="1">1</option>
                            <option value="2">2</option>
                            <option value="3">3</option>
                            <option value="one time">One Time</option>
                        </select>
                    </div>
				
                	
                
               
              

              
					
					

                    <div class="admin-group">
                        <label for="selectinstallment">Select Number Of Installment</label>
                        <select id="selectinstallment" name="selectinstallment1" >
                            <option value="">-- Choose one --</option>
                            <option value="1">1</option>
                            <option value="2">2</option>
                            <option value="3">3</option>
                            <option value="one time">One Time</option>
                        </select>
                    </div>

                    <div class="admin-group">
                        <label for="insfees">Enter Installment Fees</label>
                        <input type="text" id="insfees" name="insfees" placeholder="Enter Installment Fees " >
                    </div>
                    
                    <div class="admin-group">
                        <label for="insfees">Enter Already Submitted Fees</label>
                        <input type="text" id="asf" name="asf" placeholder="Enter Already Submitted Fees " >
                    </div>

                     

                    <div class="admin-group Deposite-date">
                        <label for="depdate">Deposite Fees Date</label>
                        <input type="date" id="depdate" name="depdate" >
                      
                        <button class="primary-button admin-button rem-button" onclick="subtractValues()" type="button">Remany Fees</button>
                    </div>

                    <div class="admin-group">
                        <label for="remanyfees">Remaining Fees</label>
                        <input type="text" id="remanyfees" name="remanyfees" placeholder="Remaining Fees " onclick="subtractValues" type="button" >
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
    
    function subtractValues() {
        var val1 = parseFloat(document.getElementById("totalfees").value);
          var val2 = parseFloat(document.getElementById("insfees").value);
          var val3 =  parseFloat(document.getElementById("asf").value);
          var result = val1 - (val2+val3);;
          document.getElementById("remanyfees").value = result;
      }
    
    
    // Global variable to store already submitted fees
    
</script>
    
    
</body>
</html>