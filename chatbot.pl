:- include('kb.pl').
:- include('symptoms.pl').
:- include('diseases.pl').
:- include('retract.pl').


start :-
    write('Hello! I am Dr.Bot, your medical chatbot assistant.'),
    nl,
    write('What is your name? '), nl,
    read(Name), nl, assert(patient(Name)),
    format('Hi, ~w!~n', [Name]),
    write('Is this an emergency? (yes or no)'), nl,
    read(Answer), nl,
    Answer=@='no',nl,not_emergency;
    emergency.



not_emergency :-
    write('Please refer to a large medical facility.').

emergency :-
    write('Do you have a cough?'),
    read(Answer), nl,
    Answer=@='yes', nl, cough_symptom;
    write('Do you have high fever?'), nl,
    read(Answer1), nl,
    Answer1=@='yes', nl, high_fever_symptom;
    idk.

cough_symptom :-
    patient(Name),
    assert(coughing(Name)),
    write('Do you smoke?').

high_fever_symptom :-
    patient(Name),
    assert(high_fever(Name)),
    write('high fever').

idk :-
    write('hatdog').


lagnat(X) :- high_fever(X).



diagnosis(Symptom, Cause):- cause(X, Cause), symptom(X, Symptom),
    write('Your possible sicknesses are: '), nl,
    write(X).


retract :-

