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
    queries.



not_emergency :-
    write('Please refer to a large medical facility.').
queries :-
    write('Do you have a cough?'), nl,
    read(Answer), nl,
    Answer=@='yes', nl, cough_symptom;
    write('Do you have high fever?'), nl,
    read(Answer1), nl,
    Answer1=@='yes', nl, high_fever_symptom;
    write('Do you have low fever?'), nl,
    read(Answer1), nl,
    Answer1=@='yes', nl, fever_symptom;
    idk.

%coughing symptom: tuberculosis, pneumonia, influenza, asthma
cough_symptom :-
    patient(Name),
    assert(coughing(Name)),
    write('Have you experienced coughing with blood?'), nl,
    read(Answer), nl,
    Answer=@='yes', assert(coughing_with_blood(Name)); %Tuberculosis
    write('Do you have allergies?'), nl,
    read(Answer1), nl,
    Answer1=@='yes', assert(allergies(Name)); %asthma
    write('Do you have nasal congestion?'), nl,
    read(Answer2), nl,
    Answer2=@='yes', assert(nasal_congestion(Name)); %influenza
    idk. %conclude pneumonia

%high fever: malaria, dengue fever, leptos, influenza
high_fever_symptom :-
    patient(Name),
    assert(high_fever(Name)),
    write('Have you had recent contact with flood, water, or soil?'), nl,
    read(Answer), nl,
    Answer=@='yes', assert(contaminated_water_contact(Name)); %leptos
    write('Do you have nasal congestion?'), nl,
    read(Answer1), nl,
    Answer1=@='yes', assert(nasal_congestion(Name)); %influenza
    write('Do you have mosquito bite?'), nl,
    read(Answer2), nl,
    Answer2=@='yes', nl,
    write('Do you have skin rash?'), nl,
    read(Answer3), nl,
    Answer3=@='yes', assert(dengue_fever(Name)); %dengue
    idk. %conclude malaria

%fever: pneumonia, measles, tb, rabies, athlete's foot, hepa B
fever_symptom :-
    patient(Name),
    assert(fever(Name)),





idk :-
    write('hatdog').






