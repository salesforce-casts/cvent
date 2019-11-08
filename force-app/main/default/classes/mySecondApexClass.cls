public class mySecondApexClass{


    public String varOne{set; get;}
    public String varTwo{set; get;}
    public Boolean varThree{set; get;}
    public String varFour{set; get;}
    public String varFive{set; get;}

    //Constructor
    public mySecondApexClass(){
        System.debug('Am in constructor'); 
    
    }

    //Method
    public void save(){
        
        varOne = VarOne + ' Updated';
        
    }
    
    public PageReference cancel(){
        return new PageReference('/apex/myFirstVFPage');
    
    }

}