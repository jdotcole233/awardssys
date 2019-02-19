
get_response_ward_type(bronze_points_build, yes) :- write('You can build up points toward a BRONZE LEVEL AWARD '),
                                                     write('by accumulating up to 35 points'), nl,
                                                     write('Through:  '), nl,
                                                     write('20 points (1 x work experience) + 15 points (volunteering activity) = 35 points'), nl,
                                                     write('20 points (1 x work experience) + 10 points (campus activity) + 5 points ( 1 x workshop) = 35 points'), nl,
                                                     write('20 points (1 x work experience)  + 5 points ( 3 x workshops) = 35 points'), nl,
                                                     get_response(different_types_of_awards, yes).

get_response_ward_type(silver_points_build, yes) :- write('You can build up points toward a SILVER LEVEL AWARD '),
                                                     write('by accumulating up to 45 points'), nl,
                                                     write('Through:  '), nl,
                                                     write('20 points (2 x work experience) + 5 points (1 x workshop) = 45 points'), nl,
                                                     write('20 points (1 x work experience) + 10 points (1 x campus activity) + 5 points ( 3 x careers workshops) = 45 points'), nl,
                                                     write('10 points (3 x campus activities) + 15 points (1 x volunteering) = 45 points'), nl,
                                                     get_response(different_types_of_awards, yes).

get_response_ward_type(gold_points_build, yes) :- write('You can build up points toward a GOLD LEVEL AWARD '),
                                                  write('by accumulating up to 65+ points'), nl,
                                                  write('Through:  '), nl,
                                                  write('20 points (2 x work experience) + 10 points (2 x campus activity)  + 5 points ( 1 x workshop) = 65 points'), nl,
                                                  write('20 points (2 x work experience) + 10 points (1 x campus activity) + 15 points (1 x volunteering activity) = 65 points'), nl.



ask_further_question_first_year(bronze_points_build) :- write('Do you want to know about BRONZE AWARD?'), nl.
ask_further_question_first_year(silver_points_build) :- write('Do you want to know about SILVER AWARD?'), nl.
ask_further_question_first_year(gold_points_build) :- write('Do you want to know about GOLD AWARD?'), nl.







get_response(different_types_of_awards, yes) :- nl, nl,
                                                write('Lancaster offers exiciting levels based on your selected extra curriculum activities'), nl,
                                                write('Bronze level award'), nl,
                                                write('Silver level award'), nl,
                                                write('Gold level award'), nl, nl,
                                                ask_further_question_first_year(Questions), nl,
                                                get_yes_or_no(Responses), nl,
                                                get_response_ward_type(Questions, Responses), nl.



get_response(different_types_of_awards, no) :- write('').


get_response(build_points, yes) :- write('Building points is essential to getting an award'), nl,
                                    write('Here is a list of activities you can engage in:'), nl,
                                    write('Work experience'),nl,
                                    write('Campus activity'), nl,
                                    write('Volunteering'), nl,
                                    write('Workshops'), nl.

% get_response(build_points, no) :- write('').

get_response(have_work_experience, yes) :- write('You are expected to have 20 points'), nl.
get_response(have_work_experience, no) :- write('Getting work experience helps you earn 20 points'), nl,
                                     write('which can help increase your chances of getting a higher award'), nl.


get_response(engaged_in_campus_activity, yes) :- write('You are expected to have 10 points'), nl.
get_response(engaged_in_campus_activity, no) :- write('Getting involved in campus activities helps you earn 10 points'), nl,
                                                write('which can help increase your chances of getting a higher award'), nl.


get_response(volunteering_work, yes) :- write('You are expected to have 15 points'), nl.
get_response(volunteering_work, no) :- write('Being involved with volunteering activities helps you earn 15 points'), nl,
                                       write('which can help increase your chances of getting a higher award'), nl.


get_response(work_shop_works, yes) :- write('You are expected to have 5 points'), nl.
get_response(work_shop_works, no) :- write('Being involved with workshop activities helps you earn 5 points'), nl,
                                      write('which can help increase your chances of getting a higher award'), nl.
