


get_response_ward_type(bronze_points_build, yes) :- write('You can build up points toward a BRONZE LEVEL AWARD '),
                                                     write('by accumulating up to 35 points'), nl,
                                                     write('Through:  '), nl,
                                                     write('20 points (1 x work experience) + 15 points (volunteering activity) = 35 points'), nl,
                                                     write('20 points (1 x work experience) + 10 points (campus activity) + 5 points ( 1 x workshop) = 35 points'), nl,
                                                     write('20 points (1 x work experience)  + 5 points ( 3 x workshops) = 35 points'), nl,
                                                     get_response_first(different_types_of_awards, yes).
get_response_ward_type(bronze_points_build, no) :- fail.
get_response_ward_type(silver_points_build, yes) :- write('You can build up points toward a SILVER LEVEL AWARD '),
                                                     write('by accumulating up to 45 points'), nl,
                                                     write('Through:  '), nl,
                                                     write('20 points (2 x work experience) + 5 points (1 x workshop) = 45 points'), nl,
                                                     write('20 points (1 x work experience) + 10 points (1 x campus activity) + 5 points ( 3 x careers workshops) = 45 points'), nl,
                                                     write('10 points (3 x campus activities) + 15 points (1 x volunteering) = 45 points'), nl,
                                                     get_response_first(different_types_of_awards, yes).
get_response_ward_type(silver_points_build, no) :- fail.
get_response_ward_type(gold_points_build, yes) :- write('You can build up points toward a GOLD LEVEL AWARD '),
                                                  write('by accumulating up to 65+ points'), nl,
                                                  write('Through:  '), nl,
                                                  write('20 points (2 x work experience) + 10 points (2 x campus activity)  + 5 points ( 1 x workshop) = 65 points'), nl,
                                                  write('20 points (2 x work experience) + 10 points (1 x campus activity) + 15 points (1 x volunteering activity) = 65 points'), nl.

get_response_ward_type(gold_points_build, no) :- fail.

% ask_further_question_first_year(bronze_points_build) :- write('Do you want to know about BRONZE AWARD?'), nl.
% ask_further_question_first_year(silver_points_build) :- write('Do you want to know about SILVER AWARD?'), nl.
% ask_further_question_first_year(gold_points_build) :- write('Do you want to know about GOLD AWARD?'), nl.







get_response_first(different_types_of_awards, yes) :- nl, nl,
                                                write('Lancaster offers exiciting levels based on your selected extra curriculum activities'), nl,
                                                write('Bronze level award'), nl,
                                                write('Silver level award'), nl,
                                                write('Gold level award'), nl, nl,

                                                write('Do you want to know about BRONZE AWARD?'), nl,
                                                get_yes_or_no(Responses), nl,
                                                get_response_ward_type(bronze_points_build, Responses), nl,

                                                write('Do you want to know about SILVER AWARD?'), nl,
                                                get_yes_or_no(Responses), nl,
                                                get_response_ward_type(silver_points_build, Responses), nl,

                                                write('Do you want to know about GOLD AWARD?'), nl,
                                                get_yes_or_no(Responses), nl,
                                                get_response_ward_type(gold_points_build, Responses), nl.



get_response_first(different_types_of_awards, no) :- write('').


get_response_first(build_points, yes) :- write('Building points is essential to getting an award'), nl,
                                    write('Here is a list of activities you can engage in:'), nl,
                                    write('Work experience'),nl,
                                    write('Campus activity'), nl,
                                    write('Volunteering'), nl,
                                    write('Workshops'), nl.

get_response_first(build_points, no) :- fail.











get_response(have_work_experience, yes, Score) :- write('You are expected to get a minimum of 20 points'),nl,
                                            write("Enter your score"),
                                            readnumber(Score),nl.

get_response(have_work_experience, no, _) :- write('Getting work experience helps you earn 20 points'), nl,
                                          write('which can help increase your chances of getting a higher award'), nl.


