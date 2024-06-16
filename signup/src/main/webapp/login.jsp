<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Registration Form</title>
    <style>
        * {
    box-sizing: border-box;
    margin: 0;
    padding: 0;
    font-family: 'Arial', sans-serif;
}

body {
    background: linear-gradient(135deg, #6B73FF, powderblue);
    height: 100vh;
    display: flex;
    justify-content: center;
    align-items: center;
}

.container {
    background: rgba(255, 255, 255, 0.1);
    border-radius: 10px;
    box-shadow: 20px 20px 20px rgba(0, 0, 0, 0.3);
    padding: 20px 30px;
    backdrop-filter: blur(10px);
    animation: fadeIn 1s ease-in-out;
}

.form-container {
    text-align: center;
}

h1 {
    margin-bottom: 20px;
    color: #fff;
}

.input-group {
    position: relative;
    margin-bottom: 20px;
}

.input-group input {
    width: 100%;
    padding: 10px;
    border: none;
    border-bottom: 2px solid #fff;
    background: transparent;
    color: #fff;
    font-size: 16px;
    outline: none;
    transition: border-color 0.3s;
}

.input-group label {
    position: absolute;
    top: 10px;
    left: 0;
    color: #fff;
    pointer-events: none;
    transition: top 0.3s, left 0.3s, font-size 0.3s;
}

.input-group input:focus + label,
.input-group input:valid + label {
    top: -20px;
    left: 0;
    font-size: 12px;
    color: #6B73FF;
}

.input-group input:focus {
    border-color: powderblue;
}

.btn {
    background: #6B73FF;
    color: #fff;
    border: none;
    padding: 10px 20px;
    border-radius: 5px;
    cursor: pointer;
    font-size: 16px;
    transition: background 0.3s;
}

.btn:hover {
    background: #6e74c8;
}

@keyframes fadeIn {
    from {
        opacity: 0;
        transform: translateY(-20px);
    }
    to {
        opacity: 1;
        transform: translateY(0);
    }
}
    </style>
</head>
<body>
    <div class="container">
        <div class="form-container">
            <h1 style="color: black">Register</h1>
            <form id="register-form" action="userlogin" method="post" >
                <div class="input-group">
                    <input type="text" required="required" name="umail">
                    <label for="email" style="color: black">Email</label>
                </div>
                <div class="input-group">
                    <input type="password" id="password" required="required" name="ccpwd">
                    <label for="password" style="color: black">Password</label>
                </div>
                <button type="submit" class="btn" >Register</button>
            </form>
        </div>
    </div>

</body>
</html>
