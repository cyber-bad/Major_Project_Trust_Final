<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="EducationLoanPage.aspx.cs" Inherits="doc_ver.EducationLoanPage" %>

<!DOCTYPE html>
<html lang="en">

<head>
	 <link rel="icon" href="../static/document.png" type="Image/icon">
  <meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">

  <title>Education Loan Documents</title>

	<link rel="icon" href="../static/document.png" type="Image/icon">

  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>


  <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
  <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js" rel="stylesheet">
  
  <script src="https://code.jquery.com/jquery-1.6.2.min.js" integrity="sha256-0W0HoDU0BfzslffvxQomIbx0Jfml6IlQeDlvsNxGDE8=" crossorigin="anonymous" rel="stylesheet"></script>

  <script src="https://code.jquery.com/jquery-3.5.1.min.js" integrity="sha256-9/aliU8dGd2tb6OSsuzixeV4y/faTqgFtohetphbbj0=" crossorigin="anonymous"></script>

  <script src="https://code.jquery.com/jquery-1.12.4.min.js" integrity="sha256-ZosEbRLbNQzLpnKIkEdrPv7lOy9C27hHQ+Xp8a4MxAQ=" crossorigin="anonymous"></script>
	 
	<link
	 href="http://ajax.googleapis.com/ajax/libs/jqueryui/1.8/themes/base/jquery-ui.css"
	 rel="stylesheet" type="text/css" /> 
	<script
	 src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.2/jquery.js"
	 type="text/javascript"></script>
	<script
	 src="http://ajax.googleapis.com/ajax/libs/jqueryui/1.8/jquery-ui.min.js"
	 type="text/javascript"></script>




</head>

<body>
	



	<br>

	<nav aria-label="breadcrumb">
	  <ol class="breadcrumb">
	    <li class="breadcrumb-item"><a href="dashboard.aspx">Home</a></li>
	    <li class="breadcrumb-item active" aria-current="page">Education Loan Documents Verification</li>
	  </ol>
	</nav>
<br>

<center>
	<div class="container">

		<p>
            Selected Pan Number: <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label> <asp:Label ID="OverallStatus" runat="server"></asp:Label>
        </p>

	</div>

