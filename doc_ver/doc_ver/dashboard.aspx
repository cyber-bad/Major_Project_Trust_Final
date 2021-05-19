<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="dashboard.aspx.cs" Inherits="doc_ver.WebForm3" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

<head runat="server">
    <link rel="icon" href="../static/document.png" type="Image/icon">
  <meta charset="utf-8">
  <title>Dashboard</title>
  <meta content="width=device-width, initial-scale=1.0" name="viewport">


  <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,500,600,700,700i|Montserrat:300,400,500,600,700" rel="stylesheet">

  <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">

  <link href="http://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css" rel="stylesheet">






</head>

<body>

    <form id="form1" runat="server">

<nav class="navbar navbar-dark bg-dark">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="#">Document Verification</a>
    </div>
    
  </div>
</nav>


  <main id="main">
  <center>
  	<br>

            <p style="text-align: center; vertical-align: middle;">
				<label> <strong> Login as : </strong>  </label>
				<asp:Label ID="Label2" runat="server"></asp:Label>
									
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
									
                <asp:Button ID="SignOut" runat="server" Text="SignOut" class="btn btn-light" OnClick="SignOut_Click1" UseSubmitBehavior="false"/>
			</p>
      <br>

  	<h1>
  		SERVICES
  	</h1>
  	<br>
  </center>

    <section id="services" class="section-bg">
      <div class="container">

        <div class="row">
          <div class="col-md-6 col-lg-4 wow bounceInUp" data-wow-duration="1.4s">
            <div class="box">
              <center><img src="../static/kyc.png" width="80"></center>
              <h4 class="title"><strong>
                  <asp:Button ID="KycDoc" runat="server" class="btn btn-light" Text="KYC Verification" OnClick="KycDoc_Click" />
                  </strong>

              </h4>
              <!-- <p class="description">The term “KYC” references the regulated bank customer identity verification.</p> -->
            </div>
          </div>

          <div class="col-md-6 col-lg-4 wow bounceInUp" data-wow-duration="1.4s">
            <div class="box">
              <center><img src="../static/loan.png" width="80"></center>
              <h4 class="title"><strong>
                  <asp:Button ID="LoanDoc" runat="server" class="btn btn-light" Text="Loan Verification" OnClick="LoanDoc_Click" />
                  </strong>
              </h4>
              <!-- <p class="description">Minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat tarad limino ata</p> -->
            </div>
          </div>

          <div class="col-md-6 col-lg-4 wow bounceInUp" data-wow-delay="0.1s" data-wow-duration="1.4s">
            <div class="box">
              <center><img src="../static/cibil.svg" width="80"></center>
              <h4 class="title"><strong>
                    <asp:Button ID="Other" runat="server" class="btn btn-light" Text="Cibil Score Verification" />
                  </strong>


              </h4>
              <!-- <p class="description">Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur</p> -->
            </div>
          </div>
          

        </div>

      </div>
    </section>

    <section>
    	
    	
    </section>



  </main>

</form>
</body>


<style type="text/css">
	#services {
  padding: 60px 0 40px 0;
}

#services .box {
  padding: 30px;
  position: relative;
  overflow: hidden;
  border-radius: 10px;
  margin: 0 10px 40px 10px;
  background: #fff;
  box-shadow: 0 10px 29px 0 rgba(68, 88, 144, 0.1);
  transition: all 0.3s ease-in-out;
  text-align: center;
}

#services .box:hover {
  -webkit-transform: scale(1.1);
  transform: scale(1.1);
}

#services .icon {
  margin: 0 auto 15px auto;
  padding-top: 12px;
  display: inline-block;
  text-align: center;
  border-radius: 50%;
  width: 60px;
  height: 60px;
}

#services .icon i {
  font-size: 36px;
  line-height: 1;
}

#services .title {
  font-weight: 700;
  margin-bottom: 15px;
  font-size: 18px;
}

#services .title a {
  color: #111;
}

#services .box:hover .title a {
  color: #1bb1dc;
}

#services .description {
  font-size: 14px;
  line-height: 28px;
  margin-bottom: 0;
  text-align: left;
}

.section-bg {
  background: #f5f8fd;
}


</style>
</html>
