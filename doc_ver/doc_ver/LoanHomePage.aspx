<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LoanHomePage.aspx.cs" Inherits="doc_ver.LoanHomePage" %>

<!DOCTYPE html>
<html lang="en">
<head>
     <link rel="icon" href="../static/document.png" type="Image/icon">
  <meta charset="utf-8">
  <title>Dashboard</title>
  <meta content="width=device-width, initial-scale=1.0" name="viewport">


  <!-- Google Fonts -->
  <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,500,600,700,700i|Montserrat:300,400,500,600,700" rel="stylesheet">

  <!-- Bootstrap CSS File -->
  <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">

  <!-- Libraries CSS Files -->
  <link href="http://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css" rel="stylesheet">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/ionicons/5.5.0/collection/components/icon/icon.min.css" integrity="sha512-DR9Jj0uFIfe7v1QLrvPRusRxqdSnVSVRyRBt1H8gcRQgxMKEwsOMSNYs0hyIpo8AITFyCMDC2Q1fCg1XcgdYig==" crossorigin="anonymous" />




</head>

<body>

<nav class="navbar navbar-dark bg-dark">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="#">Document Verification</a>
    </div>
    
  </div>
</nav>

    <form id="form2" runat="server"> 
  <main id="main">
  <center>
  	<br>
  	<h1>
  		Loan Document Verification
  	</h1>
  	<br>
  </center>

    <section id="services" class="section-bg">
      <div class="container">

        <div class="row">
          <div class="col-md-6 col-lg-6 wow bounceInUp" data-wow-duration="1.4s">
            <div class="box">
              <center><img src="../static/personalloan.jpg" width="80"></center>
                <asp:Button ID="PersonalLoanBtn" class="btn btn-light" runat="server" Text="Personal Loan" OnClick="PersonalLoanBtn_Click" />
              <!-- <p class="description">The term “KYC” references the regulated bank customer identity verification.</p> -->
            </div>
          </div>

          <div class="col-md-6 col-lg-6 wow bounceInUp" data-wow-duration="1.4s">
            <div class="box">
              <center><img src="../static/HomeLoanpic.png" width="80"></center>
                <asp:Button ID="HomeLoanBtn" class="btn btn-light" runat="server" Text="Home Loan" OnClick="HomeLoanBtn_Click" />
              <!-- <p class="description">Minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat tarad limino ata</p> -->
            </div>
          </div>          

        </div>

        <div class="row">

          <div class="col-md-6 col-lg-6 wow bounceInUp" data-wow-delay="0.1s" data-wow-duration="1.4s">
            <div class="box">
              <center><img src="../static/Education_Loan.svg" width="80"></center>
                <asp:Button ID="EducationLoanBtn" class="btn btn-light" runat="server" Text="Education Loan" OnClick="EducationLoanBtn_Click" />
              <!-- <p class="description">Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur</p> -->
            </div>
          </div>

          <div class="col-md-6 col-lg-6 wow bounceInUp" data-wow-delay="0.1s" data-wow-duration="1.4s">
            <div class="box">
              <center><img src="../static/GoldLoan.png" width="80"></center>
                <asp:Button ID="GoldLoanBtn" class="btn btn-light" runat="server" Text="Gold Loan" OnClick="GoldLoanBtn_Click" />
              <!-- <p class="description">Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur</p> -->
            </div>
          </div>
          

        </div>

      </div>
    </section>

    <section>
    	
    	
    </section>

</form>

  </main>


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
  background: #CCE5FF;
}


</style>
</html>
