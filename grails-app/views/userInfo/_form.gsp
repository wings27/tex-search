<%@ page import="texsearch.UserInfo" %>



<div class="fieldcontain ${hasErrors(bean: userInfoInstance, field: 'userName', 'error')} required">
	<label for="userName">
		<g:message code="userInfo.userName.label" default="User Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="userName" maxlength="15" required="" value="${userInfoInstance?.userName}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: userInfoInstance, field: 'password', 'error')} required">
	<label for="password">
		<g:message code="userInfo.password.label" default="Password" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="password" required="" value="${userInfoInstance?.password}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: userInfoInstance, field: 'registerDate', 'error')} required">
	<label for="registerDate">
		<g:message code="userInfo.registerDate.label" default="Register Date" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="registerDate" precision="day"  value="${userInfoInstance?.registerDate}"  />

</div>

<div class="fieldcontain ${hasErrors(bean: userInfoInstance, field: 'lastLoginDate', 'error')} required">
	<label for="lastLoginDate">
		<g:message code="userInfo.lastLoginDate.label" default="Last Login Date" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="lastLoginDate" precision="day"  value="${userInfoInstance?.lastLoginDate}"  />

</div>

<div class="fieldcontain ${hasErrors(bean: userInfoInstance, field: 'nickName', 'error')} ">
	<label for="nickName">
		<g:message code="userInfo.nickName.label" default="Nick Name" />
		
	</label>
	<g:textField name="nickName" maxlength="15" value="${userInfoInstance?.nickName}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: userInfoInstance, field: 'iconURL', 'error')} ">
	<label for="iconURL">
		<g:message code="userInfo.iconURL.label" default="Icon URL" />
		
	</label>
	<g:field type="url" name="iconURL" value="${userInfoInstance?.iconURL}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: userInfoInstance, field: 'information', 'error')} ">
	<label for="information">
		<g:message code="userInfo.information.label" default="Information" />
		
	</label>
	<g:textArea name="information" cols="40" rows="5" maxlength="255" value="${userInfoInstance?.information}"/>

</div>

