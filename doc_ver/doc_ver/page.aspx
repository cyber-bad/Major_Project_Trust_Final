<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="page.aspx.cs" Inherits="doc_ver.WebForm1" %>


<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">

  <title>Dashboard</title>

	<link rel="icon" href="../static/document.png" type="Image/icon">

  <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
  <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js" rel="stylesheet">
  
  <script src="https://code.jquery.com/jquery-1.6.2.min.js" integrity="sha256-0W0HoDU0BfzslffvxQomIbx0Jfml6IlQeDlvsNxGDE8=" crossorigin="anonymous" rel="stylesheet"></script>

  <script src="https://code.jquery.com/jquery-3.5.1.min.js" integrity="sha256-9/aliU8dGd2tb6OSsuzixeV4y/faTqgFtohetphbbj0=" crossorigin="anonymous"></script>

  <script src="https://code.jquery.com/jquery-1.12.4.min.js" integrity="sha256-ZosEbRLbNQzLpnKIkEdrPv7lOy9C27hHQ+Xp8a4MxAQ=" crossorigin="anonymous"></script>
 


</head>

<body>
	



	<br>

	<nav aria-label="breadcrumb">
	  <ol class="breadcrumb">
	    <li class="breadcrumb-item"><a href="#">Home</a></li>
	    <li class="breadcrumb-item active" aria-current="page">Verification</li>
	  </ol>
	</nav>
<br>

<center>
	<div class="container">
		
		<h2>
			Auto KYC Document Verification
		</h2>

		<p>
            Selected Pan Number: <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
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
									<label><h5> Photo </h5></label>									
										<asp:Image ID="Image1" runat="server" class="img-rounded" data-toggle="modal" data-target="#myModal" alt="Cinque Terre" Width="300" />
											<div class="modal fade" id="myModal">
												<div class="modal-dialog modal-lg">
													<center>
														<asp:Image ID="Image1_1" runat="server" class="img-rounded" alt="Cinque Terre" Height="500" />
														<br /> <br />
														<button type="button" class="btn btn-danger" data-dismiss="modal">Close</button>
													</center>
												</div>
											</div>	

											<br>

											<div class="dropdown">
											  <button class="btn btn-outline-danger">Not Verified</button>
											  <div class="dropdown-content">
											    <a href="#">Image Not Found</a>
											    <a href="#">Blured Image</a>
											    <a href="#">Other</a>
											  </div>
											</div>

											&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

											<button type="button" class="btn btn-outline-success">Verified</button>											
								</td>
							
								<td>
									<label><h5> Signature </h5></label>
										<asp:Image ID="Image2" runat="server" class="img-rounded" data-toggle="modal" data-target="#myModal2" alt="Cinque Terre" Width="300" />
											 <div class="modal fade" id="myModal2">
												<div class="modal-dialog modal-lg">
													<center>
														<br /> <br />
														<asp:Image ID="Image2_2" runat="server" class="img-rounded" alt="Cinque Terre" Height="300" />
														<br /> <br />
														<button type="button" class="btn btn-danger" data-dismiss="modal">Close</button>
													</center>
												</div>
											</div>	

											<br>

											<div class="dropdown">
											  <button class="btn btn-outline-danger">Not Verified</button>
											  <div class="dropdown-content">
											    <a href="#">Image Not Found</a>
											    <a href="#">Blured Image</a>
											    <a href="#">Other</a>
											  </div>
											</div>

											&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

											<button type="button" class="btn btn-outline-success">Verified</button>							
								</td>
							</tr>
						</tbody>
					</table>
	
					</div>
											   			
						
						<div class="container">
  							
                            <h3 style="text-align:center">Client Documents</h3>
  							
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
											<label> Proof of Identity </label> 
											<br />
											<strong>
											<asp:Label ID="IdType" runat="server"></asp:Label>
											</strong>
							        	</td>

							        	<td> <asp:Image ID="Image3" runat="server" class="img-rounded" data-toggle="modal" data-target="#myModal3" alt="Cinque Terre" Width="300" />
											 <div class="modal fade" id="myModal3">
												<div class="modal-dialog modal-lg">
													<center>
														<asp:Image ID="Image3_3" runat="server" class="img-rounded" alt="Cinque Terre" Height="500" />
														<br /> <br />
														<button type="button" class="btn btn-danger" data-dismiss="modal">Close</button>
													</center>
												</div>
											</div>

											<br>
											<div class="dropdown">
											  <button class="btn btn-outline-danger">Not Verified</button>
											  <div class="dropdown-content">
											  	<a href="#">Information Mismatch</a>
											    <a href="#">Blured Image</a>
											    <a href="#">Image Not Found</a>
											    <a href="#">Other</a>
											    
											  </div>
											</div>

											&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

											<button type="button" class="btn btn-outline-success">Verified</button>
											
										</td>
							        	<td>
											<label> Document Number </label> 
											<asp:TextBox ID="IdentityNum" runat="server" type="text" class="form-control"></asp:TextBox>
											<br />
											<label> Identity Expiry Date </label> 
											<asp:TextBox ID="passportExpDate" runat="server" type="text" class="form-control"></asp:TextBox>
											<br />
							        	</td>
							      	</tr>


							      	<tr>
							        	<td> <br><br><br><br>
											<label> Proof of Address </label>
											<br />
											<strong>
                                            <asp:Label ID="AdType" runat="server"></asp:Label>
											</strong>
							        	</td>
							        	<td> <asp:Image ID="Image5" runat="server" class="img-rounded" data-toggle="modal" data-target="#myModal5" alt="Cinque Terre" Width="300" />
											 <div class="modal fade" id="myModal5">
												<div class="modal-dialog modal-lg">
													<center>
														<asp:Image ID="Image5_5" runat="server" class="img-rounded" alt="Cinque Terre" Height="500" />
														<br /> <br />
														<button type="button" class="btn btn-danger" data-dismiss="modal">Close</button>
													</center>
												</div>
											</div>

											<br>
											<div class="dropdown">
											  <button class="btn btn-outline-danger">Not Verified</button>
											  <div class="dropdown-content">
											    <a href="#">Info. Mismatch</a>
											    <a href="#">Blured Image</a>
											    <a href="#">Image Not Found</a>
											    <a href="#">Other</a>
											  </div>
											</div>

											&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

											<button type="button" class="btn btn-outline-success">Verified</button>
											
										</td>
							        	<td>
											<label> Address 1 </label> 
											<asp:TextBox ID="permanantAdd" runat="server" type="text" class="form-control"></asp:TextBox>											
											<label> Address 2 </label> 
											<asp:TextBox ID="tempAdd" runat="server" type="text" class="form-control"></asp:TextBox>

											<label> City </label> 
											<asp:TextBox ID="city" runat="server" type="text" class="form-control"></asp:TextBox>
											<label> State </label> 
											<asp:TextBox ID="state" runat="server" type="text" class="form-control"></asp:TextBox>
											<label> Postel Pin </label> 
											<asp:TextBox ID="pin" runat="server" type="text" class="form-control"></asp:TextBox>
							        	</td>
							      	</tr>


					    		</tbody>
					  		</table>
						</div>
						
						
						<div class="container">

						<div class="progress">
						  <div class="progress-bar progress-bar-success progress-bar-striped" role="progressbar"
						  aria-valuenow="40" aria-valuemin="0" aria-valuemax="100" style="width:40%">
							40% Complete (success)
						  </div>
						</div>

						<br />

						<button type="button" class="btn btn-outline-danger btn-lg btn-block">Submit</button>

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