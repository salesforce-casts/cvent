public class exploreVariables {
    
    public List<Account> a {set; get;}
    
    public exploreVariables(){

        a = [SELECT Id, Name, Rating FROM Account];
    }
    
}