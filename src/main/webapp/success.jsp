<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="/struts-tags" prefix="s" %>
<html>
<body>
<h2>Success!</h2>

<s:iterator value="newPost" var="post">
    <s:property value="#post.body" />
</s:iterator>
</body>
</html>
