({
	handleLoad : function(component, event, helper) {
		var toast = $A.get('e.force:showToast');
        toast.setParams({
            'title': 'error',
            'message': 'You are logged in Standard User and you cannot update the record'
        });
        toast.fire();
	},
    
    handleSubmit : function(component, event, helper) {
		console.log('on submit');
        var fields = event.getParam('fields');
        
        var toast = $A.get('e.force:showToast');
        toast.setParams({
            'title': 'success',
            'message': 'Account Name has been changed to' + fields.Name
        });
        toast.fire();
	}
})