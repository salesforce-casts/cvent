({
	handleSendData : function(component, event, helper) {
        //var appEvent = $A.get('e.c:nameOfTheEvent');
        var cmpEvent = component.getEvent('cmpEvent');
        
        cmpEvent.setParams({
            message: 'HEY!!! Salesforce Casts'
        });
        
        cmpEvent.fire();
	}
})