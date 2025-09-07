<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!doctype html>
<html>
<head>
    <meta charset="utf-8">
    <title>Email List - Index</title>
    <link rel="stylesheet" href="styles/main.css" type="text/css"/>
</head>
<body>
<div class="card">
    <h1 class="title">Join our email list</h1>
    <p class="subtle">To join our email list, enter your name and email address below.</p>

    <form action="emailList" method="post" class="form">
        <input type="hidden" name="action" value="add"/>

        <div class="row">
            <label for="email" class="label">Email:</label>
            <input type="email" id="email" name="email" class="input" required/>
        </div>

        <div class="row">
            <label for="firstName" class="label">First Name:</label>
            <input type="text" id="firstName" name="firstName" class="input" required/>
        </div>

        <div class="row">
            <label for="lastName" class="label">Last Name:</label>
            <input type="text" id="lastName" name="lastName" class="input" required/>
        </div>

        <div class="actions">
            <button type="submit" class="btn">Join Now</button>
        </div>
    </form>
</div>

<%@ include file="includes/footer.jsp" %>
</body>
</html>
