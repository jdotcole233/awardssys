
:- dynamic(lancaster_student/1).

lancaster_student(cole).

bronze(35).
silver(45).
gold(65).
work_experience(20).
campus_activity(10).
volunteering(15).
workshops(5).


% bronze_award(Work_experience, Campus_activity, Workshop) :- work_experience(20), campus_activity(10), workshops(5).
% bronze_award(Work_experience, Volunteering) :- work_experience(20), volunteering(15).
% bronze_award(Work_experience, Workshop, Workshop, Workshop) :- work_experience(20), workshops(5), workshops(5), workshops(5).
