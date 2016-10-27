<%@include file="/include/header.jsp"%>
<!-- Modal -->
<div class="modal fade" id="myModal" role="dialog">
	<div class="modal-dialog">
		<!-- Modal content-->
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal">&times;</button>
				<h4 class="modal-title">Modal Header</h4>
			</div>
			<div class="modal-body">
				<p>There are some info. in Add Associate not add yet. R U sure you want to NEXT anyway?</p>
			</div>
			<div class="modal-footer">
				<button type="button" class="btn btn-default modal-Yes" data-dismiss="modal">Yes</button>
				<button type="button" class="btn btn-default modal-No">Add Associate</button>
			</div>
		</div>
	</div>
</div>
<div class="nl-content">
	<div class="form_body">
		<form class="form-horizontal" id="addAssociateForm">
			<div class="container">
				<!-- title -->
				<div class="row">
					<div class="col-sm-12">
						<h1>Add Associate</h1>
					</div>
				</div>
				<!-- Breadcrumbs -->
				<div class="row">
					<ol class="breadcrumb">
						<li><a href="/myaccount/">My Account</a></li>
						<li><a href="/myaccount/addAssociate.jsp">Add Associate</a></li>
					</ol>
				</div>
				<!-- message -->
				<div class="row">
					<div class="col-sm-12">
						<p>Please review the requested changes to your account, then
							enter your payment information below to complete the transaction.</p>
					</div>
				</div>
			</div>
			<!-- container -->
			
			<!-- Primary Member Information -->
			<div class="container highlight">
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
			</div>
			<!-- container -->
			
			<!-- add associate -->
			<div class="container highlight addAssociateSection">
				<div class="row">
				
					<div class="col-sm-12">
						<h5>Add Associate</h5>
					</div>
					
					<!-- First Name -->
					<div class="col-sm-12">
						<label class="control-label col-sm-3 hidden-xs">First Name:</label>
						<div class="col-sm-9">
							<div class="form-group">
								<div class="input-group">
									<input type="text" name="firstName" id="firstName"
										class="form-control requiredInput" placeholder="First Name"
										data-parsley-group="addAssociate"
										data-parsley-trigger="blur"
										data-parsley-pattern="/^[A-z\s\-\.]*$/">
									<span class="input-group-addon"><i class="fa fa-asterisk"></i></span>
       							</div>
							</div>
						</div>
					</div>
					
					<!-- Last Name -->
					<div class="col-sm-12">
						<label class="control-label col-sm-3 hidden-xs">Last Name:</label>
						<div class="col-sm-9">
							<div class="form-group">
								<div class="input-group">
									<input type="text" name="lastName" id="lastName"
										class="form-control requiredInput" placeholder="Last Name"
										data-parsley-group="addAssociate"
										data-parsley-trigger="blur"
										data-parsley-pattern="/^[A-z\s\-\.]*$/">
       							<span class="input-group-addon"><i class="fa fa-asterisk"></i></span>
       							</div>
							</div>
						</div>
					</div>
					
					<!-- Email -->
					<div class="col-sm-12">
						<label class="control-label col-sm-3 hidden-xs">Email:</label>
						<div class="col-sm-9">
							<div class="form-group">
								<input type="email" name="email" id="email"
									class="form-control" placeholder="Email"
									data-parsley-group="addAssociate" data-parsley-trigger="blur">
							</div>
						</div>
					</div>
					
					<!-- Post Code -->
					<div class="col-sm-12">
						<label class="control-label col-sm-3 hidden-xs">Post Code</label>
						<div class="col-sm-9">
							<div class="form-group">
								<input type="text" name="postCode" id="postCode"
									class="form-control" placeholder="Post Code"
									data-parsley-group="addAssociate"
									data-parsley-trigger="blur"
									data-parsley-pattern="/^[A-Za-z]\d[A-Za-z] ?\d[A-Za-z]\d$/">
							</div>
						</div>
					</div>
					
					<!-- Phone -->
					<div class="col-sm-12">
						<label class="control-label col-sm-3 hidden-xs">Phone</label>
						<div class="col-sm-9">
							<div class="form-group">
								<input type="text" name="phone" id="phone" class="form-control"
									placeholder="Phone" data-parsley-group="addAssociate"
									data-parsley-trigger="blur" data-parsley-minlength="6"
									data-parsley-minlength-message="minlength six number"
									data-parsley-pattern="^[\d\+xX\-\.\(\)\/\s]*$">
							</div>
						</div>
					</div>
					
					<!-- date picker dob -->
					<div class="col-sm-12">
						<label class="control-label col-sm-3 hidden-xs">Birthday</label>
						<div class="col-sm-9">
							<div class="form-group">
								<input type="text" name="birthday" id="birthday"
									class="form-control" data-parsley-group="addAssociate"
									data-parsley-minlength="6"
									placeholder="Birthday ( mm/dd/yyyy )">
							</div>
						</div>
					</div>
					
					<!-- Input Type: date dob -->
					<div class="col-sm-12">
						<label class="control-label col-sm-3 hidden-xs">
							<a href="http://parsleyjs.org/doc/examples/custom-validator-events.html">Birthday</a>
						</label>
						<div class="col-sm-9">
							<div class="form-group">
								<input type="date" name="birthday2" id="birthday2"
									class="form-control" placeholder="Birthday ( mm/dd/yyyy )"
									data-parsley-trigger="blur" data-parsley-group="addAssociate"
									data-date-format="MM/DD/YYYY"
									data-parsley-isdate="true"
									data-parsley-mindate="12/31/1950"
									data-parsley-maxdate="12/31/2000">
							</div>
						</div>
					</div>
					
					
					
					<!-- dob -->
					<div class="col-sm-12">
						<label class="control-label col-sm-3 hidden-xs">Birthday</label>
						<div class="col-sm-3">
							<div class="form-group">
								<select class="form-control">
									<option value="">MM</option>
									<%
										for (int i = 1; i <= 12; i += 1) {
									%>
									<option value='<%=i%>'><%=i%></option>
									<%
										}
									%>
								</select>
							</div>
						</div>
						<div class="col-sm-3">
							<div class="form-group">
								<select class="form-control">
									<option value="">DD</option>
									<%
										for (int i = 1; i <= 31; i += 1) {
									%>
									<option value='<%=i%>'><%=i%></option>
									<%
										}
									%>
								</select>
							</div>
						</div>
						<div class="col-sm-3">
							<div class="form-group">
								<select class="form-control">
									<option value="">YYYY</option>
									<%
										for (int i = 2000; i >= 1950; i--) {
									%>
									<option value='<%=i%>'><%=i%></option>
									<%
										}
									%>
								</select>
							</div>
						</div>
					</div>
					
					
					<!-- button -->
					<div class="col-sm-12">
						<div class="form-group">
							<div class="col-sm-12">
								<button type="button" class="btn btn-danger btn-highlight addAssociateBtn">Add</button>
							</div>
						</div>
					</div>
				</div>
			</div>
			<!-- container -->
			
			
			
			<!-- upgrade -->
			<div class="container">
				<div class="row block">
					<div class="col-sm-6">
						<select class="form-control">
							<option disabled value="B">Basic</option>
							<option selected="selected" value="P">Plus</option>
							<option value="RV">Plus RV</option>
							<option value="PR">Premier</option>
							<option value="PRV">Premier RV</option>
						</select>
					</div>
					<label class="col-sm-6 control-label">
						<a href="#">See a full comparison of our membership levels </a>
					</label>
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
							<li class="list-group-item clearfix">
								<label class="pull-left">JULIE SURIANO</label>
								<label class="pull-right">$10.00</label>
							</li>
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
							<button type=button id="next" class="btn btn-danger">SAVE</button>
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

