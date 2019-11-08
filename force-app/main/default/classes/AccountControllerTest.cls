@isTest
private class AccountControllerTest{

    @isTest static void validateFoobar(){
    
        Account a = new Account();
        
        a.Name = 'Test';
        
        insert a;
        
        
        AccountController ac =  new AccountController();
        ac.handleSave(a.Id);
    
    }

}