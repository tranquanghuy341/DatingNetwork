<%@tag description="Overall Page template" pageEncoding="UTF-8"%>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@attribute name="header" fragment="true" %>
<%@attribute name="footer" fragment="true" %>
<%@attribute name="bodyClass" required="true"%>
<!DOCTYPE html>
<html>
<head>
	<jsp:invoke fragment="header"/>
	<t:header></t:header>
</head>

<body class="${bodyClass}">
    <div id="body">
      <jsp:doBody/>
    </div>
      <t:footer></t:footer>
      <jsp:invoke fragment="footer"/>
  </body>
</html>