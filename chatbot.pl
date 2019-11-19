yes_ans(yes).
no_ans(no).

start :-
    write('Hello! I am Dr.Bot, your medical chatbot assistant.'),
    nl,
    write('What is your name? '),
    read(Name), nl,
    format('Hi, ~w!~n', [Name]),
    write('Is this an emergency? (yes or no)'),
    read(Answer), nl, no_ans(Y),
    Answer=@=Y,nl,not_emergency;
    emergency.


not_emergency :-
    write('Please refer to a large medical facility.').

emergency :-
    write('What is your symptom?').
