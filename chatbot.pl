start :-
    write('Hello! I am Dr.Bot, your medical chatbot.'),
    nl,
    write('What is your name? '),
    read(Name), nl,
    format('Hi, ~w!~n', [Name]).

