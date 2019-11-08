trigger updateOutletRecord on Outlet__c (before insert) {

    for(Outlet__c o : Trigger.new){
        
        o.Name = o.Name + 'Updated';
        
        
        if(false){
            o.Name = 'Changed once again';
        }
    }

}