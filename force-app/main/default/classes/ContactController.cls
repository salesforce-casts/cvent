public with sharing class ContactController {
    @AuraEnabled
    public static Contact getContact() {
        return [select Id, Name, Email from Contact Limit 1];
    }
}