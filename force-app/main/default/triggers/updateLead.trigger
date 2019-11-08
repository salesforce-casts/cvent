trigger updateLead on CampaignMember (before insert) {


    for(CampaignMember l : Trigger.new){
        System.debug('------'+l.lead.RecordTypeId);

    }

}