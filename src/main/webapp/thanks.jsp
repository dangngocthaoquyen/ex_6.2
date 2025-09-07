<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!doctype html>
<html>
<head>
    <meta charset="utf-8">
    <title>Email List - Thanks</title>
    <link rel="stylesheet" href="styles/main.css" type="text/css"/>
</head>
<body>
<div class="card">
    <h1 class="title">Thanks for joining our email list</h1>
    <p class="subtle">Here is the information that you entered:</p>

    <div class="info">
        <div class="row">
            <span class="key">Email:</span>
            <span class="val">${user.email}</span>
        </div>
        <div class="row">
            <span class="key">First Name:</span>
            <span class="val">${user.firstName}</span>
        </div>
        <div class="row">
            <span class="key">Last Name:</span>
            <span class="val">${user.lastName}</span>
        </div>
    </div>

    <p class="subtle">To enter another email address, click on the Back button in your browser or the Return button below.</p>

    <form action="emailList" method="get">
        <input type="hidden" name="action" value="join"/>
        <button type="submit" class="btn btn-return">Return</button>
    </form>
</div>

<%@ include file="include/footer.jsp" %>
</body>
</html>
