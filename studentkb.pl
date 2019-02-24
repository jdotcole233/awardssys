
:- dynamic(lancaster_student/1).

lancaster_student(cole).

bronze(35).
silver(45).
gold(65).
work_experience(20).
campus_activity(10).
volunteering(15).
workshops(5).



% year_selection_choice(first_year_questions) :-  first_year(yes), second_year(no), final_year(no).
% year_selection_choice(second_year_questions) :- first_year(no), second_year(yes), final_year(no).
% year_selection_choice(final_year_questions) :- first_year(no), second_year(no), final_year(yes).



% bronze_award(Work_experience, Campus_activity, Workshop) :- work_experience(20), campus_activity(10), workshops(5).
% bronze_award(Work_experience, Volunteering) :- work_experience(20), volunteering(15).
% bronze_award(Work_experience, Workshop, Workshop, Workshop) :- work_experience(20), workshops(5), workshops(5), workshops(5).

calc_award(Score) :-
                 Score > 35, Score < 45, write("Congratulation "), write(" You have achieved a Bronze level award"), nl;
                 Score > 45, Score < 65, write("Congratulation "), write(" You have achieved a Silver level award"), nl;
                 Score >= 65, write("Congratulation "), write(" You have achieved a Gold level award"), nl;
                 Score < 35, write("Sorry "),write(" You have not accumulated enough points to be rewarded").


calc_score(First,Second,Third,Fouth, Result) :- Result is First + Second + Third + Fouth.

insta(Number) :- integer(Number); Number is 0.

result_possibility(bronze_points_build) :- get_response(have_work_experience, yes), get_response(volunteering_work, yes).
result_possibility(bronze_points_build) :- get_response(have_work_experience, yes), get_response(engaged_in_campus_activity, yes), get_response(work_shop_works, yes).

get_response_ward_type(silver_points_build) :- get_response(have_work_experience, yes), get_response(work_shop_works, yes).
get_response_ward_type(silver_points_build) :- get_response(have_work_experience, yes), get_response(engaged_in_campus_activity, yes), get_response(work_shop_works, yes).
