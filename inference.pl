

bronze_points_build :- write('You can build up points toward a BRONZE LEVEL AWARD'),nl,
                       write('by accumulating up to 35 points'), nl,
                       write('Through:  '), nl,
                       write('20 points (1 x work experience) + 15 points (volunteering activity) = 35 points'), nl,
                       write('20 points (1 x work experience) + 10 points (campus activity) + 5 points ( 1 x workshop) = 35 points'), nl,
                       write('20 points (1 x work experience)  + 5 points ( 3 x workshops) = 35 points'), nl.


silver_points_build :- write('You can build up points toward a SILVER LEVEL AWARD'),nl,
                       write('by accumulating up to 45 points'), nl,
                       write('Through:  '), nl,
                       write('20 points (2 x work experience) + 5 points (1 x workshop) = 45 points'), nl,
                       write('20 points (1 x work experience) + 10 points (1 x campus activity) + 5 points ( 3 x careers workshops) = 45 points'), nl,
                       write('10 points (3 x campus activities) + 15 points (1 x volunteering) = 45 points'), nl.

gold_points_build :- write('You can build up points toward a GOLD LEVEL AWARD'),nl,
                      write('by accumulating up to 65+ points'), nl,
                      write('Through:  '), nl,
                      write('20 points (2 x work experience) + 10 points (2 x campus activity)  + 5 points ( 1 x workshop) = 65 points'), nl,
                      write('20 points (2 x work experience) + 10 points (1 x campus activity) + 15 points (1 x volunteering activity) = 65 points'), nl.


get_response(different_types_of_awards, yes) :- write('Lancaster offers exiciting levels based on you selected extra curriculum activities'), nl,
                                               write('Bronze level award'), nl,
                                               write('Silver level award'), nl,
                                               write('Gold level award'), nl.

get_response(different_types_of_awards, no) :- fail,

get_response(build_points, yes) :- write('Building points is essential to getting an award'),nl,
                                    write('Here is a list of activities you can engage in:'), nl,
                                    write('Work experience'),nl,
                                    write('Campus activity'), nl,
                                    write('Volunteering'), nl,
                                    write('Workshops'), nl.

get_response(build_points, no) :- fail,