get_response(engaged_in_campus_activity, yes, Score) :- write('You are expected to get a minimum 10 points'),nl,
                                                        write("Enter your score:"),nl,
                                                        readnumber(Score),nl.

get_response(engaged_in_campus_activity, no, _) :- write('Getting involved in campus activities helps you earn 10 points'), nl,
                                                   write('which can help increase your chances of getting a higher award'), nl.


get_response(volunteering_work, yes, Score) :- write('You are expected to get a minimum 15 points'), nl,
                                        write("Enter your score:"),nl,
                                        readnumber(Score),nl.

get_response(volunteering_work, no, _) :- write('Being involved with volunteering activities helps you earn 15 points'), nl,
                                       write('which can help increase your chances of getting a higher award'), nl.


get_response(work_shop_works, yes, Score) :- write('You are expected to get a minimum 5 points'),nl,
                                        write("Enter your score:"),nl,
                                        readnumber(Score),nl.

get_response(work_shop_works, no, _) :- write('Being involved with workshop activities helps you earn 5 points'), nl,
                                      write('which can help increase your chances of getting a higher award'), nl.


advice_second(work_experience, yes) :-
                                        write("Great !! You have a wonderful start with the Lancaster award"),nl,
                                        write("Work experiences, gives you  a 20 point score"), nl,
                                        write("Which adds up to your overall assessment"), nl.

advice_second(work_experience, no) :- fail.



second_year_responses(registered_lancaster_award, yes) :-
                                        write('Do you already have any work experience?'),nl,
                                        get_yes_or_no(Reply),nl,
                                        advice_second(work_experience, Reply),nl.


second_year_responses(registered_lancaster_award, no) :-
                                        write("You can register through the student portal"),nl,
                                        write("You are very welcome to come along to a drop-in and receive feedback on one of your written skills."),nl,
                                        write("For fairness and parity with other students we cannot tell you what to write but can provide you with feedback"), fail.




assessments_for_students(assessments_for, yes ):-
                                      write("What happens when i have submitted my skill bank?"),nl,
                                      write("When we mark your submission you will be assessed on:"),nl,
                                      write("The structure of your answer"),nl,
                                      write("The effectiveness of your answer"),nl,
                                      write("Whether an employer would be impressed with your examples"),nl,
                                      write("Use of English, spelling and grammar"),nl,
                                      write("You will be given one opportunity to re-submit your Skills Bank if the first attempt does not meet our requirements."),nl,nl,nl,


                                      write("What happens once i have completed my video interview?"),nl,
                                      write("When we mark your strengths-based submission you will be assessed on:"),nl,
                                      write("The structure of your answer"),nl,
                                      write("Your tone"),nl,
                                      write("Your ability to engage the audience"),nl,
                                      write("The quality of your examples"),nl,
                                      write("Clarity of expression"),nl,
                                      write("Enthusiasm and ability engage the listener"),nl,
                                      write("Professional demeanour"),nl,
                                      write("You will be given one opportunity to resubmit if the first attempt does not meet the required standard."),nl,nl, nl,


                                      write("Do i need to submit a CV or LinkedIn profile?"),nl,
                                      write("You will find the CV submission portal on Moodle."),nl,
                                      write("If you are choosing to submit a LinkedIn profile instead there is section on the Skills Bank application form where you can enter your LinkedIn address."),nl,nl,nl,


                                      write("What if i need further guidance?"),nl,
                                      write("For inspiration, have a look at our Example Skills Bank on Moodle."),nl,
                                      write("You can use our online query service Ask Careers to get advice."),nl,
                                      write("We offer Skills Bank support sessions, check with Careers staff for more details."),nl,
                                      write("Or you can drop into Careers, there will always be someone around who can give you advice on the Lancaster Award."),nl,
                                      write("The earlier you start completing the Award, the more time you will have to call into Careers with any queries you may have."),nl.



assessments_for_students(assessments_for, no ):- write('').
