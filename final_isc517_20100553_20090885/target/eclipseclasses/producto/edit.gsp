<%@ page import="edu.pucmm.pwa.proyectofinal.domains.Producto" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'producto.label', default: 'Producto')}" />
		<title><g:message code="default.edit.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#edit-producto" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="edit-producto" class="content scaffold-edit" role="main">
			<h1><g:message code="default.edit.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<g:hasErrors bean="${productoInstance}">
			<ul class="errors" role="alert">
				<g:eachError bean="${productoInstance}" var="error">
				<li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
				</g:eachError>
			</ul>
			</g:hasErrors>
			<g:uploadForm url="[resource:productoInstance, action:'update']" method="PUT" >
				<g:hiddenField name="version" value="${productoInstance?.version}" />
				<fieldset class="form">
					<g:render template="form"/>

                    %{--file upload button--}%
                    <div class="fieldcontain">
                        <label for="imagenProducto">
                            <g:message code="producto.imagenes.label" default="Imagen" />
                        </label>
                        <input type="file" name="imagenProducto" />
                    </div>
				</fieldset>
				<fieldset class="buttons">
					<input type="submit" value="Update" class="save" />
					%{--<g:actionSubmit class="save" action="update" value="${message(code: 'default.button.update.label', default: 'Update')}" />--}%
				</fieldset>
			</g:uploadForm>
		</div>
	</body>
</html>
