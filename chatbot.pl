:- include('kb.pl').
:- include('symptoms.pl').
:- include('diseases.pl').

yes_ans(yes).
no_ans(no).


start :-
    write('Hello! I am Dr.Bot, your medical chatbot assistant.'),
    nl,
    write('What is your name? '), nl,
    read(Name), nl,
    format('Hi, ~w!~n', [Name]),
    write('Is this an emergency? (yes or no)'), nl,
    read(Answer), nl, no_ans(No),
    Answer=@=No,nl,not_emergency;
    emergency.



not_emergency :-
    write('Please refer to a large medical facility.').

emergency :-
    write('What is your symptom today?'), nl,
    read(Symptom), nl,
    format('okay so your symptom is ~w.~n', [Symptom]), nl,
    write('Do you know the cause? (yes or no)'),nl,
    read(Answer), nl, no_ans(No),
    Answer=@=No,nl,ask_more_symptom;
    ask_cause.

ask_more_symptom :-
    write('What are other symptoms you have?'),
    read(Symptom1), nl,
    format('Another symptom you have is ~w.~n', [Symptom1]).

ask_cause :-
    write('What is the cause of this?'),nl,
    read(Cause), nl,
    format('Cause for given symptom is ~w.~n', [Cause]), nl,
    diagnosis(_ , Cause).

diagnosis(Symptom, Cause):- cause(X, Cause), symptom(X, Symptom),
    write('Your possible sicknesses are: '), nl,
    write(X).
