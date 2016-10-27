<%@include file="/include/header.jsp"%>

<div class="nl-content">
	<div class="form_body">
		<div class="container">
			<!-- title -->
			<div class="row">
				<div class="col-sm-12">
					<h1>Remote Parsley</h1>
				</div>
			</div>
			<!-- Breadcrumbs -->
			<div class="row">
				<ol class="breadcrumb">
					<li><a href="/myaccount/">My Account</a></li>
					<li><a href="/myaccount/remoteParsley.jsp">Remote Parsley</a></li>
				</ol>
			</div>
			<!-- message -->
			<div class="row">
				<div class="col-sm-12">
					<p>Please change password</p>
				</div>
			</div>
			<!-- change password form -->
			<form id="changePassword" class="form-horizontal">
				<div class="highlight clearfix">
					<div class="row">
						<div class="col-sm-12">
							<h5>Parsley</h5>
						</div>
						<!-- username required field -->
						<div class="col-sm-12">
							<label class="control-label col-sm-3 hidden-xs">Username</label>
							<div class="col-sm-9">
								<div class="form-group">
									<div class="input-group">
										<input type="text" name="username" id="username"
											class="form-control" placeholder="Username"
											data-parsley-trigger="blur" data-parsley-length="[4, 20]"
											required>
										<span class="input-group-addon"><i class="fa fa-asterisk"></i></span>
        							</div>
								</div>
							</div>
						</div>
						<!-- password required field -->
						<div class="col-sm-12">
							<label class="control-label col-sm-3 hidden-xs">Password</label>
							<div class="col-sm-9">
								<div class="form-group">
									<div class="input-group">
										<input type="text" name="password" id="password"
											class="form-control" placeholder="Password"
											data-parsley-trigger="blur" data-parsley-length="[4, 20]"
											required>
										<span class="input-group-addon"><i class="fa fa-asterisk"></i></span>
        							</div>
								</div>
							</div>
						</div>
						<!-- confirmPassword required field -->
						<div class="col-sm-12">
							<label class="control-label col-sm-3 hidden-xs">Confirm Password</label>
							<div class="col-sm-9">
								<div class="form-group">
									<div class="input-group">
										<input type="text" name="confirmPassword" id="confirmPassword"
											class="form-control" placeholder="Confirm Password"
											data-parsley-equalto="#password"
											data-parsley-trigger="blur" data-parsley-length="[4, 20]"
											required>
										<span class="input-group-addon"><i class="fa fa-asterisk"></i></span>
        							</div>
								</div>
							</div>
						</div>
						<!-- email required field -->
						<div class="col-sm-12">
							<label class="control-label col-sm-3 hidden-xs">Email</label>
							<div class="col-sm-9">
								<div class="form-group">
									<div class="input-group">
										<input type="email" name="email" id="email"
											class="form-control" placeholder="Email"
											data-parsley-trigger="blur"
											data-parsley-remote data-parsley-remote-validator='mycustom'>
										<span class="input-group-addon"><i class="fa fa-asterisk"></i></span>
        							</div>
								</div>
							</div>
						</div>
						
						<!-- Post Code not required field -->
						<div class="col-sm-12">
							<label class="control-label col-sm-3 hidden-xs">Post Code</label>
							<div class="col-sm-9">
								<div class="form-group">
									<input type="text" name="postCode" id="postCode"
										class="form-control" placeholder="Post Code"
										data-parsley-pattern="/^[A-Za-z]\d[A-Za-z] ?\d[A-Za-z]\d$/"
										data-parsley-trigger="blur">
								</div>
							</div>
						</div>
						<!-- URL not required field -->
						<div class="col-sm-12">
							<label class="control-label col-sm-3 hidden-xs">URL</label>
							<div class="col-sm-9">
								<div class="form-group">
									<input type="url" name="url" id="url" class="form-control"
										placeholder="URL" data-parsley-type="url"
										data-parsley-trigger="blur">
								</div>
							</div>
						</div>
						<div class="col-sm-12">
							<div class="form-group">
								<div class="col-sm-12">
									<input value="submit" class="btn btn-danger btn-highlight" />
								</div>
							</div>
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
<script type="text/javascript">
//work with bootstrap 3
$(document).ready(function() {
	var parsleyOptions = {
		successClass : 'has-success',
		errorClass : 'has-error',
		classHandler : function(_el) {
			return _el.$element.closest('.form-group');
		},
		errorsContainer : function(el) {
			return el.$element.closest(".form-group");
		},
		errorsWrapper : "<em class='help-block'></em>",
		errorTemplate : "<em></em>"
	};
	
	//http://parsleyjs.org/doc/#remote-custom
	window.Parsley.addAsyncValidator('mycustom', function (xhr) {

    	console.log(this.$element);
    	console.log(xhr.responseText);
		console.log("$.parseJSON(xhr.responseText)" + $.parseJSON(xhr.responseText));
		console.log("$.parseJSON(xhr.responseText)" +  $.parseJSON(xhr.responseText).valid );
		return $.parseJSON(xhr.responseText).valid;
		return 404 === xhr.status;
  	}, 'https://dev.nyaaa.com/join/validateEmail.do',
	  	{	"xhrFields": { "withCredentials": true },
			"type": "GET",
			/* "dataType": "jsonp", */
			 "data": { "email": function(){return $("#email").val()} }
		}
  	);
	$('#changePassword').parsley(parsleyOptions);
});
</script>