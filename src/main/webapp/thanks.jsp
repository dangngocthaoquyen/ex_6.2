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
            <div class="key">Email:</div>
            <div class="val">${user.email}</div>
        </div>
        <div class="row">
            <div class="key">First Name:</div>
            <div class="val">${user.firstName}</div>
        </div>
        <div class="row">
            <div class="key">Last Name:</div>
            <div class="val">${user.lastName}</div>
        </div>
    </div>

    <div class="section">
        <p class="subtle">To enter another email address, click on the Back button in your browser or the Return button below.</p>
        <div class="actions">
            <form action="emailList" method="get">
                <input type="hidden" name="action" value="join"/>
                <button type="submit" class="btn">Return</button>
            </form>
        </div>
    </div>
</div>

<%@ include file="includes/footer.jsp" %>
</body>
</html>
