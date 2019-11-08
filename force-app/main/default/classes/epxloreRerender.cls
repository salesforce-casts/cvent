public class epxloreRerender {

    public String message{set;get;}
    public String todayCustom{set;get;}
    
    public epxloreRerender(){
        message = 'HM... am still being old';
        todayCustom = 'I dont know';
    }

    public void handleUpdate() {
        message = 'HEYYYYY!! Am being updated';
        todayCustom = 'Today is Monday';
    }

}