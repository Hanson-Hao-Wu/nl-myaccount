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