<script type="text/javascript">
/* has Associate Info */
function hasUnAddAssociate() {
	
	var i = 0;
	$('.addAssociateSection').find(':input').each(function() {
		if($(this).val() != "") i++;
	});
	return i>0;
}

/* empty Associate Info */
function emptyAssocInfo() {
	
	$('.addAssociateSection').find(':input').each(function() {
		$(this).val("");
	});
	
	$('#addAssociateForm').parsley().reset();
	
}

$(document).ready(function() {
	
	$('.modal-Yes').on('click', function() {
		emptyAssocInfo();
		//submit form;
	});
	
	$('.modal-No').on('click', function() {
		$("#myModal").modal("hide");
		$('.addAssociateBtn').click();
	});
	
	
	$('#next').on('click', function(ev) {
		//ev.preventDefault();
		
		console.log("hasUnAddAssociate: " + hasUnAddAssociate());
		if(hasUnAddAssociate()){
			$("#myModal").modal("show");
		}
	});
	
	
	$('.addAssociateBtn').click(function() {
		//set data-parsley-required for associate
		var requiredInput = $('.requiredInput');
		requiredInput.each(function() {
			 $(this).attr('data-parsley-required', "true");
		});
		
		if ($('#addAssociateForm').parsley().validate({group: 'addAssociate'})){
			console.log("#addAssociateForm is validated");
			
			//add members
			var name = $('#lastName').val() + " " + $('#firstName').val();
			$('.nl-memberlist').append('<li class="list-group-item clearfix"><label class="pull-left">' + name + '</label><label class="pull-right">$10.00</label></li>');
			
			//clear addAssociateSection input
			emptyAssocInfo();
		}
		//init data-parsley-required for associate
		requiredInput.each(function() {
			 $(this).attr('data-parsley-required', "false");
		});
		
	});	
	
	//for date picker
	$(function() {
		$("#birthday").datepicker();
	});
	
	//Validator for date
	window.Parsley
    .addValidator('isdate', function (value, requirement) {
    	console.log("isdate validation start.");
    	if(requirement=='true') {
    		console.log("validation is not required.");
    		return false;
    	}
    	console.log("validation is required.");
    	if (value.length !== 10) {
    		console.log("lenght is worng.");
            return false; 
        }
    	var objDate,  // date object initialized from the ExpiryDate string 
	        mSeconds, // ExpiryDate in milliseconds 
	        day,      // day 
	        month,    // month 
	        year;     // year 
        // third and sixth character should be '-' 
        //if (ExpiryDate.substring(2, 3) !== '/' || ExpiryDate.substring(5, 6) !== '/')
        if (value.substring(4, 5) !== '-' || value.substring(7, 8) !== '-') {
        	console.log("formate is worng.");
            return false; 
        }
	        
        /* month = ExpiryDate.substring(0, 2) - 1;
        day = ExpiryDate.substring(3, 5) - 0; 
        year = ExpiryDate.substring(6, 10) - 0;  */
        
        month = value.substring(5, 7) - 1; // because months in JS start from 0 
        day = value.substring(8, 10) - 0; 
        year = value.substring(0, 4) - 0;
        console.log(year + '-' + month + '-' + day);
    	
     	// convert ExpiryDate to milliseconds 
        mSeconds = (new Date(year, month, day)).getTime(); 
        // initialize Date() object from calculated milliseconds 
        objDate = new Date(); 
        objDate.setTime(mSeconds);
        console.log(objDate.getFullYear() + "-" + objDate.getMonth() + '-' +objDate.getDate());
        // compare input date and parts from Date() object 
        // if difference exists then date isn't valid 
        if (objDate.getFullYear() !== year || 
            objDate.getMonth() !== month || 
            objDate.getDate() !== day) { 
            return false; 
        } 
        // otherwise return true 
        return true;
    }, 32)
    .addMessage('en', 'isdate', 'This date should be a validate date');
	
	//Validator for mindate
	window.Parsley
    .addValidator('mindate', function (value, requirement) {
        // is valid date?
        console.log("mindate validation start.");
        var timestamp = Date.parse(value),
            minTs = Date.parse(requirement);

        return isNaN(timestamp) ? false : timestamp > minTs;    
    }, 32)
    .addMessage('en', 'mindate', 'This date should be greater than %s');
	
	//Validator for maxdate
	window.Parsley
    .addValidator('maxdate', function (value, requirement) {
    	console.log("maxdate validation start.");
        // is valid date?
        var timestamp = Date.parse(value),
            maxTs = Date.parse(requirement);

        return isNaN(timestamp) ? false : timestamp < maxTs;    
    }, 32)
    .addMessage('en', 'maxdate', 'This date should be less than %s');
	
	
	/* config parsley */
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

	/* Init parsley */
	$('#addAssociateForm').parsley(parsleyOptions);

});
</script>