public class TaskManagerController {
    

    public String newTask {set;get; }
    private String loggedInUserId;
    public List<multiRowTasks> tasks { get; set; }
    private List<Task__c> updateTasks;
    
    public TaskManagerController(){
        loadTaskRecords();
    }
    
    public void handleSave(){
        Task__c t = new Task__c();
        t.Name = newTask;
        insert t;
        loadTaskRecords();
    }
    
    public void loadTaskRecords(){
        
        tasks = new List<multiRowTasks>();
        loggedInUserId = UserInfo.getUserId();
        for (List<Task__c> cs : [SELECT Id, Name FROM Task__c WHERE (Completed__c =: false AND CreatedById =: loggedInUserId)]) {
            for (Task__c c : cs) {
                multiRowTasks MRC = new multiRowTasks();
                MRC.ID = c.ID;
                MRC.Checked = false;
                MRC.Name = c.Name;
                
                tasks.add(MRC);
            }
        }
        
        
    }
    
    private class multiRowTasks {
        public String ID { get; set; }
        public String Name { get; set; }
        public Boolean Checked { get; set; }
        
    }
    
    public void markComplete(){
		 updateTasks = new List<Task__c>();
        
        for (multiRowTasks MRC : tasks) {
            if(MRC.Checked){
                Task__c t = new Task__c();
                t.Id = MRC.ID;
                t.Completed__c = true;

                updateTasks.add(t);
            }
                
        }
        update updateTasks;
        loadTaskRecords();
        
    }
    
}