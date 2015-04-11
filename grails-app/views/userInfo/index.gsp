
<%@ page import="org.queuestack.texsearch.UserInfo" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'userInfo.label', default: 'UserInfo')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-userInfo" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="userInfo.create.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-userInfo" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="userName" title="${message(code: 'userInfo.userName.label', default: 'User Name')}" />
					
						<g:sortableColumn property="password" title="${message(code: 'userInfo.password.label', default: 'Password')}" />
					
						<g:sortableColumn property="email" title="${message(code: 'userInfo.email.label', default: 'Email')}" />
					
						<g:sortableColumn property="gender" title="${message(code: 'userInfo.gender.label', default: 'Gender')}" />
					
						<g:sortableColumn property="registerDate" title="${message(code: 'userInfo.registerDate.label', default: 'Register Date')}" />
					
						<g:sortableColumn property="lastLoginDate" title="${message(code: 'userInfo.lastLoginDate.label', default: 'Last Login Date')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${userInfoInstanceList}" status="i" var="userInfoInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${userInfoInstance.id}">${fieldValue(bean: userInfoInstance, field: "userName")}</g:link></td>
					
						<td>${fieldValue(bean: userInfoInstance, field: "password")}</td>
					
						<td>${fieldValue(bean: userInfoInstance, field: "email")}</td>
					
						<td>${fieldValue(bean: userInfoInstance, field: "gender")}</td>
					
						<td><g:formatDate date="${userInfoInstance.registerDate}" /></td>
					
						<td><g:formatDate date="${userInfoInstance.lastLoginDate}" /></td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${userInfoInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
