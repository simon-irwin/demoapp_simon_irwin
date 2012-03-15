<%@ page import="ie.cit.cloudapp.Player"%>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta name="keywords" content="" />
<meta name="description" content="" />
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<title>Red vs Green</title>
<link href="styles/style.css" rel="stylesheet" type="text/css"
	media="screen" />
</head>
<body>
	<div id="wrapper">
		<div id="header-wrapper">
			<div id="header">
				<div id="logo">
					<h1>Red vs Green</h1>
					<p>
						The Wednesday Night Football App</a>
					</p>
				</div>
			</div>
		</div>
		<!-- end #header -->
		<div id="menu">
			<ul>
				<li><a href="index.jsp">Home</a></li>
				<li class="current_page_item"><a href="#">Sign Up</a></li>
				<li><a href="#">About</a></li>
				<li><a href="#">Contact</a></li>
			</ul>
		</div>
		<!-- end #menu -->
		<div id="page">
			<div id="page-bgtop">
				<div id="page-bgbtm">
					<div id="content">
						<div class="post">
							<h2 class="title">
								<a href="#">Sign Up </a>
							</h2>
							<p class="meta">
								Posted by <a href="#">Administrator</a> on Feb 16, 2012
								&nbsp;&bull;&nbsp;
							</p>
							<div class="entry">

								<h2>List of Current Players</h2>
								<c:forEach items="${players}" var="player" varStatus="row">
									<c:choose>
			 								${player.firstName} 
									</c:choose>
									<form method="post">
										<input name="_method" type="hidden" value="delete"> <input
											name="playerId" type="hidden" value="${row.count}"> <input
											type="submit" value="Delete">
									</form>
									<br />
								</c:forEach>
								<br />
								<h2>Sign Up Form</h2>
								<form method="post">
									First Name: <input name="firstName"><br /> Surname: <input
										name="surname"><br /> Age: <input name="age"><br />
									<input type="submit">
								</form>
							</div>
						</div>
						<div style="clear: both;">&nbsp;</div>
					</div>
					<!-- end #content -->
					<div id="sidebar">
						<ul>
							<li>
								<h2>Latest News</h2>
								<p>Homepage Launched! Check back here for more news on this
									app.</p>
							</li>
							<li>
								<h2>Categories</h2>
								<ul>
									<li><a href="#">Sign Up</a></li>
									<li><a href="#">Next Match</a></li>
									<li><a href="#">The Teams</a></li>
									<li><a href="#">Man of the Match Hall of Fame</a></li>
								</ul>
							</li>
						</ul>
					</div>
					<!-- end #sidebar -->
					<div style="clear: both;">&nbsp;</div>
				</div>
			</div>
		</div>
		<!-- end #page -->

		<div id="footer">
			<p>
				Copyright (c) 2011 redvsgreen.com. All rights reserved. Design by <a
					href="http://www.freecsstemplates.org/"> CSS Templates</a>.
			</p>
		</div>
		<!-- end #footer -->
	</div>
</body>
</html>