<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!doctype html>
<html>
<head>
    <meta charset="utf-8">
    <title>Thanks</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/styles/main.css?v=<%=System.currentTimeMillis()%>">
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

        <!-- NEW: Heard from -->
        <div class="row">
            <div class="key">Heard from:</div>
            <div class="val">
      <span class="pill">
        ${heardFrom}
        <c:if test="${heardFrom eq 'Other' && not empty heardFromOther}">
            — ${heardFromOther}
        </c:if>
      </span>
            </div>
        </div>

        <!-- NEW: Updates -->
        <div class="row">
            <div class="key">Updates:</div>
            <div class="val">
      <span class="badge ${wantsUpdates ? 'badge--yes' : 'badge--no'}">
          ${wantsUpdates ? 'Yes' : 'No'}
      </span>
            </div>
        </div>
    </div>

    <div class="footer">&copy; Email List Application</div>

    <div class="actions" style="margin-top:18px">
        <form action="${pageContext.request.contextPath}/emailList" method="post">
            <input type="hidden" name="action" value="join">
            <button class="btn" type="submit">Return</button>
        </form>
    </div>

    <%--<%@ include file="/include/footer.jsp" %>--%>
    <%--</body>--%>
<%--</html>--%>