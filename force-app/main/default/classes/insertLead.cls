public with sharing class insertLead {
  @AuraEnabled
  public static Lead insertLead(
    String firstName,
    String lastName,
    String company,
    String email,
    Boolean prequalified
  ) {
    Lead lead = new Lead(
      FirstName = firstName,
      LastName = lastName,
      Company = company,
      Email = email,
      Prequalified__c = prequalified
    );

    insert lead;
    return lead;
  }
}