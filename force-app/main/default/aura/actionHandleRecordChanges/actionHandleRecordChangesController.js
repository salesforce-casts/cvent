({
	recordUpdatedHandler : function(component, event, helper) {
        //Step1:
        var evtParams = event.getParams();
      	console.log(JSON.stringify(evtParams));
        //Step2: Get the Change Type
        if(evtParams.changeType === "CHANGED"){
            
            //Step3: Get the changed fields
            var changedFields = evtParams.changedFields;
            
            console.log(changedFields);
            
            var resultsToast = $A.get("e.force:showToast");
            resultsToast.setParams({
                "title": "Updated",
                "message": "The record is updated" 
            });
            resultsToast.fire();
            
            
        }else if(evtParams.changeType === "LOADED"){
            
        }else if(evtParams.changeType === "REMOVED"){
            
        }else if(evtParams.changeType === "ERROR"){
            
        }else{
            
        }
		
	}
})