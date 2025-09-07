<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!doctype html>
<html>
<head>
    <meta charset="utf-8">
    <title>Join Email List</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/styles/main.css?v=<%=System.currentTimeMillis()%>">
</head>
<body>
<div class="card">
    <h1 class="title">Join our email list</h1>

    <form class="form" action="${pageContext.request.contextPath}/emailList" method="post">
        <input type="hidden" name="action" value="add"/>

        <div class="row">
            <label class="label" for="firstName">First Name:</label>
            <input class="input" id="firstName" type="text" name="firstName" required>
        </div>

        <div class="row">
            <label class="label" for="lastName">Last Name:</label>
            <input class="input" id="lastName" type="text" name="lastName" required>
        </div>

        <div class="row">
            <label class="label" for="email">Email:</label>
            <input class="input" id="email" type="email" name="email" required>
        </div>

        <!-- === Heard about us === -->
        <div class="section">
            <h2 class="section-title">How did you hear about us?</h2>
            <div class="options">
                <label class="choice"><input type="radio" name="heardFrom" value="Search engine" checked><span>Search engine</span></label>
                <label class="choice"><input type="radio" name="heardFrom" value="Word of mouth"><span>Word of mouth</span></label>
                <label class="choice"><input type="radio" name="heardFrom" value="Social Media"><span>Social Media</span></label>
                <label class="choice"><input type="radio" name="heardFrom" value="Other" id="hfOther"><span>Other</span></label>
                <input class="input" type="text" name="heardOther" id="hfOtherText" placeholder="Please specify" style="display:none; max-width:380px;">
            </div>
        </div>

        <!-- === Opt-in === -->
        <div class="section">
            <h2 class="section-title">Would you like to receive announcements about new CDs and special offers?</h2>
            <label class="choice"><input type="checkbox" name="wantsUpdates" value="yes"><span>YES, I'd like that.</span></label>
        </div>

        <!-- 1 footer + 1 button thôi -->
        <div class="footer">&copy; Email List Application</div>
        <div class="actions">
            <button class="btn" type="submit">Join Now</button>
        </div>
    </form>
</div>

<!-- Script đặt ngoài form cho gọn -->
<script>
    (function(){
        const other = document.getElementById('hfOther');
        const text  = document.getElementById('hfOtherText');
        document.querySelectorAll('input[name="heardFrom"]').forEach(r => {
            r.addEventListener('change', () => {
                const show = other.checked;
                text.style.display = show ? '' : 'none';
                if (!show) text.value = '';
            });
        });
    })();
</script>
</body>
</html>