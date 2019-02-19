


:- ensure_loaded('getyesno.pl').


startprogram :- reconsult('/Users/gh0stm0de/Desktop/aiCourseWork/studentkb.pl'),
                write('Welcome to Lancaster Awards'),nl,nl,
                write('The Lancaster Award rewards you for taking part in those extra-curricular activities outside your academic studies that supplement the excellent education you receive at Lancaster University. Developed in partnership with employers, the certificate rewards you for making the most of your time at Lancaster, and enhances your future job prospects by encouraging you to acquire new skills valued by employers. You will undertake a variety of activities and reflect on the skills you have developed'),nl,nl,
                write('Are you a Lancaster student? Answer with yes or nope, followed by full stop'),nl,
                read(Answer),
                answer(Answer).




answer(yes) :-   write('Lets start with your name :) '), nl,
                 read(Readstudentname),
                 student(Readstudentname).


answer(nope) :- write('Lancaster offers amazing opportunities to its students'), nl,
                write('Contact our admission team for further information'), nl, nl,
                write('Do you want any more assistance? Type yes or no'),
                read(Tryagain),
                rerun(Tryagain).


rerun(yes) :- startprogram.

rerun(no) :- write('We hope to see you soon').


student(Studentname) :-  lancaster_student(Studentname),
                         write('Welcome '),
                         write(Studentname),nl,nl,
                         write('Select your year of study'),nl,
                         write('first'),nl,
                         write('second'),nl,
                         write('final'),nl.
                      %   read(Studentyear).



student(Studentname) :- \+ lancaster_student(Studentname),
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
                               student(RegisteredName).


sayyesornoforregistered(no) :-  answer(nope).


select_year(first_year) :- write('What i will advice is that you start gaining more experience by partaking extra curricular activities'), nl,
                          % Goals can be wanting to know about different awards, how to build points, how assessments are made.
                           ask_question(Question),nl,
                           get_yes_or_no(Result), nl,
                           get_response(Question, Result), nl.



select_year(second_year) :- write('Have you done any of the following activities'), nl,
                            ask_question(Question),nl,
                            get_yes_or_no(Result), nl,
                            get_response(Question, Result), nl.

select_year(final_year) :- write('Have you done any of the following activities'), nl,
                           ask_question(Question),nl,
                           get_yes_or_no(Result), nl,
                           get_response(Question, Result), nl.







ask_question(different_types_of_awards) :- write('1.Do you want to know about the different types of awards?').

ask_question(build_points) :- write('2. Do you want to know how to build up points toward achieve an award?').

ask_question(assessments_made) :- write('3. Do you wish to know how you are assessed?').

ask_question(had_work_experience) :-   write('1. Had a work experience'), nl.

ask_question(engaged_in_campus_activity) :- write('2. Engaged in any campus activity'), nl.

ask_question(volunteering_work) :- write('3. Volunteering'), nl.

ask_question(work_shop_works) :- write('4. Being to any of our workshops'), nl.
