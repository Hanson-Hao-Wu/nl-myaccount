<%@include file="/include/header.jsp"%>

<div class="nl-content">
	<div class="form_body">
		<div class="container">
			<!-- title -->
			<div class="row">
				<div class="col-sm-12">
					<h1>Membership Level: Upgrade</h1>
				</div>
			</div>
			<!-- Breadcrumbs -->
			<div class="row">
				<ol class="breadcrumb">
					<li><a href="/myaccount/">My Account</a></li>
					<li><a href="/myaccount/upgrade.jsp">Upgrade</a></li>
				</ol>
			</div>
			<!-- Primary Member Information -->
			<div class="row">
				<div class="col-sm-3 col-xs-6">
					<label>Membership Type:</label>
				</div>
				<div class="col-sm-3 col-xs-6">AAA Premier</div>
			</div>
			<div class="row">
				<div class="col-sm-3 col-xs-6">
					<label>Expiration Date:</label>
				</div>
				<div class="col-sm-3 col-xs-6">June 30, 2017</div>
			</div>
			<!-- message -->
			<div class="row">
				<div class="col-sm-12">
					<p>The price for upgrading your Membership level is pro-rated based on the Primary Member's expiration date. Associate Members must carry the same level of coverage as the Primary Member. </p>
				</div>
			</div>
		</div>
		<!-- container -->
		<!-- form -->
		<form class="form-horizontal">
			<div class="container">
				<!-- upgrade Level -->
				<div class="row">
					<div class="col-sm-12">
						<h5>Manage Your Membership Level:</h5>
					</div>
				</div>
				<div class="row">
					<div class="col-sm-6">
						<select class="form-control">
							<option value="B" disabled>Basic</option>
							<option value="P" selected>Plus</option>
							<option value="RV">Plus RV</option>
							<option value="PR">Premier</option>
							<option value="PRV">Premier RV</option>
						</select>
					</div>
					<label class="col-sm-6 control-label">
						<a href="#">See a full comparison of our membership levels </a>
					</label>
				</div>
			</div>
			<!-- container -->
			<!-- add associate -->
			<div class="container highlight">
				<div class="row">
					<div class="col-sm-12">
						<h5>Add Associate</h5>
					</div>
					<div class="col-sm-12">
						<div class="form-group">
							<div class="col-sm-12">
								<div class="input-group nl-input">
									<label class="input-group-addon hidden-xs">First Name:</label>
									<input type="text" class="form-control"
										placeholder="First Name">
									<div class="input-group-addon">
										<i class="fa fa-asterisk"></i>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="col-sm-12">
						<div class="form-group">
							<div class="col-sm-12">
								<div class="input-group nl-input">
									<label class="input-group-addon hidden-xs">Last Name:</label>
									<input type="text" class="form-control" placeholder="Last Name">
									<div class="input-group-addon">
										<i class="fa fa-asterisk"></i>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="col-sm-12">
						<div class="form-group">
							<div class="col-sm-12">
								<div class="input-group nl-input">
									<label class="input-group-addon hidden-xs">Email:</label>
									<input type="text" class="form-control" placeholder="Email">
									<div class="input-group-addon">
										<i class="fa fa-asterisk"></i>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="col-sm-12">
						<div class="form-group">
							<div class="col-sm-12">
								<button type="button" class="btn btn-danger btn-highlight">Add</button>
							</div>
						</div>
					</div>
				</div>
			</div>
			<!-- container -->
			<!-- payment section -->
			<div class="container">
				<div class="row">
					<div class="col-sm-12">
						<div class="form-group">
							<label class="col-sm-2 hidden-xs control-label">Credit
								card type:</label>
							<div class="col-sm-10 col-xs-12">
								<select class="form-control">
									<option value="" selected="selected">Credit card type
									</option>
									<option value="VI">Visa</option>
									<option value="MC">MasterCard</option>
									<option value="DS">Discover</option>
									<option value="AX">American Express</option>
								</select>
							</div>
						</div>
						<div class="form-group">
							<label class="col-sm-2 hidden-xs control-label">Credit Card #</label>
							<div class="col-sm-10 col-xs-12">
								<input type="text" class="form-control" placeholder="Credit Card #">
							</div>
						</div>
						<div class="form-group">
							<label class="col-sm-2 hidden-xs control-label">Name on
								Card:</label>
							<div class="col-sm-10 col-xs-12">
								<input type="text" class="form-control"
									placeholder="Name on Card">
							</div>
						</div>
						<div class="form-group">
							<label class="col-sm-2 control-label">Expiration Date:</label>
							<div class="col-sm-10 col-xs-12">
								<input type="text" class="form-control"
									placeholder="Expiration Date">
							</div>
						</div>
					</div>
				</div>
				<!-- member list -->
				<div class="row">
					<div class="col-sm-12">
						<ul class="list-group nl-memberlist">
							<li class="list-group-item active clearfix"><label
								class="pull-left nl-title">MEMBER(S)</label> <label
								class="pull-right nl-title">COST</label></li>
							<%
								for (int i = 0; i < 5; i += 1) {
							%>
							<li class="list-group-item clearfix"><label
								class="pull-left">JULIE SURIANO</label> <label
								class="pull-right">$10.00</label></li>
							<%
								}
							%>
						</ul>

					</div>
					<div class="col-sm-6 col-sm-offset-6">
						<ul class="list-group nl-price-list">
							<li class="list-group-item clearfix">
								<label class="pull-left">PRIOR BALANCE:</label>
								<label class="pull-right">$0.00</label>
							</li>
							<li class="list-group-item clearfix">
								<label class="pull-left">SUB-TOTAL:</label>
								<label class="pull-right">$68.00</label>
							</li>
							<li class="list-group-item clearfix bold">
								<label class="pull-left">TOTAL DUE:</label>
								<label class="pull-right">$68.00</label>
							</li>
						</ul>
					</div>
				</div>
				<div class="row">
					<div class="col-sm-12">
						<div class="form-group nl-submit">
							<button type="button" class="btn btn-primary">BACK</button>
							<button type="submit" class="btn btn-danger">SAVE</button>
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