<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>My Account</title>
<%@include file="/static/include/css.jsp"%>
</head>
<body>
	<%@include file="/static/include/nav.jsp"%>


	<div class="nl-content">
		<div class="contrainer">
			<div class="row">

				<div id="login_enroll" class="col-sm-6 col-sm-offset-3">
					<ul class="nav nav-tabs" id="login_enroll-tab" role="tablist">
						<li role="presentation" class="active"><a href="#login" id="login-tab" data-toggle="tab" aria-controls="login" aria-expanded="false">Login</a></li>
						<li role="presentation" class=""><a href="#enroll" id="enroll-tab" data-toggle="tab" aria-controls="enroll" aria-expanded="true">enroll</a></li>
					</ul>
					<div class="tab-content">
						<div class="tab-pane fade active in" id="login" aria-labelledby="login-tab">
							<form action="" id="loginForm">
								<p>&nbsp;</p>
								<div class="form-group">
									<input type="text" class="form-control" name="username" placeholder="username"
										data-parsley-length="[5, 10]"
										data-parsley-trigger="blur"
										data-parsley-required>
								</div>
								<div class="form-group">
									<input type="password" class="form-control" name="password" placeholder="password"
										data-parsley-length="[5, 10]"
										data-parsley-trigger="blur"
										data-parsley-required>
								</div>
								<button type="submit" class="btn btn-primary">Login</button>
							</form>
						</div>
						<div class="tab-pane fade" id="enroll" aria-labelledby="enroll-tab">
							<form action=""  id="enrollForm">
								<p>&nbsp;</p>
								<div class="form-group">
									<input type="text" class="form-control" name="username" placeholder="username"
										data-parsley-length="[5, 10]"
										data-parsley-trigger="blur"
										data-parsley-required>
								</div>
								<div class="form-group">
									<input type="email" class="form-control" name="email" placeholder="email"
										data-parsley-length="[5, 10]"
										data-parsley-trigger="blur"
										data-parsley-required>
								</div>
								<div class="form-group">
									<input type="password" class="form-control" name="password" placeholder="password"
										data-parsley-length="[5, 10]"
										data-parsley-trigger="blur"
										data-parsley-required>
								</div>
								<button type="submit" class="btn btn-primary">Enroll</button>
							</form>
						</div>
					</div>
				</div>
				<!-- login_enroll -->
			</div>
			<!-- row -->
		</div>
		<!-- contrainer -->
	</div>
	<!-- nl-content -->

	<footer>
	<div class="container">
		<p class="pull-right">
			<a href="#top">To Top</a>
		</p>
		<p>© 2016 Newland Group</p>
	</div>
	</footer>
	<%@include file="/static/include/js.jsp"%>
<script type="text/javascript">
	jQuery(document).ready(function($) {
		

		/* Init parsley */
		$('#loginForm').parsley(parsleyOptions);
		$('#enrollForm').parsley(parsleyOptions);
		
		//init tab
		$('#login_enroll-tab a').click(function(e) {
			e.preventDefault()
			$(this).tab('show')
		})
	});
</script>
</body>
</html>