public with sharing class ContactAndLeadSearch {
  @AuraEnabled(cacheable=true)
  public static List<List<sObject>> searchContactsAndLeads(String parameter) {
    List<List<sObject>> result = [
      FIND :parameter
      IN ALL FIELDS
      RETURNING Contact(Id, Name), Lead(Id, Name)
    ];
    System.debug(result);
    return result;
  }
}