({
	handleDataTransfer : function(component, event, helper) {
        //Application Events
        var appEvent = $A.get('e.c:understandAppEvent');
        
        appEvent.setParams({
            message: component.get(' v.greeting ')
        });
        
        appEvent.fire();
	}
})