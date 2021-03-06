INSERT INTO F15C1_STATUS (RFE_STATUS, SDESCRIPTION) VALUES ('Entered', 'created but not submitted');
INSERT INTO F15C1_STATUS (RFE_STATUS, SDESCRIPTION) VALUES ('Submitted', 'submitted for approval');
INSERT INTO F15C1_STATUS (RFE_STATUS, SDESCRIPTION) VALUES ('Approved', 'passed approval');
INSERT INTO F15C1_STATUS (RFE_STATUS, SDESCRIPTION) VALUES ('Rejected', 'rejected from approval');
INSERT INTO F15C1_STATUS (RFE_STATUS, SDESCRIPTION) VALUES ('Recalled', 'Recalled from submission');


INSERT INTO F15C1_RTYPE (RNAME, RTYPE, DESCRIPTION) VALUES ('FYI Reviewer', 'FYI Reviewer', 'An employee with peripheral interests');
INSERT INTO F15C1_RTYPE (RNAME, RTYPE, DESCRIPTION) VALUES ('Approver', 'Approver', 'First round approver for new RFEs');
INSERT INTO F15C1_RTYPE (RNAME, RTYPE, DESCRIPTION) VALUES ('Other Contact', 'Other Contact', 'catch all');

INSERT INTO F15C1_TASK (TDESCRIPTION, TASK_ABBRV, TASK_NAME) VALUES ('Fix some stuff', 'FX', 'Fix it');
INSERT INTO F15C1_TASK (TDESCRIPTION, TASK_ABBRV, TASK_NAME) VALUES ('Break some stuff', 'BK', 'Break em');
INSERT INTO F15C1_TASK (TDESCRIPTION, TASK_ABBRV, TASK_NAME) VALUES ('Hire Cannat''s students', 'HR', 'Hire them');
INSERT INTO F15C1_TASK (TDESCRIPTION, TASK_ABBRV, TASK_NAME) VALUES ('Take over the World', 'WD', 'World Domination');

INSERT INTO F15C1_AUTH (AUTH_RIGHT) VALUES ('None');
INSERT INTO F15C1_AUTH (AUTH_RIGHT) VALUES ('Read');
INSERT INTO F15C1_AUTH (AUTH_RIGHT) VALUES ('Write');

INSERT INTO F15C1_LAB (LAB_NAME) VALUES ('R and D');
INSERT INTO F15C1_LAB (LAB_NAME) VALUES ('Nukes');
INSERT INTO F15C1_LAB (LAB_NAME) VALUES ('HR');
INSERT INTO F15C1_LAB (LAB_NAME) VALUES ('Chemestry');
INSERT INTO F15C1_LAB (LAB_NAME) VALUES ('Meth Lab');
INSERT INTO F15C1_LAB (LAB_NAME) VALUES ('Math Lab'); 