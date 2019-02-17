


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
