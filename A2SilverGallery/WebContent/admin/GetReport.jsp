<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@page import = "model.report" %>
<%@page import = "service.IreportServiceImpl" %>
<%@page import = "service.IreportService" %>
<%@page import = "java.util.ArrayList" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<meta charset="ISO-8859-1">
  	<meta charset="utf-8">
  	<meta http-equiv="X-UA-Compatible" content="IE=edge">
  	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  	
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	
	<title>Admin | Update Report</title>
 	<!-- Custom fonts for this template-->
  	<link href="${pageContext.request.contextPath}/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">

  	<!-- Page level plugin CSS-->
  	<link href="${pageContext.request.contextPath}/vendor/datatables/dataTables.bootstrap4.css" rel="stylesheet">

  	<!-- Custom styles for this template-->
  	<link href="${pageContext.request.contextPath}/css/sb-admin.css" rel="stylesheet">

</head>

<body id="page-top">

	<%
		
		if ((request.getSession(false).getAttribute("Admin") == null)) {
	%>
	<jsp:forward page="/admin/login.jsp"></jsp:forward>
	<%
		}
	%> 
	

	<!-- Admin Header -->
	

	
	<jsp:include page="adminHeader.jsp"></jsp:include>
	
	<div id = "wrapper">
	<jsp:include page="adminSideMenu.jsp"></jsp:include>
	
	<%
		report report =  (report) request.getAttribute("report");
	%>
	
		<div style = "padding : 20px">
		<form  method = "POST" action= "UpdateReportServlet" class = "form-group">

			<table>
					<tr>
						<td>Attendance ID</td>
						<td><input type = "text" name = "AttendanceID" dissabled = "dissabled" value = <%=report.getreportid() %> class = "form-control" style = "width : 250%"></td>
					</tr>
			
					<tr>
						<td>Staff Name</td>
						<td><input type = "text" name = "staffName" value = <%=report.getSname() %> class = "form-control" style = "width : 250%"></td>
					</tr>
			
					
					<tr>
						<td>Total Attendance</td>
						<td><input type = "text" name = "totalattendance" value = <%=report.getTattendance() %> class = "form-control" style = "width : 250%"></td>
					</tr>
					
					<tr>
						<td>Holidays</td>
						<td><input type = "text" name = "holidays" value = <%=report.getHoliday() %> class = "form-control" style = "width : 250%"></td>
					</tr>
					
					<tr>
						<td>Status</td>
						<td><input type = "text" name = "status" value = <%=report.getStatus() %> class = "form-control" style = "width : 250%"></td>
					</tr>
					
					<tr>
							<td colspan="2"><input type="hidden" name="reportID" value="<%=report.getreportid()%>" /> 
							<td colspan="2"><input type="submit" value="Update Report" class="btn btn-success" /> </td>
					</tr>

													
			</table>

		</form>
		</div>
		</div>
      
  <!-- Bootstrap core JavaScript-->
  <script src="${pageContext.request.contextPath}/vendor/jquery/jquery.min.js"></script>
  <script src="../vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

  <!-- Core plugin JavaScript-->
  <script src="${pageContext.request.contextPath}/vendor/jquery-easing/jquery.easing.min.js"></script>

  <!-- Page level plugin JavaScript-->
  <script src="${pageContext.request.contextPath}/vendor/chart.js/Chart.min.js"></script>
  <script src="${pageContext.request.contextPath}/vendor/datatables/jquery.dataTables.js"></script>
  <script src="${pageContext.request.contextPath}/vendor/datatables/dataTables.bootstrap4.js"></script>

  <!-- Custom scripts for all pages-->
  <script src="${pageContext.request.contextPath}/js/sb-admin.min.js"></script>

  <!-- Demo scripts for this page-->
  <script src="${pageContext.request.contextPath}/js/demo/datatables-demo.js"></script>
  <script src="${pageContext.request.contextPath}/js/demo/chart-area-demo.js"></script>

</body>
</html>