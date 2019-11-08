({
	handleReceiveData : function(component, event, helper) {
		var msg = event.getParam('message');
        
        console.log(msg);
        
        component.set( 'v.finalMessage', msg);
	}
})