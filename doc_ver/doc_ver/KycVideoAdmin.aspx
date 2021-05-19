<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="KycVideoAdmin.aspx.cs" Inherits="doc_ver.KycVideoAdmin" %>

<!DOCTYPE html>
<html>
<head>

	<meta charset="utf-8">
  	<meta content="width=device-width, initial-scale=1.0" name="viewport">
	<title>Video KYC</title>
	<link rel="stylesheet" type="text/css" href="../Scripts/stylesVideoAdmin.css">
	<script defer src="../Scripts/scriptsVideo.js" type="text/javascript"></script>
	<script defer src="../Scripts/connectVideo.js" type="text/javascript"></script>

    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">


<style> 
   
    .absolute {
	  position: absolute;
	  width: 150px;
	  height: 150px;
	  background-color: #fdd;
	  border-color: #900;
	}
	.static {
	  position: static;
	  height: 350px;
	  width: 560px;
	  background-color: #ffc;
	  border-color: #996;
	}



</style>

<script>
function toggleElements(showElement, hideElements) {
  document.querySelectorAll(hideElements).forEach(el => el.style.display = "none");
  document.querySelector(showElement).style.display = "block";
}

</script>
   

</head>

<body>

<nav class="navbar navbar-expand-sm bg-primary navbar-dark"> <center> <h2> VIDEO KYC</h2></center> </nav>
		
		<br>

		<div class="container">
		  <div class="row">
		   
		    <div class="col-7">
	
		      <button type="button" class="btn btn-info" onclick="toggleElements('.table1', '.table')">1.Verify Details</button>
		      <button type="button" class="btn btn-info" onclick="toggleElements('.table2', '.table')">2.Pan Card</button>
		      <button type="button" class="btn btn-info" onclick="toggleElements('.table3', '.table')">3.User Face</button>
		      <button type="button" class="btn btn-info" onclick="toggleElements('.table4', '.table')">4.Signature</button>


		    </div>

		    <div class="col-5">
				<center>
		      	<button type="button" class="btn btn-success">Final Submit</button> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		      	<button type="button" class="btn btn-warning">Back</button>

				<asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
		 		</center>  
		 	</div>

		  </div>
		</div>

		<hr>


	<div class="container">
		<div class="row">
			<div class="col-6">

		<div class="video_elements">
			<video id="remote_video" class="static" autoplay></video>
			<video id="local_video" class="absolute" autoplay muted></video>
			
		</div>
		<br>
		<div class="video_controls">
			<center>
			<button id="start_call" class="btn btn-secondary" onclick="end_call()">End Call</button>
			<button id="mute_video" class="btn btn-secondary">Mute Video</button>
			<button id="mute_audio" class="btn btn-secondary">Mute Audio</button>
			</center>
		</div>

			</div>

			<div class="col-6">


				<div class="table table1">	
					<table class="auto-style"
					           align="right"   >
					        
					  
					        <tr align="center">
					            <th colspan="4">  DETAILS</th>
					            
					        </tr>
					        <tr>
					            <td><b>Applicant Name </b></td>
					                   <td><b>:</b></td>

					            <td>
                                    <asp:TextBox ID="name" runat="server"></asp:TextBox>
					            </td>

					        </tr>
					        
							<tr>
					             <td><b>Mother Name </b></td>
					                   <td><b>:</b></td>
					            <td>
                                    <asp:TextBox ID="motherName" runat="server"></asp:TextBox>
					            </td>

							</tr>

							<tr>
					             <td><b>Date Of Birth </b></td>
					                   <td><b>:</b></td>
					            <td>
                                    <asp:TextBox ID="dob" runat="server"></asp:TextBox>
									
					            </td>
					            
							</tr>

							<tr>
					 			<td><b>Email ID </b></td>
					                   <td><b>:</b></td>
					            <td>
                                    <asp:TextBox ID="email" runat="server"></asp:TextBox>
					            </td>
							</tr>

							<tr> 
								<td><b> Gender </b></td>
					                   <td><b>:</b></td>
					            <td>
                                    <asp:TextBox ID="gender" runat="server"></asp:TextBox>
					            </td>
					        </tr>

							<tr>
					 			<td><b>Resident </b></td>
					                   <td><b>:</b></td>
					            <td>
                                    <asp:TextBox ID="resident" runat="server"></asp:TextBox>
					            </td>
							</tr>

							<tr>
					            <td><b> Occupation </b></td>
					                   <td><b>:</b></td>
					            <td>									
                                    <asp:TextBox ID="occupation" runat="server"></asp:TextBox>
					            </td>
					            
					        </tr>


					<tr>
					 <td><center><button type="button" class="btn btn-success">Successful</button></center></td>
					      <td></td>
					       <td><center><button type="button" class="btn btn-danger">Reject</button> </center></td>
					</tr>
					</table> 
						</div>
					  
					<div class="table table2" style="display: none">	
					<table class="auto-style"
					           align="right"   >
					        
					  
					        <tr align="center">
					            <th colspan="4">  DETAILS</th>
					            
					        </tr>
					        <tr>
					            <td><b>Applicant Name </b></td>
					                   <td><b>:</b></td>
					            <td>
					            	<asp:TextBox ID="PanName" runat="server"></asp:TextBox>
					            </td>

					        </tr>
					        <tr>
					            <td><b>Pancard Number </b></td>
					                   <td><b>:</b></td>
					            <td>
                                    <asp:TextBox ID="PanNo" runat="server"></asp:TextBox>
					            </td>
					            
					        </tr>
					<tr>
					 <td><center><button type="button" class="btn btn-success">Successful</button></center></td>
					      <td></td>
					       <td><center><button type="button" class="btn btn-danger">Reject</button> </center></td>
					</tr>

					</table> 
						</div>

					<div class="table table3" style="display: none">	
					<table class="auto-style"
					           align="right"   >
					        
					  
					        <tr align="center">
					            <th colspan="4">  DETAILS</th>
					            
					        </tr>
					        <tr>
					            <td><b>Applicant Name </b></td>
					                   <td><b>:</b></td>
					            <td>
					            	<asp:TextBox ID="PicName" runat="server"></asp:TextBox>
					            </td>

					        </tr>
					        <tr>
					            <td><b>Photograph </b></td>
					                   <td><b>:</b></td>
					            <td>
					            	&nbsp;<img src="url" alt="Image NA">&nbsp;&nbsp;
					            </td>
					            
					        </tr>

					<tr>
					 <td><center><button type="button" class="btn btn-success">Successful</button></center></td>
					      <td></td>
					       <td><center><button type="button" class="btn btn-danger">Reject</button> </center></td>
					</tr>
					</table> 
						</div>

					<div class="table table4" style="display: none">	
					<table class="auto-style"
					           align="right"   >
					        
					  
					        <tr align="center">
					            <th colspan="4">  DETAILS</th>
					            
					        </tr>
					        <tr>
					            <td><b>Applicant Name </b></td>
					                   <td><b>:</b></td>
					            <td>
					            	<asp:TextBox ID="SignName" runat="server"></asp:TextBox>
					            </td>

					        </tr>
					        <tr>
					            <td><b>Signature </b></td>
					                   <td><b>:</b></td>
					            <td>
					            	&nbsp;<img src="url" alt="Image NA">&nbsp;&nbsp;
					            </td>
					            
					        </tr>

					<tr>
					<td><center><button type="button" class="btn btn-success">Successful</button></center></td>
					<td></td>
					<td><center><button type="button" class="btn btn-danger">Reject</button> </center></td>
					</tr>
					</table> 
					</div>

			</div>
		</div>

	</div>


		




</body>
</html>