<br>

	<form id="form2" runat="server"> 
					<div class="container">
 
            
					<table class="table table-hover">
							
						<tbody>
							<tr>
								<td>
									<div class="form-group">                          
										<div class="col-xs-6">
											<label><h5> Applicant Name</h5></label>
											<asp:TextBox ID="name" runat="server" type="text" class="form-control"></asp:TextBox>
										</div>
									</div>
								</td>
							</tr>

							<tr>
								<td>
									<div class="form-group">                          
										<div class="col-xs-6">
											<label><h5> Father/Spous Name </h5></label> 
											<asp:TextBox ID="fatherName" runat="server" type="text" class="form-control"></asp:TextBox>
										</div>
									</div>
								</td>
							</tr>

							<tr>
								<td>
									<div class="form-group">                          
										<div class="col-xs-6">
											<label><h5> Mother Name </h5></label>  
											<asp:TextBox ID="motherName" runat="server" type="text" class="form-control"></asp:TextBox>
										</div>
									</div>
								</td>
							</tr>
						</tbody>
					</table>

					<table class="table table-hover">
							
						<tbody>
							<tr>
								<td>
									<label><h5> Date of Birth</h5></label> 
									<asp:TextBox ID="dob" runat="server" type="text" class="form-control"></asp:TextBox>
								</td>

								<td>
									<label><h5> Gender</h5></label> 
									<asp:TextBox ID="gender" runat="server" type="text" class="form-control"></asp:TextBox>
								</td>

								<td>
									<label><h5> Marital Status </h5></label> 
									<asp:TextBox ID="shadi" runat="server" type="text" class="form-control"></asp:TextBox>
								</td>
							</tr>

							<tr>
								<td>
									<label><h5> Citizenship</h5></label> 
									<asp:TextBox ID="citizenship" runat="server" type="text" class="form-control"></asp:TextBox>
								</td>

								<td>
									<label><h5> Resident</h5></label> 
									<asp:TextBox ID="resident" runat="server" type="text" class="form-control"></asp:TextBox>
								</td>

								<td>
									<label><h5> Occupation Type </h5></label> 
									<asp:TextBox ID="occupation" runat="server" type="text" class="form-control"></asp:TextBox>
								</td>
							</tr>
      
						</tbody>
					</table>

					<table class="table table-hover">							
						<tbody>
							<tr>
								<td>
									<label><h5> Mobile No. </h5></label> 
									<asp:TextBox ID="Number" runat="server" type="text" class="form-control"></asp:TextBox>
								</td>
							
								<td>
									<label><h5> Email ID </h5></label> 
									<asp:TextBox ID="email" runat="server" type="email" class="form-control"></asp:TextBox>
								</td>

								<td>
									<label><h5> PAN NUMBER </h5></label> 
									<asp:TextBox ID="PanNo" runat="server" type="text" class="form-control"></asp:TextBox>
								</td>
							
							</tr>
						</tbody>
					</table>



					<table class="table table-hover">							
						<tbody>
							<tr>
								<td>
									<label><h5> Photo </h5> <br /> <asp:TextBox ID="PhotoStatusLabel" runat="server"></asp:TextBox></label>
										<asp:Image ID="Photo" runat="server" class="img-rounded" data-toggle="modal" data-target="#PhotoModal" alt="Cinque Terre" Width="300" />
										
											<div class="modal fade" id="PhotoModal">
												<div class="modal-dialog modal-lg">
													<center>
														<asp:Image ID="Photo_1" runat="server" class="img-rounded" alt="Cinque Terre" Height="500" />
														<br /> <br />
														<button type="button" class="btn btn-danger" data-dismiss="modal">Close</button>
													</center>
												</div>
											</div>	

											<br>

											<div class="col-lg">											
												<table>	
												<TR>
													<TD>	
													<div class="dropdown">

														<select id="PhotoDropdown" class="btn btn-outline-danger">
															<option value="Not Verified" selected>Not Verified</option>
															<option value="Info. Mismatch">Info. Mismatch</option>
															<option value="Blured Image">Blured Image</option>
															<option value="Image Not Found">Image Not Found</option>
															<option value="Other">Other</option>
														</select>
													</div>

													<asp:TextBox ID="PhotoNotVerified" placeholder="mention if 'Other'" class="form-control" runat="server" AutoPostBack="True" ></asp:TextBox>
														</TD>
														<TD>
													<asp:Button ID="PhotoVerified" class="btn btn-outline-success" runat="server" Text="Verified"></asp:Button>									
														</TD>													
													</TR>

													<script>
                                                        jQuery(function () {
                                                            $('#PhotoVerified').click(function (e) {
                                                                e.preventDefault();
                                                                var name = "Verified";
                                                                $("#PhotoStatusLabel").val(name);
                                                            });
                                                        });
													</script>

													<script type="text/javascript">
                                                        $(document).ready(function () {
                                                            $('#PhotoNotVerified').keyup(function () {
                                                                $('#PhotoStatusLabel').val($(this).val());
                                                            });
                                                        });
													</script>

													<script>
                                                        $('#PhotoDropdown').change(function () {
                                                            var qty = $('#PhotoDropdown').val();
                                                            $("#PhotoStatusLabel").val(qty);
                                                        });
													</script>
													</table>
											</div>										
								</td>
							
								<td>
									<br />
									<br />
									<br />
									<br />
									<label><h5> Signature </h5> <br /> <asp:TextBox ID="SignStatusLabel" runat="server"></asp:TextBox></label>


										<asp:Image ID="Sign" runat="server" class="img-rounded" data-toggle="modal" data-target="#SignModal" alt="Cinque Terre" Width="300" />
										
											 <div class="modal fade" id="SignModal">
												<div class="modal-dialog modal-lg">
													<center>
														<br /> <br />
														<asp:Image ID="Sign_1" runat="server" class="img-rounded" alt="Cinque Terre" Height="300" />
														<br /> <br />
														<button type="button" class="btn btn-danger" data-dismiss="modal">Close</button>
													</center>
												</div>
											</div>	

									<br />
									<br />
											<br>

											<div class="col-lg">											
												<table>	
												<TR>
													<TD>
													<div class="dropdown">

														<select id="SignDropDown" class="btn btn-outline-danger">
															<option value="Not Verified" selected>Not Verified</option>
															<option value="Info. Mismatch">Info. Mismatch</option>
															<option value="Blured Image">Blured Image</option>
															<option value="Image Not Found">Image Not Found</option>
															<option value="Other">Other</option>
														</select>
													</div>

													<asp:TextBox ID="SignNotVerify" placeholder="mention if 'Other'" class="form-control" runat="server"></asp:TextBox>
														</TD>
														<TD>
													<asp:Button ID="SignVerify" class="btn btn-outline-success" runat="server" Text="Verified"></asp:Button>									
														</TD>													

													</TR>

													<script>
                                                        jQuery(function () {
                                                            $('#SignVerify').click(function (e) {
                                                                e.preventDefault();
                                                                var name = "Verified";
                                                                $("#SignStatusLabel").val(name);
                                                            });
                                                        });
													</script>

													<script type="text/javascript">
                                                        $(document).ready(function () {
                                                            $('#SignNotVerify').keyup(function () {
                                                                $('#SignStatusLabel').val($(this).val());
                                                            });
                                                        });
													</script>

													<script>
                                                        $('#SignDropDown').change(function () {
                                                            var qty = $('#SignDropDown').val();
                                                            $("#SignStatusLabel").val(qty);
                                                        });
													</script>

													</table>
											</div>							
								</td>
							</tr>
						</tbody>
					</table>
	
					</div>
											   			
						
						<div class="container">
  							
                            <h3 style="text-align:center">Client Documents</h3>

							<table class="table table-hover">
    							<thead>
      								<tr>
        								<th>KYC Documents Verified <img src="../static/gtick.jpg " width="40"> </th>
        								
										          							
      								</tr>
    							</thead>
    						</table>
  							





							<asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>

							<asp:UpdatePanel ID="IncomeDocPanel" runat="server"> <ContentTemplate> 
							<nav class="navbar navbar-light" style="background-color: #e3f2fd;">
  								FINANCIAL PROOF
							</nav>

  							<table class="table table-hover" align="CENTER">
    							<thead>
      								<tr>
        								<th>Document Name</th>
        								<th>Document</th>
										<th>Description</th>
										          							
      								</tr>
    							</thead>

    							<tbody>
					      			<tr>
									

							        	<td> 
											<br><br><br><br>
											<strong>
											<asp:Label ID="IncomeDocName" runat="server"></asp:Label>
											</strong>
											<br />

											<asp:TextBox ID="IncomeDocStatusLabel" Text="Status" runat="server"></asp:TextBox>
							        	</td>

							        	<td> <asp:Image ID="IncomeDoc" runat="server" class="img-rounded" data-toggle="modal" data-target="#IncomeDocModal" alt="Cinque Terre" Width="300" />
											 <div class="modal fade" id="IncomeDocModal">
												<div class="modal-dialog modal-lg">
													<center>
														<asp:Image ID="IncomeDoc_1" runat="server" class="img-rounded" alt="Cinque Terre" Height="500" />
														<br /> <br />
														<button type="button" class="btn btn-danger" data-dismiss="modal">Close</button>
													</center>
												</div>
											</div>

											<br>
											<div class="col-lg">											
												<table>	
												<TR>
													<TD>

														<asp:DropDownList ID="IncomeDropDown" class="btn btn-outline-danger" runat="server" AutoPostBack="True" OnSelectedIndexChanged="IncomeDropDown_SelectedIndexChanged">
															<asp:ListItem >Not Verified</asp:ListItem>
															<asp:ListItem>Info. Mismatch</asp:ListItem>
															<asp:ListItem>Blured Image</asp:ListItem>
															<asp:ListItem>Image Not Found</asp:ListItem>
															<asp:ListItem>Other</asp:ListItem>
														</asp:DropDownList>
											
													
													<asp:TextBox ID="IncomeNotVerify" placeholder="mention if 'Other'" class="form-control" runat="server" AutoPostBack="true" OnTextChanged="IncomeNotVerify_TextChanged"></asp:TextBox>
														</TD>
														<TD>
													<asp:Button ID="IncomeVerify" class="btn btn-outline-success" runat="server" Text="Verified" OnClick="IncomeVerify_Click"></asp:Button>									
														</TD>
													</TR>

													</table>
											</div>
											
											
										</td>
							        	<td>
											<label> Document Number </label> 
											<asp:TextBox ID="IncomeNum" runat="server" type="text" class="form-control"></asp:TextBox>
											<br />
											<label> Issuing Date </label> 
											<asp:TextBox ID="IncomeDate" runat="server" type="text" class="form-control"></asp:TextBox>
											<br />
											<label> Issuing Authority </label> 
											<asp:TextBox ID="IncomeAuthority" runat="server" type="text" class="form-control"></asp:TextBox>
											<br />
							        	</td>

										  
							      	</tr>
					    		</tbody>
					  		</table>
								</ContentTemplate> </asp:UpdatePanel>

					  		<hr>



							<asp:UpdatePanel ID="UpdatePanel2" runat="server"> <ContentTemplate> 
					  		<nav class="navbar navbar-light" style="background-color: #e3f2fd;">
  								ADMISSION LETTER
							</nav>

  							<table class="table table-hover" align="CENTER">
    							<thead>
      								<tr>
        								<th>Document Name</th>
        								<th>Document</th>
										<th>Description</th>
										          							
      								</tr>
    							</thead>

    							<tbody>


					      			<tr>
							        	<td> 
											<br><br><br><br>
											<strong>
											<asp:Label ID="AdmissionDocName" runat="server"></asp:Label>
											</strong>
											<br />
											<asp:TextBox ID="AdmissionpDocStatusLabel" runat="server"></asp:TextBox>
							        	</td>

							        	<td> <asp:Image ID="AdmissionDoc" runat="server" class="img-rounded" data-toggle="modal" data-target="#CorpModal" alt="Cinque Terre" Width="300" />
											 <div class="modal fade" id="CorpModal">
												<div class="modal-dialog modal-lg">
													<center>
														<asp:Image ID="AdmissionDoc_1" runat="server" class="img-rounded" alt="Cinque Terre" Height="500" />
														<br /> <br />
														<button type="button" class="btn btn-danger" data-dismiss="modal">Close</button>
													</center>
												</div>
											</div>

											<br>
											<div class="col-lg">											
												<table>	
												<TR>
													<TD>
														<asp:DropDownList ID="AdmissionpDropDown" class="btn btn-outline-danger" runat="server" AutoPostBack="True" OnSelectedIndexChanged="AdmissionpDropDown_SelectedIndexChanged" >
															<asp:ListItem >Not Verified</asp:ListItem>
															<asp:ListItem>Info. Mismatch</asp:ListItem>
															<asp:ListItem>Blured Image</asp:ListItem>
															<asp:ListItem>Image Not Found</asp:ListItem>
															<asp:ListItem>Other</asp:ListItem>
														</asp:DropDownList>


													<asp:TextBox ID="AdmissionNotVerify" placeholder="mention if 'Other'" class="form-control" runat="server" OnTextChanged="AdmissionNotVerify_TextChanged" ></asp:TextBox>
														</TD>
														<TD>
													<asp:Button ID="AdmissionVerify" class="btn btn-outline-success" runat="server" Text="Verified" OnClick="AdmissionVerify_Click" ></asp:Button>									
														</TD>
													</TR>
												
													<script type="text/javascript">
                                                        $(document).ready(function () {
                                                            $('#AdmissionNotVerify').keyup(function () {
                                                                $('#AdmissionpDocStatusLabel').val($(this).val());
                                                            });
                                                        });
													</script>

													</table>
											</div>
											
										</td>
							        	<td>
											<label> Document Number </label> 
											<asp:TextBox ID="AdmissionNum" runat="server" type="text" class="form-control"></asp:TextBox>
											<br />
											<label> Admission Date </label> 
											<asp:TextBox ID="AdmissionDate" runat="server" type="text" class="form-control"></asp:TextBox>
											<br />
							        	</td>
							      	</tr>
									

					    		</tbody>
					  		</table>
							</ContentTemplate> </asp:UpdatePanel>

					  		<hr>

							<asp:UpdatePanel ID="UpdatePanel3" runat="server"> <ContentTemplate> 

					  		<nav class="navbar navbar-light" style="background-color: #e3f2fd;">
  								DEMAND LETTER FROM COLLEGE OR UNIVERSITY
							</nav>

  							<table class="table table-hover" align="CENTER">
    							<thead>
      								<tr>
        								<th>Document Name</th>
        								<th>Document</th>
										<th>Description</th>
										          							
      								</tr>
    							</thead>

    							<tbody>


					      			<tr>
							        	<td> 
											<br><br><br><br>
											<strong>
											<asp:Label ID="DemandDocName" runat="server"></asp:Label>
											</strong>
											<br />
											<asp:TextBox ID="DemandDocStatusLabel" runat="server"></asp:TextBox>
							        	</td>

							        	<td> <asp:Image ID="DemandDoc" runat="server" class="img-rounded" data-toggle="modal" data-target="#PartnerModal" alt="Cinque Terre" Width="300" />
											 <div class="modal fade" id="PartnerModal">
												<div class="modal-dialog modal-lg">
													<center>
														<asp:Image ID="DemandDoc_1" runat="server" class="img-rounded" alt="Cinque Terre" Height="500" />
														<br /> <br />
														<button type="button" class="btn btn-danger" data-dismiss="modal">Close</button>
													</center>
												</div>
											</div>

											<br>
											<div class="col-lg">											
												<table>	
												<TR>
													<TD>

														<asp:DropDownList ID="DemandDropDown" class="btn btn-outline-danger" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DemandDropDown_SelectedIndexChanged" >
															<asp:ListItem >Not Verified</asp:ListItem>
															<asp:ListItem>Info. Mismatch</asp:ListItem>
															<asp:ListItem>Blured Image</asp:ListItem>
															<asp:ListItem>Image Not Found</asp:ListItem>
															<asp:ListItem>Other</asp:ListItem>
														</asp:DropDownList>


													<asp:TextBox ID="DemandNotVerify" placeholder="mention if 'Other'" class="form-control" runat="server" OnTextChanged="DemandNotVerify_TextChanged" ></asp:TextBox>
														</TD>
														<TD>
													<asp:Button ID="DemandVerify" class="btn btn-outline-success" runat="server" Text="Verified" OnClick="DemandVerify_Click" ></asp:Button>									
														</TD>
													</TR>

													<script type="text/javascript">
                                                        $(document).ready(function () {
                                                            $('#DemandNotVerify').keyup(function () {
                                                                $('#DemandDocStatusLabel').val($(this).val());
                                                            });
                                                        });
													</script>

													</table>
											</div>
											
										</td>
							        	<td>
											<label> Document Number </label> 
											<asp:TextBox ID="DemandNum" runat="server" type="text" class="form-control"></asp:TextBox>
											<br />
											<label> Demand Document Date </label> 
											<asp:TextBox ID="DemandDate" runat="server" type="text" class="form-control"></asp:TextBox>
											<br />
											<label> College Name </label> 
											<asp:TextBox ID="DemandCollegeName" runat="server" type="text" class="form-control"></asp:TextBox>
											<br />
							        	</td>
							      	</tr>


							      	


					    		</tbody>
					  		</table>
								</ContentTemplate> </asp:UpdatePanel>


							<asp:UpdatePanel ID="UpdatePanel4" runat="server"> <ContentTemplate>
					  		<nav class="navbar navbar-light" style="background-color: #e3f2fd;">
  								SSC / 10 CLASS MARKSHEET
							</nav>

  							<table class="table table-hover" align="CENTER">
    							<thead>
      								<tr>
        								<th>Document Name</th>
        								<th>Document</th>
										<th>Description</th>
										          							
      								</tr>
    							</thead>

    							<tbody>


					      			<tr>
							        	<td> 
											<br><br><br><br>
											<strong>
											<asp:Label ID="SscDocName" runat="server"></asp:Label>
											</strong>
											<br />
											<asp:TextBox ID="SscDocStatusLabel" runat="server"></asp:TextBox>
							        	</td>

							        	<td> <asp:Image ID="SscDoc" runat="server" class="img-rounded" data-toggle="modal" data-target="#AddiModal" alt="Cinque Terre" Width="300" />
											 <div class="modal fade" id="AddiModal">
												<div class="modal-dialog modal-lg">
													<center>
														<asp:Image ID="SscDoc_1" runat="server" class="img-rounded" alt="Cinque Terre" Height="500" />
														<br /> <br />
														<button type="button" class="btn btn-danger" data-dismiss="modal">Close</button>
													</center>
												</div>
											</div>

											<br>
											<div class="col-lg">											
												<table>	
												<TR>
													<TD>

														<asp:DropDownList ID="SscDropDown" class="btn btn-outline-danger" runat="server" AutoPostBack="True" OnSelectedIndexChanged="SscDropDown_SelectedIndexChanged"  >
															<asp:ListItem >Not Verified</asp:ListItem>
															<asp:ListItem>Info. Mismatch</asp:ListItem>
															<asp:ListItem>Blured Image</asp:ListItem>
															<asp:ListItem>Image Not Found</asp:ListItem>
															<asp:ListItem>Other</asp:ListItem>
														</asp:DropDownList>


													<asp:TextBox ID="SscNotVerify" placeholder="mention if 'Other'" class="form-control" runat="server" OnTextChanged="SscNotVerify_TextChanged" ></asp:TextBox>
														</TD>
														<TD>
													<asp:Button ID="SscVerify" class="btn btn-outline-success" runat="server" Text="Verified" OnClick="SscVerify_Click" ></asp:Button>									
														</TD>
													</TR>
								

													<script type="text/javascript">
                                                        $(document).ready(function () {
                                                            $('#SscNotVerify').keyup(function () {
                                                                $('#SscDocStatusLabel').val($(this).val());
                                                            });
                                                        });
													</script>

													</table>
											</div>
											
										</td>
							        	<td>
											<label> Marksheet Number </label> 
											<asp:TextBox ID="SscMarksheetNum" runat="server" type="text" class="form-control"></asp:TextBox>
											<br />
											<label> SSC Percentage </label> 
											<asp:TextBox ID="SscPercent" runat="server" type="text" class="form-control"></asp:TextBox>
											<br />
											<label> SSC Roll Number </label> 
											<asp:TextBox ID="SscRollNum" runat="server" type="text" class="form-control"></asp:TextBox>
											<br />
							        	</td>
							      	</tr>							   


					    		</tbody>
					  		</table>
								</ContentTemplate> </asp:UpdatePanel>


							<asp:UpdatePanel ID="UpdatePanel5" runat="server"> <ContentTemplate> 
					  		<nav class="navbar navbar-light" style="background-color: #e3f2fd;">
  								HSC / 12th CLASS MARKSHEET
							</nav>

  							<table class="table table-hover" align="CENTER">
    							<thead>
      								<tr>
        								<th>Document Name</th>
        								<th>Document</th>
										<th>Description</th>
										          							
      								</tr>
    							</thead>

    							<tbody>
					      			<tr>
							        	<td> 
											<br><br><br><br>
											<strong>
											<asp:Label ID="HscDocName" runat="server"></asp:Label>
											</strong>
											<br />
											<asp:TextBox ID="HscDocStatusLabel" runat="server"></asp:TextBox>
							        	</td>

							        	<td> <asp:Image ID="HscDoc" runat="server" class="img-rounded" data-toggle="modal" data-target="#BankModal" alt="Cinque Terre" Width="300" />
											 <div class="modal fade" id="BankModal">
												<div class="modal-dialog modal-lg">
													<center>
														<asp:Image ID="HscDoc_1" runat="server" class="img-rounded" alt="Cinque Terre" Height="500" />
														<br /> <br />
														<button type="button" class="btn btn-danger" data-dismiss="modal">Close</button>
													</center>
												</div>
											</div>

											<br>
											<div class="col-lg">											
												<table>	
												<TR>
													<TD>

														<asp:DropDownList ID="HscDropDown" class="btn btn-outline-danger" runat="server" AutoPostBack="True" OnSelectedIndexChanged="HscDropDown_SelectedIndexChanged"  >
															<asp:ListItem >Not Verified</asp:ListItem>
															<asp:ListItem>Info. Mismatch</asp:ListItem>
															<asp:ListItem>Blured Image</asp:ListItem>
															<asp:ListItem>Image Not Found</asp:ListItem>
															<asp:ListItem>Other</asp:ListItem>
														</asp:DropDownList>

													<asp:TextBox ID="HscNotVerify" placeholder="mention if 'Other'" class="form-control" runat="server" OnTextChanged="HscNotVerify_TextChanged" ></asp:TextBox>
														</TD>

														<TD>
													<asp:Button ID="HscVerify" class="btn btn-outline-success" runat="server" Text="Verified" OnClick="HscVerify_Click" ></asp:Button>									
														</TD>
													</TR>


													<script type="text/javascript">
                                                        $(document).ready(function () {
                                                            $('#HscNotVerify').keyup(function () {
                                                                $('#HscDocStatusLabel').val($(this).val());
                                                            });
                                                        });
													</script>

													</table>
											</div>
											
										</td>
							        	<td>
											<label> Marksheet Number </label> 
											<asp:TextBox ID="HscMarksheetNumber" runat="server" type="text" class="form-control"></asp:TextBox>
											<br />
											<label> HSC Percentage </label> 
											<asp:TextBox ID="HscPercentage" runat="server" type="text" class="form-control"></asp:TextBox>
											<br />
											<label> HSC Roll Number </label> 
											<asp:TextBox ID="HscRollNum" runat="server" type="text" class="form-control"></asp:TextBox>
											<br />
							        	</td>
							      	</tr>


					    		</tbody>
					  		</table>
							</ContentTemplate> </asp:UpdatePanel>



							<asp:UpdatePanel ID="UpdatePanel6" runat="server"> <ContentTemplate> 
					  		<nav class="navbar navbar-light" style="background-color: #e3f2fd;">
								LATEST DEGREE (If Applicable)							
							</nav>

  							<table class="table table-hover" align="CENTER">
    							<thead>
      								<tr>
        								<th>Document Name</th>
        								<th>Document</th>
										<th>Description</th>
										          							
      								</tr>
    							</thead>

    							<tbody>
							      	<tr>
							        	<td> <br><br><br><br>
											<strong>
                                            <asp:Label ID="DegreeDocName" runat="server"></asp:Label>
											</strong>
											<br />
											<asp:TextBox ID="DegreeDocStatusLabel" runat="server" ReadOnly="true"></asp:TextBox>
							        	</td>
							        	<td> <asp:Image ID="DegreeDoc" runat="server" class="img-rounded" data-toggle="modal" data-target="#myModal5" alt="Cinque Terre" Width="300" />
											 <div class="modal fade" id="myModal5">
												<div class="modal-dialog modal-lg">
													<center>
														<asp:Image ID="DegreeDoc_1" runat="server" class="img-rounded" alt="Cinque Terre" Height="500" />
														<br /> <br />
														<button type="button" class="btn btn-danger" data-dismiss="modal">Close</button>
													</center>
												</div>
											</div>

											<br>
											<div class="col-lg">											
												<table>	
												<TR>
													<TD>	
														
														<asp:DropDownList ID="DegreeDropdown" class="btn btn-outline-danger" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DegreeDropdown_SelectedIndexChanged"  >
															<asp:ListItem >Not Verified</asp:ListItem>
															<asp:ListItem>Info. Mismatch</asp:ListItem>
															<asp:ListItem>Blured Image</asp:ListItem>
															<asp:ListItem>Image Not Found</asp:ListItem>
															<asp:ListItem>Other</asp:ListItem>
														</asp:DropDownList>

														<asp:TextBox ID="DegreeNotVerify" placeholder="mention if 'Other'" class="form-control" runat="server" OnTextChanged="DegreeNotVerify_TextChanged" ></asp:TextBox>
														</TD>
														<TD>

													<asp:Button ID="DegreeVerify" class="btn btn-outline-success" runat="server" Text="Verified" OnClick="DegreeVerify_Click" ></asp:Button>
														</TD>

					
													<script type="text/javascript">
                                                        $(document).ready(function () {
                                                            $('#DegreeNotVerify').keyup(function () {
                                                                $('#DegreeDocStatusLabel').val($(this).val());
                                                            });
                                                        });
													</script>

                                                    <caption>
                                                        <p>
                                                        </p>
                                                    </caption>
  
													 
													
													</TR>
													</table>
											</div>
											
										</td>
							        	<td>
											<label> Degree Number </label> 
											<asp:TextBox ID="DegreeNum" runat="server" type="text" class="form-control"></asp:TextBox>
											<br />
											<label> Issuing Authority </label> 
											<asp:TextBox ID="DegreeAutho" runat="server" type="text" class="form-control"></asp:TextBox>
											<br />
							        	</td>
							      	</tr>


					    		</tbody>
					  		</table>
							</ContentTemplate> </asp:UpdatePanel>




						</div>
						
						
						<div class="container">


						<br />
						<asp:Button ID="Submit" class="btn btn-outline-danger btn-lg btn-block" runat="server" Text="Submit" OnClick="Submit_Click"></asp:Button>
														
						</div>

	

						<br><br>
					</form>
					
						
				
</body>



  					


	<style>
	.dropbtn {
	  background-color: #4CAF50;
	  color: white;
	  padding: 16px;
	  font-size: 16px;
	  border: none;
	}

	.dropdown {
	  position: relative;
	  display: inline-block;
	}

	.dropdown-content {
	  display: none;
	  position: absolute;
	  background-color: #f1f1f1;
	  min-width: 160px;
	  box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
	  z-index: 1;
	}

	.dropdown-content a {
	  color: black;
	  padding: 12px 16px;
	  text-decoration: none;
	  display: block;
	}

	.dropdown-content a:hover {background-color: #ddd;}

	.dropdown:hover .dropdown-content {display: block;}

	.dropdown:hover .dropbtn {background-color: #3e8e41;}
	</style>


</html>
