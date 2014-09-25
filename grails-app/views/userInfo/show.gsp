
<%@ page import="texsearch.UserInfo" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'userInfo.label', default: 'UserInfo')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-userInfo" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-userInfo" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list userInfo">
			
				<g:if test="${userInfoInstance?.userName}">
				<li class="fieldcontain">
					<span id="userName-label" class="property-label"><g:message code="userInfo.userName.label" default="User Name" /></span>
					
						<span class="property-value" aria-labelledby="userName-label"><g:fieldValue bean="${userInfoInstance}" field="userName"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${userInfoInstance?.password}">
				<li class="fieldcontain">
					<span id="password-label" class="property-label"><g:message code="userInfo.password.label" default="Password" /></span>
					
						<span class="property-value" aria-labelledby="password-label"><g:fieldValue bean="${userInfoInstance}" field="password"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${userInfoInstance?.registerDate}">
				<li class="fieldcontain">
					<span id="registerDate-label" class="property-label"><g:message code="userInfo.registerDate.label" default="Register Date" /></span>
					
						<span class="property-value" aria-labelledby="registerDate-label"><g:formatDate date="${userInfoInstance?.registerDate}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${userInfoInstance?.lastLoginDate}">
				<li class="fieldcontain">
					<span id="lastLoginDate-label" class="property-label"><g:message code="userInfo.lastLoginDate.label" default="Last Login Date" /></span>
					
						<span class="property-value" aria-labelledby="lastLoginDate-label"><g:formatDate date="${userInfoInstance?.lastLoginDate}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${userInfoInstance?.nickName}">
				<li class="fieldcontain">
					<span id="nickName-label" class="property-label"><g:message code="userInfo.nickName.label" default="Nick Name" /></span>
					
						<span class="property-value" aria-labelledby="nickName-label"><g:fieldValue bean="${userInfoInstance}" field="nickName"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${userInfoInstance?.iconURL}">
				<li class="fieldcontain">
					<span id="iconURL-label" class="property-label"><g:message code="userInfo.iconURL.label" default="Icon URL" /></span>
					
						<span class="property-value" aria-labelledby="iconURL-label"><g:fieldValue bean="${userInfoInstance}" field="iconURL"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${userInfoInstance?.information}">
				<li class="fieldcontain">
					<span id="information-label" class="property-label"><g:message code="userInfo.information.label" default="Information" /></span>
					
						<span class="property-value" aria-labelledby="information-label"><g:fieldValue bean="${userInfoInstance}" field="information"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:userInfoInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${userInfoInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
