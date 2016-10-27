<%-- <%@include file="/include/header.jsp"%> --%>

<div class="nl-content">
<h4>Correctly fill at least one of these blocks</h4>
<form class="" action="/customers/topup" method="post" id="topupForm">
	<div data-parsley-check-children="3" data-parsley-validate-if-empty="">
	  	<div class="form-group">
	  		<label class="col-sm-5 col-sm-offset-2 control-label">Balance</label>
	  		<label class="col-sm-5 control-label">Rewards</label>
	  	</div>
	  	
	    <div class="first">
			<label class="col-sm-2 control-label">Cash</label>
			<div class="col-sm-5">
			    <div class="form-group">
					<div class="input-group">
						<span class="input-group-addon">$</span>
					    <input type="text" placeholder="0.0"
							name="cashBalance"
							class="form-control"
							data-parsley-trigger="blur"
							data-parsley-pattern="^\d+(\.\d{1,2})?$"/>
					</div>
				</div>
			</div>
			<div class="col-sm-5">
				<div class="form-group">
					<div class="input-group">
					    <input type="text" placeholder="0.0"
							name="cashRewards"
							class="form-control"
							data-parsley-trigger="blur"
							data-parsley-pattern="^\d+(\.\d{1,2})?$"/>
						<span class="input-group-addon">Times</span>
					</div>
				</div>
			</div>
	    </div>
	
	    <div class="second">
			<label class="col-sm-2 control-label">Credit</label>
			<div class="col-sm-5">
			    <div class="form-group">
					<div class="input-group">
						<span class="input-group-addon">$</span>
					    <input type="text" placeholder="0.0"
							name="creditBalance"
							class="form-control"
							data-parsley-trigger="blur"
							data-parsley-pattern="^\d+(\.\d{1,2})?$"/>
					</div>
				</div>
			</div>
			<div class="col-sm-5">
				<div class="form-group">
					<div class="input-group">
					    <input type="text" placeholder="0.0"
							name="creditRewards"
							class="form-control"
							data-parsley-trigger="blur"
							data-parsley-pattern="^\d+(\.\d{1,2})?$"/>
						<span class="input-group-addon">Times</span>
					</div>
				</div>
			</div>
	    </div>
	    
	    <div class="third">
			<label class="col-sm-2 control-label">Sauna</label>
			<div class="col-sm-5">
			    <div class="form-group">
					<div class="input-group">
						<span class="input-group-addon">$</span>
					    <input type="text" placeholder="0.0"
							name="saunaBalance"
							class="form-control"
							data-parsley-trigger="blur"
							data-parsley-pattern="^\d+(\.\d{1,2})?$"/>
					</div>
				</div>
			</div>
			<div class="col-sm-5">
				<div class="form-group">
					<div class="input-group">
					    <input type="text" placeholder="0.0"
							name="saunaRewards"
							class="form-control"
							data-parsley-trigger="blur"
							data-parsley-pattern="^\d+(\.\d{1,2})?$"/>
						<span class="input-group-addon">Times</span>
					</div>
				</div>
			</div>
		</div>
	</div>
	
	<hr>
	
	<div class="col-sm-5 col-sm-offset-2">
		<div class="form-group">
			<div class="input-group">
				<span class="input-group-addon">Payment Method</span>
			    <select class="form-control">
			    	<option value="vi">VISA</option>
			    	<option value="mc">MASTER CARD</option>
			    	<option value="DEBIT">DEBIT</option>
			    </select>
			</div>
		</div>
	</div>
	<div class="col-sm-5">
		<div class="form-group">
			<div class="input-group">
				<span class="input-group-addon">Amount</span>
			    <input type="text" placeholder="0.0"
					name="charge"
					data-parsley-required
					class="form-control"
					data-parsley-trigger="blur"
					data-parsley-pattern="^\d+(\.\d{1,2})?$"/>
			</div>
		</div>
	</div>
	
	<div class="form-group">
		<div class="col-sm-offset-2 col-sm-10">
		    <button type="submit" class="btn btn-default">submit</button>
		</div>
	</div>
</form>
</div>

<%@include file="/include/footer.jsp"%>
<script type="text/javascript">
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

$(function () {
  Parsley.addValidator('checkChildren', {
    messages: {en: 'You must correctly fill at least one of these blocks!'},
    requirementType: 'integer',
    validate: function(_value, requirement, instance) {
      for(var i = 1; i <= requirement; i++)
        if (instance.parent.isValid({group: 'block-' + i, force: true}))
          return true; // One section is filled, this check is valid
      return false; // No section is filled, this validation fails
    }
  });

Parsley.on('form:submit', function() {
	if($( "input[name='cashBalance']" ).val()==""){$( "input[name='cashBalance']" ).val(0.0)}
	if($( "input[name='cashRewards']" ).val()==""){$( "input[name='cashRewards']" ).val(0.0)}
	if($( "input[name='creditBalance']" ).val()==""){$( "input[name='creditBalance']" ).val(0.0)}
	if($( "input[name='creditRewards']" ).val()==""){$( "input[name='creditRewards']" ).val(0.0)}
	if($( "input[name='saunaBalance']" ).val()==""){$( "input[name='saunaBalance']" ).val(0.0)}
	if($( "input[name='saunaRewards']" ).val()==""){$( "input[name='saunaRewards']" ).val(0.0)}
	alert("The form would be submitted at this point. For this demo, we interrupt the processing.");
    return false; // Don't submit for this demo
});
  
  $('#topupForm').parsley(parsleyOptions);
  $('#topupForm').parsley({
    inputs: Parsley.options.inputs + ',[data-parsley-check-children]'
  });
});
</script>