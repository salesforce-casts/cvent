({
	receiveData : function(component, event, helper) {
		
        var finalData = event.getParam('message');
        
		component.set( 'v.dataReceived', finalData);
        
	}
})