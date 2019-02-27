:- ensure_loaded('getyesno.pl').
:- ensure_loaded('inference.pl').
:- ensure_loaded('studentkb.pl').
:-ensure_loaded('readstr.pl').
:-ensure_loaded('readnum.pl').

:- write('Type startprogram. to start program').

startprogram :- write('Welcome to Lancaster Awards'),nl,nl,
                write('The Lancaster Award rewards you for taking part in those extra-curricular activities outside your academic studies that supplement the excellent education you receive at Lancaster University.'),nl,
                write('Developed in partnership with employers, the certificate rewards you for making the most of your time at Lancaster,'),nl,
                write('and enhances your future job prospects by encouraging you to acquire new skills valued by employers. You will undertake a variety of activities and reflect on the skills you have developed'),nl,nl,
                write('Are you a Lancaster student? Answer with yes or no followed by full stop'),nl,
                read(Answer),
                answer(Answer).



answer(yes) :-   write('Lets start with your name :) '), nl,
                 read(Readstudentname),
                 menu,nl,
                 get_menu_choice(Yourchoice),
                 student(Readstudentname, Yourchoice).



answer(no) :- write('Lancaster offers amazing opportunities to its students'), nl,
                write('Contact our admission team for further information'), nl, nl,
                write('Do you want any more assistance? Type yes or no'),
                read(Tryagain),
                rerun(Tryagain).

answer(_) :- write('Wrong input encountered, Lets try this again'), nl, nl,
             startprogram.


rerun(yes) :- startprogram.

rerun(no) :- write('We hope to see you soon').


student(Studentname, first_year) :- lancaster_student(Studentname),
                         write('Welcome '),
                         write(Studentname), nl, nl,
                         select_year(first_year, yes, Studentname).



student(Studentname, second_year) :-  lancaster_student(Studentname),
                         write('Welcome '),
                         write(Studentname), nl, nl,
                         select_year(second_year, yes, Studentname).


student(Studentname, final_year) :-  lancaster_student(Studentname),
                       write('Welcome '),
                       write(Studentname), nl, nl,
                       select_year(final_year, yes, Studentname).





student(Studentname, _) :- \+ lancaster_student(Studentname),
                          write('Sorry '),
                          write(Studentname),
                          write(' .Your name is not in my log, do you want to be registered?'),nl,nl,
                          write('Being registered helps me to create a customized help for you any time you need assistance :)'),nl,nl,
                          write('Enter yes or no '), nl,
                          read(Registeredanswered),
                          sayyesornoforregistered(Registeredanswered).


sayyesornoforregistered(yes) :- write('Tell me your name'), nl,
                               read(RegisteredName),
                               assertz(lancaster_student(RegisteredName)),
                               write('Thank you, You will be remembered'),nl,
                               student(RegisteredName, _).


sayyesornoforregistered(no) :-  answer(nope).

runagain_student(yes) :- select_year(first_year, yes).
runagain_student(no) :- write('I hope i was helpful, come back soon! :) '), nl,
                        write('Good bye!!!').

runagain_student(_) :- write('sorry, you didnt give me the right answer'), nl,
                       runagain_student(yes).


 runagain_student_two(yes) :- select_year(second_year, yes).
 runagain_student_two(no) :- write('I hope i was helpful, come back soon! :) '), nl,
                             write('Good bye!!!').

 runagain_student_two(_) :- write('sorry, you didnt give me the right answer'), nl,
                            runagain_student_two(yes).


% Goals can be wanting to know about different awards, how to build points, how assessments are made.

select_year(first_year, yes, Student) :-
                           write('welcome '), write(Student), nl,
                           write('What i will advice is that you start gaining more experience by engaging in extra curricular activities'), nl,
                           write('Do you want to know about the different types of awards?'), nl,
                           get_yes_or_no(Result5), nl,
                           get_response_first(different_types_of_awards, Result5), nl,

                           write('Do you want to know how to build up points toward achieve an award?'), nl,
                           get_yes_or_no(Result6), nl,
                           get_response_first(build_points, Result6), nl,

                           write('Do you wish to know how you are assessed?'), nl,
                           get_yes_or_no(Result7), nl,
                           assessments_for_students(assessments_for, Result7),nl,
                           recons_try(yes, Student, first_year).


select_year(first_year, no, _) :- write(' ').




