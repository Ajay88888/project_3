<%@page import="in.co.rays.project3.util.HTMLUtility"%>
<%@page import="java.util.List"%>
<%@page import="in.co.rays.project3.util.ServletUtility"%>
<%@page import="in.co.rays.project3.util.DataUtility"%>
<%@page import="in.co.rays.project3.controller.MarksheetCtl"%>
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

		<main>
		<form action="<%=ORSView.MARKSHEET_CTL%>" method="post">
		
		<br>

			<div class="row pt-3">
				<!-- Grid column -->
				<div class="col-md-4 mb-4"></div>
				<div class="col-md-4 mb-4">
					<div class="card">
						<div class="card-body">
							<%
							  long id=DataUtility.getLong(request.getParameter("id"));
							
							
								if (id >0) {
							%>
							<h3 class="text-center default-text text-primary">Update Marksheet</h3>
							<%
								} else {
							%>
							<h3 class="text-center default-text text-primary">Add Marksheet</h3>
							<%
								}
							%>
							
							<!--Body-->
							<div>
								<%
									List l = (List) request.getAttribute("studentList");
								%>
								<jsp:useBean id="dto"
									class="in.co.rays.project3.dto.MarksheetDTO" scope="request"></jsp:useBean>
								<H4 align="center">
									<%
										if (!ServletUtility.getSuccessMessage(request).equals("")) {
									%>
									<div class="alert alert-success alert-dismissible" align="center">
										<button type="button" class="close" data-dismiss="alert">&times;</button>
										<%=ServletUtility.getSuccessMessage(request)%>
									</div>
									<%
										}
									%>
								</H4>

								<H4 align="center">
									<%
										if (!ServletUtility.getErrorMessage(request).equals("")) {
									%>
									<div class="alert alert-danger alert-dismissible" align="center">
										<button type="button" class="close" data-dismiss="alert">&times;</button>
										<%=ServletUtility.getErrorMessage(request)%>
									</div>
									<%
										}
									%>

								</H4>

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
      <label><b>Roll No</b></label><span style="color: red;">*</span> &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;  
        <div class="input-group-prepend">
          <div class="input-group-text"><i class="fa fa-list-ol grey-text"></i> </div>
        </div>
       <input type="text" name="rollno" class="form-control"
									placeholder="Enter RollNo"
									value="<%=DataUtility.getStringData(dto.getRollno())%>">
      </div>
    </div>
	&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; <font color="red" class="pl-sm-5"> <%=ServletUtility.getErrorMessage("rollno", request)%></font></br>						
								

								
		<div class="col-sm-12">
      <div class="input-group">
      <label><b>Subject Name</b></label>
      <span style="color: red;">*</span> &nbsp; &nbsp;&nbsp;  
        <div class="input-group-prepend">
          <div class="input-group-text"><i class="fa fa-user grey-text"></i> </div>
      </div>
        <%=HTMLUtility.getList("studentid", String.valueOf(dto.getStudentid()), l)%>
									</div> 
      
    </div>	
	&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; <font color="red" class="pl-sm-5"> <%=ServletUtility.getErrorMessage("studentid", request)%></font></br>								

								
								
	<div class="col-sm-12">
      <div class="input-group">
      <label><b>Physics</b></label>
      <span style="color: red;">*</span> &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        <div class="input-group-prepend">
          <div class="input-group-text"><i class="fa fa-equals grey-text"></i> </div>
        </div>
        <input type="text" class="form-control" name="physics"
									id="defaultForm-email"
									placeholder="Enter Physics"
									value="<%=DataUtility.getStringData(dto.getPhysics()).equals("0") ? ""
					: DataUtility.getStringData(dto.getPhysics())%>">
      </div>
    </div>	
	&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; <font color="red" class="pl-sm-5"> <%=ServletUtility.getErrorMessage("physics", request)%></font></br>								
								

								
		<div class="col-sm-12">
      <div class="input-group">
      <label><b>Chemistry</b></label>
      <span style="color: red;">*</span> &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; 
        <div class="input-group-prepend">
          <div class="input-group-text"><i class="fa fa-equals grey-text"></i> </div>
        </div>
        <input type="text"  class="form-control"
									name="chemistry" id="defaultForm-email"
									placeholder="Enter chemistry"
									value="<%=DataUtility.getStringData(dto.getChemistry()).equals("0") ? ""
					: DataUtility.getStringData(dto.getChemistry())%>">
      </div>
    </div>
	&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; <font color="red" class="pl-sm-5"> <%=ServletUtility.getErrorMessage("chemistry", request)%></font></br>								
									
								
								<div class="col-sm-12">
      <div class="input-group">
      <label><b>Maths</b></label>
      <span style="color: red;">*</span> &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 
        <div class="input-group-prepend">
          <div class="input-group-text"><i class="fa fa-equals grey-text"></i> </div>
        </div>
        <input type="text" name="math" class="form-control"
									placeholder="Enter Maths"
									value="<%=DataUtility.getStringData(dto.getMaths()).equals("0") ? ""
					: DataUtility.getStringData(dto.getMaths())%>">
      </div>
    </div>
	&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; <font color="red" class="pl-sm-5"> <%=ServletUtility.getErrorMessage("math", request)%></font></br>								
									
								
							</div>
							</br>
							<%
							if (id >0) {
							%>

							<div class="text-center">

								<input type="submit" name="operation"
									class="btn btn-success btn-md" style="font-size: 17px"
									value="<%=MarksheetCtl.OP_UPDATE%>"> 
									<input type="submit" name="operation" class="btn btn-warning btn-md"
									style="font-size: 17px" value="<%=MarksheetCtl.OP_CANCEL%>">

							</div>
							<%
								} else {
							%>
							<div class="text-center">

								<input type="submit" name="operation"
									class="btn btn-success btn-md" style="font-size: 17px"
									value="<%=MarksheetCtl.OP_SAVE%>"> <input type="submit"
									name="operation" class="btn btn-warning btn-md"
									style="font-size: 17px" value="<%=MarksheetCtl.OP_RESET%>">
							</div>

						</div>
						<%
							}
						%>
					</div>
				</div>
							
							

						</div>
					</div>

				</div>
				<div class="col-md-4 mb-4"></div>
			</div>



		</form>
		</main>


	</div>
	
	

<%@include file="Footer.jsp"%>



</body>
</html>