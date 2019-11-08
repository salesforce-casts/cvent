public class AccountHelper{

    public static void createAccount(){
    
        Account a = new Account();
        a.Name = 'Krishna Teja Updated';
        a.Rating = 'Hot';
        a.AccountNumber = '24353';
        
        insert a;
        
    }
    
    public void UpdateAccount(){
    
        Account a = new Account();
        a.Name = 'Krishna Teja';
        a.Rating = 'Hot';
        a.AccountNumber = '24353';
        
        insert a;
        
    }

}