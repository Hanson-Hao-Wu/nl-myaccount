<%@include file="/include/header.jsp"%>

<div class="nl-content">
	<div class="form_body">
		<div class="container">
			<!-- title -->
			<div class="row">
				<div class="col-sm-12">
					<h1>Email Preferences</h1>
				</div>
			</div>
			<!-- Breadcrumbs -->
			<div class="row">
				<ol class="breadcrumb">
					<li><a href="/myaccount/">My Account</a></li>
					
					<li><a href="/myaccount/emailPreferences.jsp">Email Preferences</a></li>
				</ol>
			</div>
		</div><!-- container -->
		<form action="" class="form-horizontal">
			<div class="container highlight">
				<div class="row">
					<div class="col-sm-3 col-xs-6">
						<label>Email Address:</label>
					</div>
					<div class="col-sm-3 col-xs-6">
						<label>hao@newland.com</label>
					</div>
				</div>
				<div class="row">
					<div class="col-sm-12">
						<div class="checkbox">
							Hao_0616, these are your current email preferences: 
							<label><input type="checkbox"> I'd like to receive email</label>
						</div>
					</div>
				</div>
			</div>
			<div class="container">
				<div class="row">
					<div class="col-sm-12">
						<div class="form-group nl-submit">
							<button type="button" class="btn btn-primary">BACK</button>
							<button type="button" class="btn btn-danger">SAVE</button>
						</div>
					</div>
				</div>
			</div>
			<!-- container -->
		</form>
		
	</div>
	<!-- form_body -->

	<%@include file="/include/sidebar.jsp"%>
</div>

<%@include file="/include/footer.jsp"%>