drop sequence emp_emp_id;
create sequence emp_emp_id
start with 1
increment by 1
nomaxvalue;

drop sequence r_r_id;
create sequence r_r_id
start with 100
increment by 1
nomaxvalue;

drop sequence auth_id;
create sequence auth_id
start with 200
increment by 1
nomaxvalue;

drop view emp_view2;

create view emp_view2 as
SELECT
    EMP_ID,
    EACTIVE,
    ENAME,
    EEMAIL,
    EOFFICE,
    EPHONE,
    ESTATUS,
    ESTATUS_EFF_DATE,
    F15C1_LAB_LAB_ID,
    F15C1_AUTH_AUTH_ID,
    IS_ADMIN,
    IS_EXEC_DIR,
    IS_CHAIR,
    IS_LAB_DIR,
    F15C1_CONTACTS_CONTACT_RCODE,
    CNAME,
    CONTACT_RCODE,
    EFFECTIVE_DATE,
    CON_CMNTS,
    F15C1_RFE_RFE_ID,
    F15C1_RTYPE_RCODE,
    F15C1_EMP_EMP_ID
FROM F15C1_Emp, F15C1_Contacts;

create or replace TRIGGER emp_view2_trigger
    INSTEAD OF insert ON emp_view2
    DECLARE
      e_id NUMBER;
      ename2 VARCHAR2 (255);
      r_id NUMBER;
      a_id NUMBER;
BEGIN
    e_id := emp_emp_id.nextval;
    ename2 := :NEW.ENAME;
    r_id := r_r_id.nextval;
    a_id := auth_id.nextval;
    insert into F15C1_Emp( 
    EMP_ID,
    EACTIVE,
    ENAME,
    EEMAIL,
    EOFFICE,
    EPHONE,
    ESTATUS,
    ESTATUS_EFF_DATE,
    F15C1_LAB_LAB_ID,
    F15C1_AUTH_AUTH_ID,
    IS_ADMIN,
    IS_EXEC_DIR,
    IS_CHAIR,
    IS_LAB_DIR,
    F15C1_CONTACTS_CONTACT_RCODE)
     VALUES (
    e_id,
    :NEW.EACTIVE,
    ename2,
    :NEW.EEMAIL,
    :NEW.EOFFICE,
    :NEW.EPHONE,
    :NEW.ESTATUS,
    :NEW.ESTATUS_EFF_DATE,
    :NEW.F15C1_LAB_LAB_ID,
    a_id,
    'F',
    'F',
    'F',
    'F',
    :NEW.F15C1_CONTACTS_CONTACT_RCODE) ;

    insert into F15C1_CONTACTS(
    CNAME,
    CONTACT_RCODE,
    EFFECTIVE_DATE,
    CON_CMNTS,
    F15C1_RFE_RFE_ID,
    F15C1_RTYPE_RCODE,
    F15C1_EMP_EMP_ID)
      VALUES(
    ename2,
    r_id,
    localtimestamp,
    '',
    :NEW.F15C1_RFE_RFE_ID,
    :NEW.F15C1_RTYPE_RCODE,
    e_id
    ) ;
END;
/