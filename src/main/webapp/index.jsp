<%@include file="/include/header.jsp"%>

<div class="nl-content">
	<div class="form_body">
		<div class="container">
			<!-- title -->
			<div class="row">
				<div class="col-sm-12">
					<h1>My Account</h1>
				</div>
			</div>
			<div class="row">
				<div class="col-sm-6">
					<h3 style="margin:5px 0 20px;">Welcome, Hao</h3>
				</div>
				<div class="col-sm-6">
					<button type="button" class="btn btn-danger logout">Logout</button>
				</div>
			</div>
			<!-- Breadcrumbs -->
			<div class="row">
				<ol class="breadcrumb">
					<li><a href="/myaccount/">My Account</a></li>
				</ol>
			</div>
		</div>
		<div class="container highlight">
				<div class="row">
					<div class="col-sm-12">
						<label>Quick Links</label>
					</div>
					<div class="col-sm-12">
						<div class="btn-group btn-group-justified" role="group"
							aria-label="Justified button group">
							<div class="btn-group" role="group">
								<a href="/myaccount/upgrade.jsp" class="btn btn-default">Upgrade</a>
							</div>
							<div class="btn-group" role="group">
								<a href="/myaccount/addAssociate.jsp" class="btn btn-default">Downgrade</a>
							</div>
							<div class="btn-group" role="group">
								<a href="/myaccount/addAssociate.jsp" class="btn btn-default">Add Associate</a>
							</div>
							<div class="btn-group" role="group">
								<a href="/myaccount/addAssociate.jsp" class="btn btn-default">Remove Associate</a>
							</div>
							<div class="btn-group" role="group">
								<a href="/myaccount/changePassword.jsp" class="btn btn-default">Change Password</a>
							</div>
							<div class="btn-group" role="group">
								<a href="/myaccount/addAssociate.jsp" class="btn btn-default">Cancel</a>
							</div>
						</div>
					</div>
				</div>
				<div class="row">
					<!-- js validation -->
					<div class="col-sm-12">
						<div class="btn-group btn-group-justified" role="group" aria-label="Justified button group">
							<div class="btn-group" role="group">
								<a href="/myaccount/parsley.jsp" class="btn btn-default">parsley.jsp</a>
							</div>
							<div class="btn-group" role="group">
								<a href="/myaccount/remoteParsley.jsp" class="btn btn-default">remoteParsley.jsp</a>
							</div>
							<div class="btn-group" role="group">
								<a href="/myaccount/jQueryValidationPlugin.jsp" class="btn btn-default">jQueryValidationPlugin.jsp</a>
							</div>
							<div class="btn-group" role="group">
								<a href="/myaccount/waterQ.jsp" class="btn btn-default">waterQ.jsp</a>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="container">
				<div class="row  rma-links">
					<div class="col-sm-6">
						<a href="/myaccount/primaryMember.jsp" class="btn btn-primary btn-myaccount">
							<i class="fa fa-user" aria-hidden="true"></i>
							Primary Member Information
						</a>
					</div>
					<div class="col-sm-6">
						<a class="btn btn-primary btn-myaccount">
							<i class="fa fa-usd" aria-hidden="true"></i> CAA Rewards
						</a>
					</div>
				</div>
				<div class="row rma-links">
					<div class="col-sm-6">
						<a class="btn btn-primary btn-myaccount">
							<i class="fa fa-group" aria-hidden="true"></i> Associate
							Member(s) Information
						</a>
					</div>
					<div class="col-sm-6">
						<a href="/myaccount/emailPreferences.jsp" class="btn btn-primary btn-myaccount">
							<i class="fa fa-envelope" aria-hidden="true"></i> Email
							Preference
						</a>
					</div>
				</div>
				<div class="row rma-links">
					<div class="col-sm-6">
						<a class="btn btn-primary btn-myaccount">
							<i class="fa fa-refresh" aria-hidden="true"></i> Auto-Renew
						</a>
					</div>
					<div class="col-sm-6">
						<a class="btn btn-primary btn-myaccount">
							<i class="fa fa-truck" aria-hidden="true"></i> Roadside
							Assistance Call
						</a>
					</div>
				</div>
				<div class="row rma-links">
					<div class="col-sm-6">
						<a class="btn btn-primary btn-myaccount">
							<i class="fa fa-credit-card" aria-hidden="true"></i> Membership
							Level
						</a>
					</div>
					<div class="col-sm-6">
						<a class="btn btn-primary btn-myaccount">
							<i class="fa fa-car" aria-hidden="true"></i>
							Roadside Assistance History
						</a>
					</div>
				</div>
				<div class="row rma-links">
					<div class="col-sm-6">
						<a href="/myaccount/giftManagement.jsp" class="btn btn-primary btn-myaccount">
							<i class="fa fa-gift" aria-hidden="true"></i>
							Gift Management
						</a>
					</div>
				</div>
			</div>
			<!-- container -->
	</div>
	<!-- form_body -->

	<%@include file="/include/sidebar.jsp"%>
</div>

<%@include file="/include/footer.jsp"%>