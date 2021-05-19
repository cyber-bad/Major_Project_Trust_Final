<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="HomeLoanList.aspx.cs" Inherits="doc_ver.index" %>


<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">

  <title>Home Loan Documents</title>


	<link rel="icon" href="../static/document.png" type="Image/icon">

  <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
  <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js" rel="stylesheet">
  
	<script src="https://code.jquery.com/jquery-3.5.1.min.js" integrity="sha256-9/aliU8dGd2tb6OSsuzixeV4y/faTqgFtohetphbbj0=" crossorigin="anonymous"></script>

  <script src="https://code.jquery.com/jquery-1.12.4.min.js" integrity="sha256-ZosEbRLbNQzLpnKIkEdrPv7lOy9C27hHQ+Xp8a4MxAQ=" crossorigin="anonymous"></script>
 
	



</head>

<body>

<form id="form1" runat="server">
	
	<nav class="navbar sticky-top navbar-dark bg-dark">
  		<a class="navbar-brand" href="#">HOME LOAN DOCUMENT VERIFICATION</a>
	</nav>


	<br>
										

<center>
			
					
	
	<div class="container">
		<div class="col">
			<asp:TextBox ID="TextBox3" runat="server" type="text" class="form-control" Width="300px" placeholder="Enter Pan Number"></asp:TextBox>
		</div>
		<br />
		<div class="col">
			<asp:Button ID="BtnCustomSearch" runat="server" class="btn btn-outline-primary" Text="Search" OnClick="BtnCustomSearch_Click" />
		</div>

	</div>





									
				<p style="text-align: center;"> 
					
				<asp:Label ID="AvailableOrNot" runat="server" style="color: red; font-size: 30px"></asp:Label>
				
				</p>	

				

	
	

<div class="container">
	<div class="buttons">
  <div class="row">
    <div class="col">
		<asp:Button  runat="server" class="btn btn-success" id="showdiv1" Text="Verified" OnClick="showdiv1_Click" ></asp:Button>
    </div>
    <div class="col">
		<asp:Button  runat="server" class="btn btn-danger" id="showdiv2" Text="Not Verified" OnClick="showdiv2_Click" ></asp:Button>
    </div>
    <div class="col">
		<asp:Button  runat="server" class="btn btn-warning" id="showdiv3" Text="Pending" OnClick="showdiv3_Click" ></asp:Button>
    </div>
  </div>
</div>
</div>



<br><br>



	<h5>
		
		<asp:Label ID="Label1" runat="server"></asp:Label>
	</h5>

	






<div class="container" id="div1">

	
	<h2 style="color: green">
		 Verified Data
	</h2>
	<br>

	<asp:GridView ID="verified" runat="server" AutoGenerateColumns="false" class="table table-hover table-bordered" OnSelectedIndexChanged="verified_SelectedIndexChanged"> 
		<Columns>

			<asp:BoundField DataField="ID" HeaderText="ID" />
			<asp:BoundField DataField="First_Name" HeaderText="First Name"/>
			<asp:BoundField DataField="Last_Name" HeaderText="Last Name"/>
			<asp:BoundField DataField="Pan" HeaderText="Pan Number"/>
			<asp:ButtonField Text="View" CommandName="Select" ControlStyle-CssClass="btn btn-outline-secondary"/>

		</Columns>

	</asp:GridView>

</div>
	





<div class="container" id="div2">

	<h2 style="color: red">
		Not Verified Data
	</h2>
	<br>

	<asp:GridView ID="NotVerified" runat="server" AutoGenerateColumns="false" class="table table-hover table-bordered" OnSelectedIndexChanged="NotVerified_SelectedIndexChanged"> 
		<Columns>

			<asp:BoundField DataField="ID" HeaderText="ID" />
			<asp:BoundField DataField="FULL_NAME" HeaderText="Client Name"/>
			<asp:BoundField DataField="PAN_NO" HeaderText="Pan Number"/>

			<asp:ButtonField Text="View" CommandName="Select" ControlStyle-CssClass="btn btn-outline-secondary" />

		</Columns>

	</asp:GridView>

	
	<br>
	

</div>
	


<div class="container" id="div3">

	<h2 style="color: yellow">
		Pending Data
	</h2>
	<br>

	<asp:GridView ID="Pending" runat="server" AutoGenerateColumns="false" class="table table-hover table-bordered" OnSelectedIndexChanged="Pending_SelectedIndexChanged"> 
		<Columns>

			<asp:BoundField DataField="ID" HeaderText="ID" />
			<asp:BoundField DataField="FULL_NAME" HeaderText="Client Name"/>
			<asp:BoundField DataField="PAN_NO" HeaderText="Pan Number"/>
			<asp:ButtonField Text="View" CommandName="Select" ControlStyle-CssClass="btn btn-outline-secondary" />

		</Columns>

	</asp:GridView>

	
	<br>

</div>



</center>



<script type="text/javascript">

    function autoClick() {
        $('#showdiv2').click(function () {
            $('div[id^=div]').hide();
            $('#div2').show();
            event.preventDefault();

        });
    }
    window.onload = function () {
        document.getElementById('showdiv2').click();
    }


    $('#showdiv1').click(function () {
        $('div[id^=div]').hide();
        $('#div1').show();
        event.preventDefault();
	});

	$('#showdiv2').click(function() {
	  $('div[id^=div]').hide();
        $('#div2').show();
        event.preventDefault();
	});

	$('#showdiv3').click(function() {
	  $('div[id^=div]').hide();
        $('#div3').show();
        event.preventDefault();
	});

</script> 

</form>
</body>

</html>