select_year(second_year, yes, Student) :- write('Hi '), write(Student), nl,
                           write('Is second year great?'), nl,
                           get_yes_or_no(Repl0),
                           regards(great, Repl0),nl,

                           write('Have you registerd for Lancaster awards?'),nl,
                           get_yes_or_no(Reply), nl,
                           second_year_responses(registered_lancaster_award, Reply), nl,


                           write('Do you want to any information on how to build points?'),nl,
                           get_yes_or_no(Reply1),nl,
                           get_response_first(different_types_of_awards, Reply1),nl,

                           write('Do you want to no about assessments are done?'), nl,
                           get_yes_or_no(Reply2), nl,
                           assessments_for_students(assessments_for, Reply2),nl,

                           write('You can calculate your final score and also know your award classification once you get to final year.'),nl,
                           write('I wish you all the best'),
                           write(Student),nl,
                           recons_try(yes, Student, second_year).

select_year(second_year, no, _) :- write(' ').






select_year(final_year, yes, Student) :-
                           write('welcome '), write(Student),nl,
                           write('Have you done any of the following activities'), nl,
                           write('1. Had a work experience?'),nl,
                           get_yes_or_no(Result), nl,
                           get_response(have_work_experience, Result, Firstscore), nl,
                           insta(Firstscore),

                           write('2. Engaged in any campus activity?'), nl,
                           get_yes_or_no(Result1), nl,
                           get_response(engaged_in_campus_activity, Result1, Secondscore), nl,
                           insta(Secondscore),

                           write('3. Have done any volunteering?'),nl,
                           get_yes_or_no(Result2), nl,
                           get_response(volunteering_work, Result2, Thirdscore), nl,
                           insta(Thirdscore),

                           write('4. Being to any of our workshops?'), nl,
                           get_yes_or_no(Result3), nl,
                           get_response(work_shop_works, Result3, Fouthscore), nl,
                           insta(Fouthscore),

                           calc_score(Firstscore, Secondscore, Thirdscore, Fouthscore, Output),     % calculate score
                           calc_award(Output),nl,    % match score to award level
                           recons_try(yes, Student, final_year).

select_year(final_year, no, _) :- write(' ').



/*
ask_question_study(first_year) :- write('Are you a first year student?'), nl.
ask_question_study(second_year) :- write('Are you a second year year student?'), nl.
ask_question_study(final_year) :- write('Are you a final year student?'), nl.



ask_question(different_types_of_awards) :- write('1.Do you want to know about the different types of awards?').

ask_question(build_points) :- write('2. Do you want to know how to build up points toward achieve an award?').

ask_question(assessments_made) :- write('3. Do you wish to know how you are assessed?').

ask_question_advc(have_work_experience) :-   write('1. Had a work experience?'), nl.

ask_question_advc(engaged_in_campus_activity) :- write('2. Engaged in any campus activity?'), nl.

ask_question_advc(volunteering_work) :- write('3. Have done any volunteering?'), nl.

ask_question_advc(work_shop_works) :- write('4. Being to any of our workshops?'), nl.
*/

regards(great, yes) :- write('Thats amazing :)'),nl.
regards(great, no) :- write('Sorry to hear this,'),nl,
                      write('Maybe a little more effort will change things'),nl,
                      write('Why not give that a try!! :):) '),nl.




menu :- write('Select your year'),nl,
        write('1. First year'), nl,
        write('2. Second year'), nl,
        write('3. Final year'),nl,
        write('Type a number, 1 to 3'), nl.

get_menu_choice(Selection) :- get(Code),nl,
                              get0(_),
                              interprete(Code, Selection).

interprete(49, first_year).
interprete(50, second_year).
interprete(51, final_year).



recons_try(yes, Student, Selectedchoice) :- write('Will you like another consultation?'),nl,
                   write('1. Start over with new name'), nl,
                   write('2. Continue as '), write(Student), nl,
                   write('3. End consultation'),nl,
                   check_option_menu(Finalchoice),
                   Finalchoice == yes, answer(Finalchoice);
                   Finalchoice == no, recons_try(no, _);
                   student(Student, Selectedchoice).


recons_try(no, _) :-rerun(no).


check_option_menu(Choice) :-
                          get(Code),
                          get0(_),
                          check_option(Code, Choice).
check_option(49, yes).
check_option(50, no).
check_option(51, no).
