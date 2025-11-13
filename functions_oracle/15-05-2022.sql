create or replace function university_func(attendance number, assigment number,quizes number)
return varchar2
IS
outcome varchar2(200);
BEGIN
  IF(attendance >= 75 and assigment = 3 and quizes = 3)
  THEN
    outcome := ('Admit Card Allowed To Issue');
  ELSE IF (attendance >= 75 and assigment = 2 and quizes = 2)
  THEN
    outcome := ('You have not Submit 1 Assignment and 1 Quiz');
  ELSE IF(attendance >= 75 and assigment = 1 and quizes = 1)
  THEN
    outcome := ('You have not Submitted 2 Assignemnt and 2 Quiz');
  ELSE IF (attendance >= 75 and assigment = 0 and quizes = 0)
  THEN
    outcome := ('You have not Submitted any Assignemnt and Quiz');
  ELSE IF(attendance >= 75 and assigment = 3 and quizes = 2)
  THEN
    outcome := ('You have not Submitted 1 Quiz');
  ELSE IF(attendance >= 75 and assigment = 3 and quizes = 1)
  THEN
    outcome := ('You have not Submitted 2 quizes');
  ELSE IF(attendance >= 75 and assigment = 3 and quizes = 0)
  THEN
    outcome := ('You have not Submitted 3 quizes');
  ELSE IF(attendance >= 75 and assigment = 2 and quizes = 3)
  THEN
    outcome := ('You have not Submitted 1 Assignment');
  ELSE IF(attendance >= 75 and assigment = 1 and quizes = 3)
  THEN
    outcome := ('You have not Submitted 2 Assigment');
  ELSE IF(attendance >= 75 and assigment = 0 and quizes = 3)
  THEN
    outcome := ('You have not Submitted 3 Assignments');
  ELSE IF(attendance < 75 and assigment = 3 and quizes = 3)
    THEN
    outcome := ('Your Attendance is Short');
  ELSE
    outcome := ('Please Check above Requirments');
  END IF;
  END IF;
  END IF;
  END IF;
  END IF;
  END IF;
  END IF;
  END IF;
  END IF;
  END IF;
  END IF;
  return (outcome);
END;

