@isTest
private class updateOutletRecord{

    @isTest static void testOutletTrigger(){
    
        Outlet__c o = new Outlet__c();
        
        o.Name = 'test';
        
        o.outlet_Location__c = 'test';
        
        insert o;
    }
}