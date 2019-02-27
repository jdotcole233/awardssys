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

xkb_identify(4, [evaluate_preparedness]) :-
                parm(start_program, m, 1),
                parm(computing_career_menu, m, 3),
                \+ parm(post_graduate, m, 2),
                \+ parm(start_up_ent, m, 3).




xkb_identify(5, [computing_career]) :-
                parm(start_program, m, 2),
                parm(post_graduate_menu, m, 1),
                prop(completed_degree).


xkb_identify(6, [computing_career_no]) :-
                parm(start_program, m, 2),
                parm(post_graduate_menu, m, 1),
                \+ prop(completed_degree).


xkb_identify(7, [masters_information_lanc]) :-
                parm(start_program, m, 2),
                parm(post_graduate_menu, m, 2).

xkb_identify(8, [masters_course]) :-
                parm(start_program, m, 2),
                parm(post_graduate_menu, m, 3).


xkb_identify(9, [requirements_postgrduate]) :-
                parm(start_program, m, 2),
                parm(post_graduate_menu, m, 4).


xkb_identify(10, [enough_amount, start_up_process]) :-
              parm(start_program, m, 3),
              prop(start_up_capital),
              write('How much do you have to start your business?'),nl,
              read_num(Amount),
              400 < Amount.


xkb_identify(11, [masters_course_msc_comp_scie]) :-
                 parm(start_program, m, 2),
                 parm(post_graduate_menu, m, 3),
                 prop(masters_course_menu_ques),
                 parm(masters_course_menu, m, 1).

 xkb_identify(12, [masters_course_msc_cyber_sec]) :-
                  parm(start_program, m, 2),
                  parm(post_graduate_menu, m, 3),
                  prop(masters_course_menu_ques),
                  parm(masters_course_menu, m, 2).

xkb_identify(13, [masters_course_msc_comm_sys]) :-
                 parm(start_program, m, 2),
                 parm(post_graduate_menu, m, 3),
                 prop(masters_course_menu_ques),
                 parm(masters_course_menu, m, 3).


xkb_identify(14, [masters_course_msc_comp_scie_res]) :-
                parm(start_program, m, 2),
                parm(post_graduate_menu, m, 3),
                prop(masters_course_menu_ques),
                parm(masters_course_menu, m, 4).
/*
xkb_identify(15, [start_up_process]) :-
                parm(start_program, m, 3),
                prop(start_up_process_ques),
                \+ prop(start_up_capital),
                \+ prop(less_than_1000). */

xkb_identify(16, [not_enough_amount, get_a_ready_forstartup]) :-
              parm(start_program, m, 3),
              \+ prop(start_up_capital),
              prop(less_than_1000).



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


xkb_menu(post_graduate_menu, 'Adivice on your postgraduate study?',
['Have you completed your first degree?',
'Get information on how to apply to Lancaster University',
'Get information on Msc courses',
'What are the requirements for postgraduate',
'Check with certifications'],
'Postgraduate advice: ').



xkb_menu(masters_course_menu,'Select an Msc Course to find out some of the best schools',
['Computer Science Msc',
'Cyber Security Msc',
'Communication Systems Msc',
'Computer Science (research Msc)'],
'Msc courses menu: ').



xkb_menu(start_up_menu, 'Advice on starting your own business after graduation',
['Some tips on starting business']).


xkb_question(completed_degree, 'Have you completed your computer science degree?',
 'You have completed your computer science degree',
 'You have not completed your computer science degree').

 xkb_question(masters_course_menu_ques, 'Do you want to know more about masters?',
 'You want to know more about masters?',
 'You dont want to know more about masters').

 xkb_question(start_up_capital, 'Do you know how much you want to start your business?',
 'You know the amount to start your business ?',
 'You dont know how much you want to start your business').


 xkb_question(less_than_1000, 'Is your starting captial less than GHC 1000?',
 'Is your starting capital below GHC 1000',
 'Your starting captial is above GHC 1000').



 xkb_question(start_up_process_ques, 'Do you want to how to start up your own business after graduation?',
   'You want to know about business start up after graduation',
   'You dont want to know about business start up after graduation').

