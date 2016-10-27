<%@include file="/include/header.jsp"%>

<div class="nl-content">
	<div class="form_body">
		<div class="container">
			<!-- title -->
			<div class="row">
				<div class="col-sm-12">
					<h1>Primary Member Information</h1>
				</div>
			</div>
			<!-- Breadcrumbs -->
			<div class="row">
				<ol class="breadcrumb">
					<li><a href="/myaccount/">My Account</a></li>
					<li><a href="/myaccount/primaryMember.jsp">Primary Member Information</a></li>
				</ol>
			</div>
			<div class="row">
				<p class="col-sm-12">AAA periodically sends out email that we think might interest you. Emails will be sent to the account(s) specified under "Email Preferences".</p>
			</div>
		</div>
		<div class="container highlight">
			<div class="row">
				<div class="col-sm-3 col-xs-6">
					<label>Name</label>
				</div>
				<div class="col-sm-3 col-xs-6">
					<label>Hao Wu</label>
				</div>
				<div class="col-sm-3 col-xs-6">
					<label>Expiration Date:</label>
				</div>
				<div class="col-sm-3 col-xs-6">
					<label>June 15, 2017</label>
				</div>
			</div>
			<div class="row">
				<div class="col-sm-3 col-xs-6">
					<label>Membership Type:</label>
				</div>
				<div class="col-sm-3 col-xs-6">
					<label>AAA Plus</label>
				</div>
				<div class="col-sm-3 col-xs-6">
					<label>Account Balance:</label>
				</div>
				<div class="col-sm-3 col-xs-6">
					<label>$0.00</label>
				</div>
			</div>
			<div class="row">
				<div class="col-sm-3 col-sm-offset-3">
					<a href="">upgrade</a>
					<a href="">downgrade</a>
					<a href="">cancel</a>
				</div>
			</div>
		</div>
		<div class="container">
			<form action="" class="form-horizontal">
				<div class="row">
				<%
					for (int i = 0; i < 5; i += 1) {
				%>
					<div class="col-sm-6">
						<div class="form-group">
							<!-- <div class="input-group">
								<span class="input-group-addon">@</span>
								<input type="text" class="form-control" placeholder="Username">
							</div> -->
							<label class="col-sm-4 hidden-xs control-label">Address1:</label>
							<div class="col-sm-8 col-xs-12">
							<div class="input-group">
								<input type="text" class="form-control" placeholder="Address1">
								<div class="input-group-addon">
									<i class="fa fa-asterisk"></i>
								</div>
							</div>
							</div>
						</div>
					</div>
					<div class="col-sm-6">
						<div class="form-group">
							<label class="col-sm-4 hidden-xs control-label">Email Address:</label>
							<div class="col-sm-8 col-xs-12">
								<input type="text" class="form-control" placeholder="Email Address">
							</div>
						</div>
					</div>
				<%
					}
				%>
				</div>
				<div class="row">
					<div class="col-sm-12">
						<div class="form-group nl-submit">
							<button type="button" class="btn btn-primary">BACK</button>
							<button type="button" class="btn btn-danger">SAVE</button>
						</div>
					</div>
				</div>
			</form>
		</div>
		<!-- container -->
	</div>
	<!-- form_body -->

	<%@include file="/include/sidebar.jsp"%>
</div>

<%@include file="/include/footer.jsp"%>