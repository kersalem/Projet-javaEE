<%@ page contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<jsp:useBean id="content" class="java.lang.String" scope="request"/>

<html>
<head>
<title><%= application.getInitParameter("title")%></title>
</head>
<body>

<jsp:include page="<%= application.getInitParameter(\"entetedepage\")%>"/>

<div style="background-color:#A9F5F2">
<h1><%= application.getInitParameter("title")%></h1>
<blockquote>je suis le context-param 'title'</blockquote>
</div>

<a href="<%= application.getContextPath()%>/do/accueil">Accueil</a>
<a href="<%= application.getContextPath()%>/do/listeEtudiants">les étudiants</a>
<a href="<%= application.getContextPath()%>/do/consultationNotes">Consulter les notes</a>
<a href="<%= application.getContextPath()%>/do/consultationAbsences">Consulter les absences</a>

<jsp:include page="<%=content%>" />

<jsp:include page="<%= application.getInitParameter(\"pieddepage\")%>"/>

</body>
</html>
