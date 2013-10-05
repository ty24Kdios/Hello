<!DOCTYPE unspecified PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@page pageEncoding="UTF-8" contentType="text/html; charset=UTF-8"%>
<%@page import="com.ckeditor.CKEditorConfig"%>
<%@page import="com.ckeditor.EventHandler"%>
<%@ taglib uri="http://ckeditor.com" prefix="ckeditor" %>
<%@ taglib uri="http://cksource.com/ckfinder" prefix="ckfinder" %>
<html>
	<body>
		<form>
			<p>
				<label for="editor1">Editor 1:</label>
				<textarea cols="80" id="editor1" name="editor1" rows="10"></textarea>
			</p>
			<p>
				<input type="submit" value="Submit" />
			</p>
		</form>
		<% 
	CKEditorConfig settings = new CKEditorConfig();
//	settings.addConfigValue("toolbar","[[ 'Source', '-', 'Bold', 'Italic' ]]");
%>
<ckfinder:setupCKEditor basePath="ckfinder/" editor="editor1" />
<ckeditor:replace replace="editor1" basePath="ckeditor/" />
	</body>	
</html>
