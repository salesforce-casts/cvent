public class AccountController{

    public void handleSave(Id AccountId){
         Contact a = new Contact();
         
         a.LastName = 'Salesforce';
         a.AccountId = AccountId;
         insert a;   
         
         System.debug(' 🚀 ' +a);    
    
    }
}