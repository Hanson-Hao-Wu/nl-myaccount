<%@include file="/include/header.jsp"%>

<div class="nl-content">
	<div class="form_body">
		<div class="container">
			<!-- title -->
			<div class="row">
				<div class="col-sm-12">
					<h1>Change Password</h1>
				</div>
			</div>
			<!-- Breadcrumbs -->
			<div class="row">
				<ol class="breadcrumb">
					<li><a href="/myaccount/">My Account</a></li>
					<li><a href="/myaccount/changePassword.jsp">Change Password</a></li>
				</ol>
			</div>
			<!-- message -->
			<div class="row">
				<div class="col-sm-12">
					<p>Please change password</p>
				</div>
			</div>
		</div>
		<!-- container -->
		
		<!-- change password form -->
		<form id="changePassword" class="form-horizontal">
			<div class="container highlight">
				<div class="row">
					<div class="col-sm-12">
						<h5>Change Password</h5>
					</div>
					<!-- username required field -->
					<div class="col-sm-12">
						<label class="control-label col-sm-3 hidden-xs">Username</label>
						<div class="col-sm-9">
							<div class="form-group">
								<div class="input-group">
								<input type="text" name="username" id="username" class="form-control" placeholder="Username">
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
								<input type="text" name="password" id="password" class="form-control" placeholder="Password">
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
								<input type="text" name="confirmPassword" id="confirmPassword" class="form-control" placeholder="Confirm Password">
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
								<input type="email" name="email" id="email" class="form-control" placeholder="Email">
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
								<input type="text" name="postCode" id="postCode" class="form-control" placeholder="Post Code">
							</div>
						</div>
					</div>
					<!-- URL not required field -->
					<div class="col-sm-12">
						<label class="control-label col-sm-3 hidden-xs">URL</label>
						<div class="col-sm-9">
							<div class="form-group">
								<input type="url" name="url" id="url" class="form-control" placeholder="URL">
							</div>
						</div>
					</div>
					<div class="col-sm-12">
						<div class="form-group">
							<div class="col-sm-12">
								<button type="submit" class="btn btn-danger btn-highlight">Add</button>
							</div>
						</div>
					</div>
				</div>
			</div><!-- container -->
		</form>
		
	</div>
	<!-- form_body -->

	<%@include file="/include/sidebar.jsp"%>
</div>

<%@include file="/include/footer.jsp"%>
<script type="text/javascript">
$(document).ready(function(){
	$.validator.addMethod("POSTCODE", function(value, element) {
        return this.optional(element) || /^[A-Za-z]\d[A-Za-z] ?\d[A-Za-z]\d$/i.test(value);
    }, "postcode is invalid: Please enter a valid postcode e.g.'A1A1A1'");
	//http://stackoverflow.com/questions/280759/jquery-validate-how-to-add-a-rule-for-regular-expression-validation
	jQuery.validator.addMethod("wuhaoEmail", function(value,element){
		return this.optional(element) || /^.+@hao.com$/.test(value);
	},"only @hao.com email can pass the validation.");
	$("#changePassword").validate({
		debug:true,//debug mode, won't submit
		
		highlight: function(element) {
	        $(element).closest('.form-group').addClass('has-error');
	    },
	    unhighlight: function(element) {
	        $(element).closest('.form-group').removeClass('has-error').addClass('has-success');
	    },
		rules:{
			username:{                
				required:true,
				minlength:3
			},
			password:{
				required:true,
				rangelength:[6,12]
			},
			confirmPassword:{
				required:true,
				rangelength:[6,12],
				equalTo:"#password"
			},
			//instead of json, this string can also set mutiiple requirement
			email:"required wuhaoEmail",
			postCode:"POSTCODE"
		},
		messages:{
			username:{
				required:"Username is required.",//default is "This field is required."
				rangelength:"Length of username should longer than 3."
			},
			password:{
				required:"Password is required.",
				rangelength:"Length of username should between 6 -12."
			},
			confirmPassword:{
				required:"Password is required.",
				rangelength:"Length of username should between 6 -12.",
				equalTo:"Please enter the same password as above"
			},
			email:{
				required:"email is required"
			},
			postCode:{
				//rangelength:"Post code shold be 6 charctise",
				regax:"/^[\d\s]+$/"
			}
			
		},
		errorElement: 'em',
	    errorClass: 'help-block',
	    errorPlacement: function(error, element) {
	        if(element.parent('.input-group').length) {
	            error.insertAfter(element.parent());
	        } else {
	            error.insertAfter(element);
	        }
	    }
		//http://stackoverflow.com/questions/18754020/bootstrap-3-with-jquery-validation-plugin
		//http://getbootstrap.com/css/#forms-control-focus
	});
});
</script>