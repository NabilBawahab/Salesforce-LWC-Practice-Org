trigger ClosedOpportunityTrigger on Opportunity(after insert, after update) {
  List<Task> tasksToInsert = new List<Task>(); //[]

  for (Opportunity opp : Trigger.new) {
    if (opp.StageName == 'Closed Won') {
      Task task = new Task(Subject = 'Follow Up Test Task', WhatId = opp.Id);
      tasksToInsert.add(task);
    }
  }

  if (!tasksToInsert.isEmpty()) {
    insert tasksToInsert;
  } else {
    return;
  }
}
