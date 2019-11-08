trigger updateLeads on Lead (before update) {


    for(Lead l : Trigger.new){
        System.debug('------');

    }

}