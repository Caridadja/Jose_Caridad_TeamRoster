<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ page import="com.caridadja.web.models.*"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Players</title>
</head>
<body>
<% Team team = Team.getTeams().get(Integer.parseInt(request.getParameter("id"))); %>
<p><%=team.getTeamName() %></p>
<p><a href="/Rosters/Players?id=<%=request.getParameter("id") %>">New Player</a></p>

<table>
<tr><th>First Name</th><th>Last Name</th><th>Age</th><th>Actions</th></tr>
<%for(int i = 0; i < team.getPlayers().size(); i++ ){ %>
<tr><td><%= team.getPlayers().get(i).getName() %></td>
<td><%=team.getPlayers().get(i).getLastName() %></td>
<td><%=team.getPlayers().get(i).getAge() %></td>
<td><a href="/Rosters/Players?team_id=<%= request.getParameter("id")%>&player_id=<%=i%>&delete=true">Delete</a></td>
</tr>
<%} %>
</table>
</body>
</html>