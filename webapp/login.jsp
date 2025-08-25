<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login</title>
<link rel="stylesheet" href="admin_login.css">
<style>
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
</head>
<body style="background-image: url('image/student-login-img.jpg');">
	<section class="login-form-section">
	
    <div class="containor login-form-contaior">
        <div class="login-form flex">
            <form method="post" action="" class="main-login-form" id="login">
            	
                <h2>Login Type</h2>
				<a href="index.jsp" class="close-button">✖</a>
                <div class="login-group">
                    <label for="type">Please Select Type:</label>
                    <select id="type" name="type" required onchange="redirectToPage()">
                        <option value="">-- Choose one --</option>
                        <option href="admin_login.jsp" value="admin">Admin</option>
                        <option  href="student_login.jsp"  value="student">Student</option>
                    </select>
                </div>
            </form>
        </div>
    </div>
</section>

<script>
    function redirectToPage() {
        var selectedValue = document.getElementById("type").value;
        if (selectedValue === "admin") {
            window.location.href = "admin_login.jsp"; // <-- yahan apne page ka naam daalein
        }
        else{
        	window.location.href="student_login.jsp";
        }
    }
    
    
</script>

</body>
</html>


