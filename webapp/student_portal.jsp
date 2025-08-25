<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Appletree Infotech</title>
<link rel="stylesheet" href="student-portal.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.7.2/css/all.min.css" integrity="sha512-Evv84Mr4kqVGRNSgIGL/F/aIDqQb7xQ2vcrdIwxfjThSH8CSR7PBEakCr51Ck+w+/U6swU2Im1vVX0SVk9ABhg==" crossorigin="anonymous" referrerpolicy="no-referrer" />


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
 

</head>

<body>
    <!-- top banner -->
    <div class="top-banner">
        <div class="banner">
            <div class="small-bold-text banner-text">
                <marquee id="banner-marquee header-marquee1">
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
        </div>
    </nav>
    <!--header top section -->
    <section class="header-top-section">
        <div class="header-img ">
            <div class="header-top-text containor flex">
                <h1>Welcome to apple tree infotech</h1>
                <h1>the best programming training istitute in Ghaziabad</h1>
            </div>
        </div>
    </section>
    <!-- header section -->
    <header>
        <div class="heading">
            <h1>Best Coaching Center in Ghaziabad </h1>
        </div>
        <div class="containor header-section flex">
            <div class="left">
                <img src="image/apple1-img.jpg" alt="header image">
            </div>
            <div class="right flex">
                <h1>Appletree Infotech Ghaziabad</h1>
                <p>Apple Tree Infotech Ghaziabad is one of the leading Software Development and Web solution Company which offers Best Programming Course In Ghaziabad such as software development, Website Development, ECommerce Development, MLM Software Development, website maintenance, Web Hosting, Domain Name Registration, Email and Web Mail Facilities, Website Statistics, unique Logo design, corporate identities, SEO and Content Management Systems at rational cost across the globe</p>
                
            </div>
        </div>
    </header>

    
    <!--gallery section-->
    <section>
        <div class="heading">
            <h1>Gallery</h1>
        </div>
        <div class="containor galery-section first-galery-section flex">
            <div class="left">
                <img src="image/sir-header-img.jpg" alt="" class="left-galery-img">
            </div>
            <div class="right flex" >
                <h1>Umesh Chandra Founder of AppleTree Infotech</h1>
                <p>Umesh Chandra is a dedicated and skilled professional with a background in Computer Science. He completed his Master of Computer Applications (MCA) and has since focused on utilizing his expertise in technology and coding. Known for his passion for the field, Umesh has made significant strides in his career, contributing to various projects and helping others understand complex computer science concepts. His commitment to excellence and continuous learning sets him apart as a leader in the field.</p>
            </div>
        </div>
    </section>

    <section>
        <div class="containor galery-section secound-galery-section flex">
            <div class="left">
                <img src="image/msme2-img.jpg" alt="" class="left-galery-img">
            </div>
            <div class="right flex" >
                <h1>Micro, Small, and Medium Enterprises</h1>
                <p>The Web Designing course at AppleTree Infotech was introduced by MSME, providing a great opportunity for individuals to enhance their skills in web development. Upon successfully completing the course, participants were awarded a certificate. The entire project was carried out under the expert guidance of Mr. Privinder Singh, who played a key role in ensuring its success and helping participants grasp the essential concepts of web designing effectively.</p>
            </div>
        </div>
    </section>

    <section>
        <div class="containor galery-section thired-galery-section flex">
            <div class="left">
                <img src="image/sir-certificate-img.jpeg" alt="" class="left-galery-img">
            </div>
            <div class="right flex" >
                <h1>Umesh Chandra Honored with Guru Dronacharya Award by SDGI</h1>
                <p>Umesh Chandra was honored with the Guru Dronacharya Award by SDGI Global University (Sunder Deep Group of Institutions), Ghaziabad for his distinguished contribution in the field of education. The award was presented during the Educator’s Felicitation Ceremony, recognizing his dedication and excellence in teaching and mentoring.</p>
            </div>
        </div>
    </section>
    
    <section>
        <div class="containor galery-section secound-galery-section flex">
            <div class="left">
                <img src="image/workshop1.jpeg" alt="" class="left-galery-img">
            </div>
            <div class="right flex" >
                <h1>Technical Workshop at RKGIT by Umesh Chandra</h1>
                <p>A workshop was organized at Raj Kumar Goel Institute of Technology (RKGIT), Ghaziabad, by Umesh Chandra, focusing on practical aspects of computer science and programming. The session aimed to provide students with hands-on experience and deeper understanding of modern coding practices and web technologies. Umesh Chandra, known for his expertise in the field, guided the participants through various technical concepts, making the workshop highly interactive and beneficial for the students' career development.</p>
            </div>
        </div>
    </section>
    
     <section>
        <div class="containor galery-section thired-galery-section flex">
            <div class="left">
                <img src="image/msme1-img.jpg" alt="" class="left-galery-img">
            </div>
            <div class="right flex" >
                <h1>Virat Chaudhary Awarded Web Designing Certificate by MSME</h1>
                <p>Virat Chaudhary was awarded a Web Designing certificate by MSME after successfully completing the Web Designing course. His dedication and hard work throughout the course enabled him to gain valuable skills in web development, which he can now apply in various professional settings. The certification marks a significant milestone in his educational journey and showcases his proficiency in web design.</p>
            </div>
        </div>
    </section>
    
    <!--employe section -->
    
    <section>
        <div class="containor">
            <div class="heading">
                <h1>Employee</h1>
            </div>
            <div class="course-area flex">
                <div class="course-card employee-card flex">
                    <img class="course-card-img" src="image/sir-img1.jpg" alt="">
                    <div class="overlay-text">UMESH CHANDRA<br>
						Founder of <br> AppleTree Infotech</div>
                </div>
                
                <div class="course-card employee-card flex">
                    <img class="course-card-img" src="image/virat1-img.JPG" alt="">
                    <div class="overlay-text">VIRAT CHAUDHARY <br> Web Developer</div>
                    
                </div>
                <div class="course-card employee-card flex">
                    <img class="course-card-img" src="image/abhi1-img.jpg" alt="">
                   	<div class="overlay-text">ABHINAV SINGHAL <br> Web Developer</div>
                </div>
                <div class="course-card employee-card flex">
                    <img class="course-card-img" src="image/sourav.jpeg" alt="">
                    <div class="overlay-text">SAURABH TYAGI <br>Tally & GST Accounting</div>
                </div>
                <div class="course-card employee-card flex">
                    <img class="course-card-img" src="image/appletree.jpeg" alt="">
                    <div class="overlay-text">Yeh Content Hover par Dikhega</div>
                </div>
                <div class="course-card employee-card flex">
                    <img class="course-card-img" src="image/appletree.jpeg" alt="">
                    <div class="overlay-text">Yeh Content Hover par Dikhega</div>
                </div>
            </div>
        </div>
    </section>
    
    <!-- cta section -->
    <section class="cta-section">
        <div class="containor flex cta-section-containor">
            <h1 class="cta-heading">If You Have Any Enquiry</h1>
            <div class="small-bold-text banner-text">
                <marquee id="banner-marquee">
                    Welcome To Appletree Infotect Institute.Call for any course Enquiry:- 7503962162, 9355343070
                </marquee>
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
	
    <!-- script section -->
    <script src="appletree.js"></script>

</body>
</html>