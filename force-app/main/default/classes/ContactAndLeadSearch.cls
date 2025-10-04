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

public class Person {
  String name;
  Integer age;
 Person(String name, Integer age){
  this.name = name;
  this.age = age;
 }
}
