({
	doInit : function(component, event, helper) {
		//Contact c = new Contact();
        component.find("contactRecord").getNewRecord(
        		"Contact", //SObject
            	null,  //recordTypeId
            	false, // Skip Cache
    			
  		        $A.getCallback(function(){
                	var rec = component.get(' v.newContactCreate ');
                    var error = component.get(' v.newContactError ');
                	
                    if( error || (rec === null) ){
						console.log(' 💥 ' + 'Error initializing record template');
                    }else{
                        console.log(' 💥 ' + 'Record template is initialized');
                    }                 
				}));
	    
	},
    
    
    handleSaveFun: function(component, event, helper){
        var recId = component.get(' v.recordId ');
        component.set("v.simpleNewContact.AccountId", recId);
        
        console.log(' 💥 ' + recId);
		console.log(component.get("v.simpleNewContact.AccountId"));
        
        component.find("contactRecord").saveRecord($A.getCallback(function(saveResult){
            
            console.log(JSON.stringify(saveResult));
            
            
            if(saveResult.state === "SUCCESS" || saveResult.state === "DRAFT"){
                var resultsToast = $A.get("e.force:showToast");
                resultsToast.setParams({
                    "title": "Saved",
                    "message": "The record is Saved"
                });
                resultsToast.fire();
                
            }else if(saveResult.state === "INCOMPLETE"){
                console.log("User is Offline");
            }else if(saveResult.state === "ERROR"){
				console.log("Prblem saving contact, Error");                
            }else{
                console.log("Unknown");
            }
            
        }));
        
    }
})