@isTest
private class updateOutletRecordTestClass{

    static testMethod void invokeTrigger(){
    
        Outlet__c o = new Outlet__c();
        
        o.Name = 'Test';
        o.Outlet_Location__c = 'Hyderabad';
        
        insert o;
    
    }

}