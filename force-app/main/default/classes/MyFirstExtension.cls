public class MyFirstExtension {

    public List<Account> accounts {set; get;}

    public MyFirstExtension(ApexPages.StandardController controller) {
        System.debug(' 🚀 ' +controller.getRecord());
        
        Account a = (Account)controller.getRecord();
        
        System.debug(' 🚀 ' + a.Name);
        System.debug(' 🚀 ' + a.Rating);
        System.debug(' 🚀 ' + a.AccountNumber);
        
    }
    
    public void customMethod(){
       
        //SOQL - Salesforce Object Query Langauge
        
        accounts = [SELECT Id, Name, Rating, AccountNumber FROM Account ORDER BY Name ASC LIMIT 10 OFFSET 5];
        
        System.debug(' 🚀 ' +accounts);
    
    }

}