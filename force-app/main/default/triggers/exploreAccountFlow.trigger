trigger exploreAccountFlow on Account (after insert) {
    
    for(Account a : Trigger.new){
		//exploreAccountTriggerHelper eath = new exploreAccountTriggerHelper();
		 

        exploreAccountTriggerHelper.utility();
        
        exploreAccountTriggerHelper.helper(a);
        
        //1
        //2
        //3
    }
    
    
    
}

/**

    //Bulkification
    for(Account a : Trigger.new){
    System.debug(' 🚀 ' +a.Name);
    System.debug(' 🚀 ' +a.AccountNumber);
    System.debug(' 🚀 ' +a.Rating);
    }

*/

//Context Variables

//Trigger.new
//Trigger.old
//Trigger.newMap
//Trigger.oldMap
//
//Trigger.isInsert
//Trigger.isUpdate
//Trigger.isDelete
//Trigger.isBefore
//Trigger.isAfter


//Events

// before
// before insert
// before update
// before delete

// after
// after insert
// after update
// after delete
// after undelete