xkb_text(iwant, ['The career you can get is ']).
xkb_text(computing_career, ['You can now apply to universities like: ',
'University of Portsmouth',
'Cranfield University',
'University of Western Australia',
'Lancaster University UK']).

xkb_text(computing_career_no, ['You should complete you first degree first, ',
'Then you can think of other post graduate studies.',
'But i will advice you consider our career paths,',
'that gives insight on how to plan your career paths including postgrad studies']).

xkb_text(enough_amount, ['You should follow the business start up process',
'That will give you a good start',
'']).

xkb_text(not_enough_amount, ['You dont have enough money to start up a business',
'You should follow these steps which can help you:',
'']).

xkb_text(get_a_ready_forstartup, ['1. Find a mentor',
'2. Explore other options',
'3. Find someone/group of people who share a common interest and work from there',
'4. Raise more capital to help finance the early stages of the business',
'5. Be prepared to work over time']).


xkb_text(masters_information_lanc, ['If you are a current Lancaster student or recent Lancaster graduate and would like to apply for a Masters or other postgraduate taught course, then the amount of information you need to provide as part of your application can be reduced.',
'Go to the My Applications website and select the option for current students. We will submit an application for you using the information in your student record. If we need any further information we will let you know.']).

xkb_text(masters_course,[
'Here are some Msc course you can look into',
'Computer Science Msc',
'Cyber Secrity Msc',
'Communication Systems Msc',
'Computer Science by research Msc'
]).


xkb_text(masters_course_msc_comp_scie,[
'Here are some of the best schools for COMPUTER SCIENCE MSC you can look into',
'Stanford University',
'University of California Berkeley',
'Princeton University',
'Carnegie Mellon University'
]).


xkb_text(masters_course_msc_cyber_sec,[
'Here are some of the best schools for CYBER SECURITY you can look into',
'Berkeley School of Information',
'Syracuse University College of Engineering and Computer Science',
'George Washington University',
'Sacred Heart University'
]).


xkb_text(masters_course_msc_comm_sys,[
'Here are some of the best schools for COMM SYS MSC you can look into',
'University of California',
'Georgia Institute of Technology',
'Purdue University',
'University of California Santa Barbara'
]).


xkb_text(masters_course_msc_comp_scie_res,[
'Here are some of the best schools for COMM SYS MSC you can look into',
'University of Oxford',
'ETH Zurich',
'University of Cambridge',
'Massachusetts Institute of Technology'
]).



xkb_text(requirements_postgrduate, [
'These are the requirements for postgraduate courses in Lancaster UK',
'Ghana    Bsc          3 years   2:1      or 2:2',
'Nigeria  Bsc          4 years   3.5/5.0  or 2.5/5.0',
'Suda     Bsc(Hons)    3 years   2:1      or 2:2'
]).

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


xkb_text(focus_your_search, ['After you have identified your interests, search for occupations. For example, if you like programming or  ',
'reading, explore a career in early industrial research or software development. Careers such as constract worker or ',
'part tine works are also options that allow you to work with your acquired skills. LinkedIn is a good platform',
'that provides information on thousands of jobs including salary, requirements and work ',
'environment.']).

xkb_text(explore_careers, ['Your next step is to explore job possibilities in your chosen career. Online job boards are useful tools  ',
'to see if jobs matching your career path are available in your area. Look across different industries to  ',
'see how the jobs vary in terms of salary and responsibility. Ask friends and family members who work ',
'in your chosen profession if you can job shadow them or visit with a human resources associate at ',
'their companies.']).

xkb_text(evaluate_preparedness, ['Now that you have focused on a specific career based on your interests, identify the education, ',
'knowledge and skills it requires. Some careers may be started with a high school diploma; others may  ',
'require a two-year or four-year degree. Some fields require certification for your chosen path. For  ',
'example, if you chose a career in cyber security, you may find that certain positions require a  ',
'certification.']).


xkb_text(start_up_process, ['Here are some steps for starting your own business',
'1. Create a business plan',
'2. Determine your business legal structure',
'3. Draw a business model',
'4. Register your bussiness name',
'5. Enquire about small business taxes',
'6. Market your business',
'7. Sell your product',
'8. Keep record and constant review of your business']).


:- write('Type xshell. to start program').
