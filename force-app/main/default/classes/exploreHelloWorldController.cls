/** public - access specifier
    class - keyword
    exploreHelloWorldController - nameOfTheClass
    */
public class exploreHelloWorldController {
    
    /** Primitive Data Types */
    
    /**
        String = 'This has to be given in single quotes'
        Integer = 12, 34, 45
        Decimal = 2.9090, 5.667
        Boolean = true/false
        Double = Long Integer
        
        List
        Map
        Set
    
    */        
    
    
    /** Custom Data Types */
    
    /**
    * 
    * Rajinikanth
    * 
    * /

	/** Constructor */
    
    /**
    * 1. Constructor is not going to have return type
    * 2. Constructor gets invoked automatically when the class is initilaised where as method has to be 
    	 invoked by the user input.
    */
    public exploreHelloWorldController(){
        System.debug(' 🚀 ');
    }
    
    /** public - access specifier
void - returnType
foobar - nameOfTheMethod
*/
    public PageReference foobar(){
        
        understandAuthnticationHelper.foo();
        
        PageReference pr = new PageReference('/apex/destinationPage');
        return pr;
    }
    
    public PageReference foo(){
        
        understandAuthnticationHelper.foo();
        
        PageReference pr = new PageReference('/apex/destinationPage');
        return pr;
    }
    
    
}