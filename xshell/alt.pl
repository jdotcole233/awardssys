:-ensure_loaded('xshell.pl').
:- abolish(xkb_intro/1).
:- abolish(xkb_unique/1).
:- abolish(xkb_explain/1).
:- abolish(xkb_identify/2).
:- abolish(xkb_question/4).
:- abolish(xkb_menu/4).
:- abolish(xkb_text/2).

:- dynamic xkb_identify/2.




xkb_intro(['POSTGRADUATE ADVISOR',
'',
'This system is designed to answer all your questions',
'regarding, your career paths, postgraduate studies and',
'how to establish your own business after your computing',
'degree.']).

xkb_unique(no).
xkb_explain(no).


xkb_identify(1, [examine_your_interest]) :-
                parm(start_program, m, 1),
                parm(computing_career_menu, m, 1),
                \+ parm(post_graduate, m, 2),
                \+ parm(start_up_ent, m, 3).

xkb_identify(2, [focus_your_search]) :-
                parm(start_program, m, 1),
                parm(computing_career_menu, m, 2),
                \+ parm(post_graduate, m, 2),
                \+ parm(start_up_ent, m, 3).

xkb_identify(3, [explore_careers]) :-
                parm(start_program, m, 1),
                parm(computing_career_menu, m, 4),
                \+ parm(post_graduate, m, 2),
                \+ parm(start_up_ent, m, 3).

xkb_identify(3, [evaluate_preparedness]) :-
                parm(start_program, m, 1),
                parm(computing_career_menu, m, 3),
                \+ parm(post_graduate, m, 2),
                \+ parm(start_up_ent, m, 3).

xkb_menu(start_program, 'What will you like to know about ?',
['Computing career',
'Postgraduate study',
'Start-up entrepreneurship'],
'Start program choice:').

/*
xkb_text(examine_your_interest, ['Choosing a career is one of the most important decisions most ',
'of us ever make. Depending on the individual, the choice of',
'career may be decided by following in the footsteps of a parent',
'or taking over a family business. For others, it is the pursuit of a',
'passion or lifelong dream. Whether your path is clear or',
'uncertain, careful planning may lead to the job of a lifetime.']).
*/

xkb_menu(computing_career_menu, 'Adivice on choosing your career path?',
['Examine your interest',
'Focus your search',
'Evaluate you preparedness',
'Explore careers',
'Check with careers'],
'Advice on career: ').


xkb_question(computing_career, 'Have you completed your computer science degree?',
 'You have completed your computer science degree',
 'You have not completed your computer science degree').

xkb_text(iwant, ['The career you can get is ']).
xkb_text(computing_career, ['Computer Engineer ']).


xkb_text(examine_your_interest, ['The first step in choosing the right career is to think about your  ',
'interests. Decide if you prefer analyzing numbers to working ',
'with your hands. Evaluate your creativity or your desire to work ',
'with people. Dont worry if you have the education or ',
'experience for a specific career or how much money you might',
'make. Use an interactive interest profile like that found on the ',
'My Next Move website. Created by the U.S. Department of ',
'Labor, the profile will help you identify possible career paths ',
'that agree with your interests. The Career Path website ',
'provides similar services.']).


xkb_text(focus_your_search, ['After you have identified your interests, search for occupations. For example, if you like children or  ',
'reading, explore a career in early education or library sciences. Careers such as daycare worker or ',
'pediatric nurse are also options that allow you to work with children. The U.S. Bureau of Labor ',
'Statistics provides information on thousands of jobs including salary, requirements and work ',
'environment.']).

xkb_text(explore_careers, ['Your next step is to explore job possibilities in your chosen career. Online job boards are useful tools  ',
'to see if jobs matching your career path are available in your area. Look across different industries to  ',
'see how the jobs vary in terms of salary and responsibility. Ask friends and family members who work ',
'in your chosen profession if you can job shadow them or visit with a human resources associate at ',
'their companies.']).

xkb_text(evaluate_preparedness, ['Now that you have focused on a specific career based on your interests, identify the education, ',
'knowledge and skills it requires. Some careers may be started with a high school diploma; others may  ',
'require a two-year or four-year degree. Some fields require certification for your chosen path. For  ',
'example, if you chose a career in project management, you may find that certain positions require a  ',
'certification.']).
