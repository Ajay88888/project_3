<%@page import="in.co.rays.project3.util.ServletUtility"%>
<%@page import="in.co.rays.project3.util.DataUtility"%>
<%@page import="in.co.rays.project3.controller.RoleCtl"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>

<style>
.p1 
{
	background-image: url('<%=ORSView.APP_CONTEXT%>/img/pro3.jpg');
	background-size: 100%;
}

.break
{
  	margin: 10px;        
}
</style>
</head>
<body class="p1">


<div class="header">
		<%@include file="Header.jsp"%>
	</div>
	<div>
		<jsp:useBean id="dto" class="in.co.rays.project3.dto.RoleDTO"
			scope="request"></jsp:useBean>
		<main>
		<form action="<%=ORSView.ROLE_CTL%>" method="post">
		
		<br><br>

			<div class="row pt-3">
				<div class="col-md-4"></div>
				<!-- Grid column -->
				<div class="col-md-4 ">
					<div class="card">
						<div class="card-body">
						
						
						<%  long id=DataUtility.getLong(request.getParameter("id"));
						
						
						if (id >0) { %>

							<h3 class="text-center text-primary ">Update Role</h3><%}else{ %>
							<h3 class="text-center text-primary ">Add Role</h3><%} %>
							<!--Body-->
							<div>


								<H6 align="center">
									<%
										if (!ServletUtility.getSuccessMessage(request).equals("")) {
									%>
									<div class="alert alert-success alert-dismissible">
										<button type="button" class="close" data-dismiss="alert">&times;</button>
										<%=ServletUtility.getSuccessMessage(request)%>
									</div>
									<%
										}
									%>
								</H6>

								<H6 align="center">
									<%
										if (!ServletUtility.getErrorMessage(request).equals("")) {
									%>
									<div class="alert alert-danger alert-dismissible">
										<button type="button" class="close" data-dismiss="alert">&times;</button>
											<%=ServletUtility.getErrorMessage(request)%>
									</div>
									<%
										}
									%>

								</H6>

								<input type="hidden" name="id" value="<%=dto.getId()%>">
								<input type="hidden" name="createdBy"
									value="<%=dto.getCreatedby()%>"> <input type="hidden"
									name="modifiedBy" value="<%=dto.getModifiedby()%>"> <input
									type="hidden" name="createdDatetime"
									value="<%=DataUtility.getTimestamp(dto.getCreateddatetime())%>">
								<input type="hidden" name="modifiedDatetime"
									value="<%=DataUtility.getTimestamp(dto.getModifieddatetime())%>">
							</div>
							<div class="md-form">
							
		<div class="col-sm-12">
      <div class="input-group">
      <label><b>Name</b></label><span style="color:red;">*</span> &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;&nbsp;
        <div class="input-group-prepend">
          <div class="input-group-text"><i class="fa fa-user grey-text" style="font-size: 1rem;"></i> </div>
        </div>
       <input type="text"
									name="name" class="form-control"
									style="border: 2px solid #8080803b;" placeholder="Enter Name"
									value="<%=DataUtility.getStringData(dto.getName())%>">
      </div>
    </div>
	&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; <font color="red" class="pl-sm-5"> <%=ServletUtility.getErrorMessage("name", request)%></font></br>						
							
								
								
									<div class="col-sm-12">
      <div class="input-group">
      <label><b>Description</b></label><span style="color:red;">*</span> &nbsp;&nbsp;&nbsp;
        <div class="input-group-prepend">
          <div class="input-group-text"><i class="fa fa-list grey-text"></i> </div>
        </div>
       <textarea name="desc" class="form-control" placeholder="Enter description"
									rows="5" cols="5"><%=DataUtility.getStringData(dto.getDescription())%></textarea>
      </div>
    </div>
	&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; <font color="red" class="pl-sm-5"> <%=ServletUtility.getErrorMessage("desc", request)%></font></br>							
								
								
								

							</div>
							</br> </br>
							<%if(id>0){ %>
							<div class="text-center">

								<input type="submit" name="operation"
									class="btn btn-success btn-md" style="font-size: 17px"
									value="<%=RoleCtl.OP_UPDATE%>"> <input type="submit"
									name="operation"
									class="btn btn-warning btn-md" style="font-size: 17px"
									value="<%=RoleCtl.OP_CANCEL%>">
							</div><%}else{ %>
							<div class="text-center">

								<input type="submit" name="operation"
									class="btn btn-success btn-md" style="font-size: 17px"
									value="<%=RoleCtl.OP_SAVE%>"> <input type="submit"
									name="operation"
									class="btn btn-warning btn-md" style="font-size: 17px"
									value="<%=RoleCtl.OP_RESET%>">
							</div>
							<%} %>

						</div>
					</div>
				</div>
					<div class="col-md-4 mb-4"></div>
					
					
					
					<br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>

		</form>
		</main>


	</div>

</body>
<%@include file="Footer.jsp"%>


</body>
</html>