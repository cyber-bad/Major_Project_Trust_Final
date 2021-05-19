<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="KycVideoClient.aspx.cs" Inherits="doc_ver.KycVideoClient" %>

<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
  	<meta content="width=device-width, initial-scale=1.0" name="viewport">
	<title>Video KYC</title>
	<link rel="stylesheet" type="text/css" href="../Scripts/stylesVideoClient.css">
	<script defer src="../Scripts/scriptsVideo.js" type="text/javascript"></script>
	<script defer src="../Scripts/connectVideo.js" type="text/javascript"></script>

	<link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">

</head>

<body>
	<nav class="navbar navbar-expand-sm bg-primary navbar-dark"> . </nav>
	<div style="background-color: #F0FFFF">
		<center>
		<H2>
			WELCOME TO VIDEO KYC

		</H2>
		</center>
		
	</div>
	
	<div class="container">
		<div class="video_elements">
			<video id="local_video" autoplay muted></video>
			<video id="remote_video" autoplay></video>
		</div>
		<div class="video_controls">
			<button id="start_call" onclick="end_call()">End Call</button>
			<button id="mute_video">Mute Video</button>
			<button id="mute_audio">Mute Audio</button>
		</div>
	</div>
</body>
</html>
