public class quickExp {

    /**
        1. Both classes and Extensions are similar with few key difference here and there. 
        Classes will not have any mandatory constructors. Where as Extenions should have a mandatory constructor.
        
        2. At any point of time we can only assosiate one VF page with one class,
         where as we can have upto 5 extensions for a VF page    
    */

    public quickExp(ApexPages.StandardController controller) {

    }
    
    public void save(){
    }
    
    public void calculate(){
        Integer i = add(10,20);
        Integer j = sub(60,10);
    }
    
    public Integer add(Integer x, Integer y){
    
        return x+y;
    }
    
    public Integer sub(Integer x, Integer y){
    
        return x-y;
    }

}