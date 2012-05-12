<%@ page import="ru.mfc22.helper.domain.Department" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="main">
		<title><g:message code="edit.department" default="Edit department" /></title>
	</head>
	<body>
		%{--<a href="#edit-department" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>--}%
		<div class="nav" role="navigation">
			<ul>
				%{--<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>--}%
				<li><g:link class="list" action="list"><g:message code="department.list" default="Department list" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="create.new.department" default="New department" /></g:link></li>
			</ul>
		</div>
		<div id="edit-department" class="content scaffold-edit" role="main">
			<h1><g:message code="edit.department" default="Edit department" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<g:hasErrors bean="${departmentInstance}">
			<ul class="errors" role="alert">
				<g:eachError bean="${departmentInstance}" var="error">
				<li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
				</g:eachError>
			</ul>
			</g:hasErrors>
			<g:form method="post" >
				<g:hiddenField name="id" value="${departmentInstance?.id}" />
				<g:hiddenField name="version" value="${departmentInstance?.version}" />
				<fieldset class="form">
					<g:render template="form"/>
				</fieldset>
				<fieldset class="buttons">
					<g:actionSubmit class="save" action="update" value="${message(code: 'update', default: 'Update')}" />
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'delete', default: 'Delete')}" formnovalidate="" onclick="return confirm('${message(code: 'button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
