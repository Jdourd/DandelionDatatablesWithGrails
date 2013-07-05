<%@ taglib prefix="datatables" uri="http://github.com/dandelion/datatables"%>
<%@ page import="com.jdourd.datatables.grails.Animal" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'animal.label', default: 'Animal')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
		<script src="http://code.jquery.com/jquery-1.10.2.min.js"></script>
	</head>
	<body>
		<a href="#list-animal" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-animal" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<datatables:table id="animalTable" data="${animalInstanceList}" row="animal" cdn="true">
				<datatables:column title="Name" sortable="true">
					<g:if test="${animal}">
						<g:link action="show" id="${animal.id}">
							${animal.name}
						</g:link>
					</g:if>
				</datatables:column>
				<datatables:column title="Species" property="species" sortable="true" />
				<datatables:column title="BirthDate" property="birthDate" sortable="true" />
			</datatables:table>
			<div class="pagination">
				<g:paginate total="${animalInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
