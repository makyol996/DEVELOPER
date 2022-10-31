List<case> listCase = new List<case>();
for (Integer i = 0; i < 205; i++) {
    case c = new case();
    c.Subject = 'This is a bug';
    c.Description = 'Resolve it';
    c.Status = 'New';
    c.Origin = 'Web';
    listCase.add(c);
}
insert listCase;

list<Case> updateCase = [select id, status from case where status = 'Working'];
for (case  eachCase : updateCase) {
    eachCase.Status = 'New';
}
update updateCase;