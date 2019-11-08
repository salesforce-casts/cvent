({
	handleDataTransfer : function(component, event, helper) {
		
        var cmpEvent = $A.get("e.c:exploreCustomApplicationEvents");     	
        
        cmpEvent.setParams({
            "message": "Hello World"
        });
        
        //console.log(' 💥 ' + JSON.stringify(cmpEvent));
        
        cmpEvent.fire();
        
        
        
	}
})