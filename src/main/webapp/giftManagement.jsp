<%@include file="/include/header.jsp"%>

<div class="nl-content">
	<div class="form_body">
		<div class="container">
			<!-- title -->
			<div class="row">
				<div class="col-sm-12">
					<h1>Gift Management</h1>
				</div>
			</div>
			<!-- Breadcrumbs -->
			<div class="row">
				<ol class="breadcrumb">
					<li><a href="/myaccount/">My Account</a></li>
					<li><a href="/myaccount/giftManagement.jsp">Gift
							Management</a></li>
				</ol>
			</div>
			<div class="row">
				<div class="col-sm-12">
					<p>Below are memberships linked to your account as an annual gift.</p>
				</div>
			</div>
			<div class="row">
				<div class="col-sm-12">
					<p>Manage your AAA Gift Memberships using this online Gift
						Management tool. You can do several things: renew donated
						membership, enroll it into Auto-Renew or update your credit card
						on file for a membership already enrolled into Auto-Renew program.</p>
				</div>
			</div>
			<div class="row">
				<table class="table table-col-6">
					<% for(int i = 0; i < 5; i+=1) { %>
					<thead>
						<tr>
							<th><label>Primary Member</label></th>
							<th><label>Members on Account</label></th>
							<th><label>Expiry Date</label></th>
							<th><label>Balance</label></th>
							<th><label>Operator</label></th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td><label>HAO WU</label></td>
							<td><label>3</label></td>
							<td><label>January 31, 2017</label></td>
							<td><label>-$5.00</label></td>
							<td><button type="button" class="btn btn-primary">Primary</button></td>
						</tr>
					</tbody>
					<% } %>
				</table>
			</div>
		</div>
		<!-- container -->
	</div>
	<!-- form_body -->

	<%@include file="/include/sidebar.jsp"%>
</div>

<%@include file="/include/footer.jsp"%>