public with sharing class LeadConversionService {
  @InvocableMethod(
    label='Convert Lead to Account/Contact/Opportunity'
    description='Converts a Lead record into Account, Contact, and Opportunity records.'
  )
  public static void covertLeads(List<Id> leadIds) {
    System.debug('Lead IDs to convert: ' + leadIds);
  }
}