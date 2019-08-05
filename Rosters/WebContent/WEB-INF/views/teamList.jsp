<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ page import="com.caridadja.web.models.*" %>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Team</title>
</head>
<body>
<a href="/Rosters/NewTeam">New Team</a>
<table>
<tr><th>Team</th><th>Players</th><th>Action</th></tr>

<%for(int i = 0; i < Team.getTeams().size();i++){ %>

<tr>
<td><%= Team.getTeams().get(i).getTeamName() %></td>
<td><%= Team.getTeams().get(i).getPlayers().size() %></td>
<td><a href="/Rosters/teams?id=<%=i%>">Details</a> <a href="/Rosters/teams?id=<%=i%>&delete=true">Delete</a></td>
</tr>
<%} %>

</table>

</body>
</html>