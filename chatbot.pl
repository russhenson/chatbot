:- include('kb.pl').
:- include('symptoms.pl').
:- include('diseases.pl').


start :-
    reset,
    write('Hello! I am Dr.Bot, your medical chatbot assistant.'),
    nl,
    write('What is your name? '), nl,
    read(Name), nl, assert(patient(Name)),
    format('Hi, ~w!~n', [Name]),
    write('Is this an emergency? (yes or no)'), nl,
    read(Answer), nl,
    Answer=@='yes',nl, queries(Name);
    not_emergency.



not_emergency :-
    write('Please refer to a large medical facility.').
queries(Name) :-
    write('Do you have a cough?'), nl,
    read(Answer), nl,
    Answer=@='yes', nl, cough_symptom(Name);
    write('Do you have high fever?'), nl,
    read(Answer1), nl,
    Answer1=@='yes', nl, high_fever_symptom(Name);
    write('Do you have low fever?'), nl,
    read(Answer2), nl,
    Answer2=@='yes', nl, fever_symptom(Name);
    write('Do you feel nauseous?'), nl,
    read(Answer3), nl,
    Answer3=@='yes', nl, nausea_symptom(Name);
    write('Are you vomiting?' ), nl,
    read(Answer4), nl,
    Answer4=@='yes', nl, vomiting_symptom(Name);
    write('Do you have headache?' ), nl,
    read(Answer5), nl,
    Answer5=@='yes', nl, headache_symptom(Name);
    write('Do you have blisters?' ), nl,
    read(Answer5), nl,
    Answer5=@='yes', nl, blisters_symptom(Name);
    write('Are you having muscle pain?' ), nl,
    read(Answer6), nl,
    Answer6=@='yes', nl, muscle_pain_symptom(Name);
    write('Do you have skin rashes?' ), nl,
    read(Answer6), nl,
    Answer6=@='yes', nl, skin_rash_symptom(Name);
    write('Are you having chills?' ), nl,
    read(Answer7), nl,
    Answer7=@='yes', nl, chills_symptom(Name);
    write('Do you have diarrhea?' ), nl,
    read(Answer8), nl,
    Answer8=@='yes', nl, diarrhea_symptom(Name);
    write('Is your skin yellowish?' ), nl,
    read(Answer9), nl,
    Answer9=@='yes', nl, yellow_skin_symptom(Name);
    write('Are you fatigued?' ), nl,
    read(Answer10), nl,
    Answer10=@='yes', nl, fatigue_symptom(Name);
    write('Are you having confusion?' ), nl,
    read(Answer11), nl,
    Answer11=@='yes', nl, confusion_symptom(Name);
    write('Are you having loss of appetite?' ), nl,
    read(Answer12), nl,
    Answer12=@='yes', nl, loss_of_appetite_symptom(Name);
    write('Do you have chest pain?' ), nl,
    read(Answer13), nl,
    Answer13=@='yes', nl, chest_pain_symptom(Name);
    write('Are your eyes red?' ), nl,
    read(Answer14), nl,
    Answer14=@='yes', nl, red_eyes_symptom(Name);
    write('Do you smoke?' ), nl,
    read(Answer15), nl,
    Answer15=@='yes', nl, smoking_symptom(Name);
    write('I am not familiar with your possible disease.'),!.

%coughing symptom: tuberculosis, pneumonia, influenza, asthma
cough_symptom(Name) :-
    assert(coughing(Name)),
    write('Have you experienced coughing with blood?'), nl,
    read(Answer), nl,
    Answer=@='yes', assert(coughing_with_blood(Name)),
    diagnosis(Name); %Tuberculosis
    write('Do you have allergies?'), nl,
    read(Answer1), nl,
    Answer1=@='yes', assert(allergies(Name)), diagnosis(Name); %asthma
    write('Do you have nasal congestion?'), nl,
    read(Answer2), nl,
    Answer2=@='yes', assert(nasal_congestion(Name)), diagnosis(Name); %influenza
    write('Do you have lower body temperature than usual?'), nl,
    read(Answer3), nl,
    Answer3=@='yes', assert(lower_body_temperature(Name)),
    diagnosis(Name); %pneumonia
    write('I am not familiar with your possible disease.'),!.

%high fever: malaria, dengue fever, leptos, influenza
high_fever_symptom(Name) :-
    assert(high_fever(Name)),
    write('Have you had recent contact with flood, water, or soil'),
    write(' while having an open wound?'), nl,
    read(Answer), nl,
    Answer=@='yes', assert(contaminated_water_contact(Name)),
    assert(open_wound(Name)), diagnosis(Name); %leptos
    write('Do you have nasal congestion?'), nl,
    read(Answer1), nl,
    Answer1=@='yes', assert(nasal_congestion(Name)), diagnosis(Name); %influenza
    write('Do you have mosquito bite?'), nl,
    read(Answer2), nl,
    Answer2=@='yes', nl, assert(mosquito_bite(Name)),
    write('Do you have sudden skin bruises?'), nl,
    read(Answer3), nl,
    Answer3=@='yes', assert(bruising_skin(Name)), diagnosis(Name); %dengue
    write('Do you sweat excessively?'), nl,
    read(Answer4), nl,
    Answer4=@='yes', assert(profuse_sweating(Name)), diagnosis(Name);
    write('I am not familiar with your possible disease.'),!. %malaria

%fever: pneumonia, measles, tb, rabies, athlete's foot, hepa B
fever_symptom(Name) :-
    %patient(Name),
    assert(fever(Name)),
    write('Do you have Kopliks spots - little spots inside the mouth?'), nl,
    read(Answer), nl,
    Answer=@='yes', assert(kopliks_spots(Name)), diagnosis(Name); %measles
    write('Have you had sudden weight loss?'), nl,
    read(Answer1), nl,
    Answer1=@='yes', assert(weight_loss(Name)), diagnosis(Name); %tb
    write('Were you bitten by a rabid animal? like dog?'), nl,
    read(Answer2), nl,
    Answer2=@='yes', assert(bitten_by_rabid_animal(Name)), diagnosis(Name);%rabies
    write('Do you have red rash between toes?'), nl,
    read(Answer3), nl,
    Answer3=@='yes', assert(red_rash_between_toes(Name)),
    diagnosis(Name); %athlete's foot
    write('Do you have light colored poop?'), nl,
    read(Answer4), nl,
    Answer4=@='yes', assert(light_colored_poop(Name)), diagnosis(Name); %hepa B
    write('Do you have lower body temperature than usual?'), nl,
    read(Answer5), nl,
    Answer5=@='yes', assert(lower_body_temperature(Name)),
    diagnosis(Name); %pneumonia
    write('I am not familiar with your possible disease.'),!.

%nausea: malaria, dengue, influenza, pneumonia, rabies, hepa a, hepa b
nausea_symptom(Name) :-
    %patient(Name),
    assert(nausea(Name)),
    write('Do you have nasal congestion?'), nl,
    read(Answer2), nl,
    Answer2=@='yes', assert(nasal_congestion(Name)), diagnosis(Name); %influenza
    write('Were you bitten by a rabid animal? like dog?'), nl,
    read(Answer3), nl,
    Answer3=@='yes', assert(bitten_by_rabid_animal(Name)), diagnosis(Name);%rabies
    write('Do you have light colored poop?'), nl,
    read(Answer4), nl,
    Answer4=@='yes', assert(light_colored_poop(Name)), diagnosis(Name); %hepa B
    write('Do you have low appetite?'), nl,
    read(Answer5), nl,
    Answer5=@='yes', assert(low_appetite(Name)), diagnosis(Name); %hepa a
    write('Do you have mosquito bite?'), nl,
    read(Answer6), nl,
    Answer6=@='yes', nl, assert(mosquito_bite(Name)),
    write('Do you have sudden skin bruises?'), nl,
    read(Answer7), nl,
    Answer7=@='yes', assert(bruising_skin(Name)), diagnosis(Name); %dengue
    write('Do you sweat excessively?'), nl,
    read(Answer8), nl,
    Answer8=@='yes', assert(profuse_sweating(Name)), diagnosis(Name); %malaria
    write('Do you have lower body temperature than usual?'), nl,
    read(Answer9), nl,
    Answer9=@='yes', assert(lower_body_temperature(Name)),
    diagnosis(Name); %pneumonia
    write('I am not familiar with your possible disease.'),!.

% malaria: malaria, dengue, leptos, influenza, pneumonia, rabies,
% cholera, hepa b
vomiting_symptom(Name) :-
    assert(vomiting(Name)),
    write('Do you have lower body temperature than usual?'), nl,
    read(Answer), nl,
    Answer=@='yes', assert(lower_body_temperature(Name)),
    diagnosis(Name); %pneumonia
    write('Have you had recent contact with flood, water, or soil'),
    write(' while having an open wound?'), nl,
    read(Answer1), nl,
    Answer1=@='yes', assert(contaminated_water_contact(Name)),
    assert(open_wound(Name)), diagnosis(Name); %leptos
    write('Do you have nasal congestion?'), nl,
    read(Answer2), nl,
    Answer2=@='yes', assert(nasal_congestion(Name)), diagnosis(Name); %influenza
    write('Were you bitten by a rabid animal? like dog?'), nl,
    read(Answer3), nl,
    Answer3=@='yes', assert(bitten_by_rabid_animal(Name)), diagnosis(Name);%rabies
    write('Are you having muscular cramps?'), nl,
    read(Answer4), nl,
    Answer4=@='yes', assert(muscular_cramps(Name)), diagnosis(Name);%cholera
    write('Do you have low appetite?'), nl,
    read(Answer5), nl,
    Answer5=@='yes', assert(low_appetite(Name)), diagnosis(Name); %hepa B
    write('Do you have mosquito bite?'), nl,
    read(Answer6), nl,
    Answer6=@='yes', nl, assert(mosquito_bite(Name)),
    write('Do you have sudden skin bruises?'), nl,
    read(Answer7), nl,
    Answer7=@='yes', assert(bruising_skin(Name)), diagnosis(Name); %dengue
    write('Do you sweat excessively?'), nl,
    read(Answer8), nl,
    Answer8=@='yes', assert(profuse_sweating(Name)), diagnosis(Name);
    write('I am not familiar with your possible disease.'),!. %malaria

%headache: malaria, dengue, leptos, influenza, rabies
headache_symptom(Name) :-
    assert(headache(Name)),
    write('Have you had recent contact with flood, water, or soil'),
    write(' while having an open wound?'), nl,
    read(Answer), nl,
    Answer=@='yes', assert(contaminated_water_contact(Name)),
    assert(open_wound(Name)), diagnosis(Name); %leptos
    write('Do you have nasal congestion?'), nl,
    read(Answer1), nl,
    Answer1=@='yes', assert(nasal_congestion(Name)), diagnosis(Name); %influenza
    write('Were you bitten by a rabid animal? like dog?'), nl,
    read(Answer2), nl,
    Answer2=@='yes', assert(bitten_by_rabid_animal(Name)), diagnosis(Name);%rabies
    write('Do you have mosquito bite?'), nl,
    read(Answer3), nl,
    Answer3=@='yes', nl, assert(mosquito_bite(Name)),
    write('Do you have sudden skin bruises?'), nl,
    read(Answer4), nl,
    Answer4=@='yes', assert(bruising_skin(Name)), diagnosis(Name); %dengue
    write('Do you sweat excessively?'), nl,
    read(Answer5), nl,
    Answer5=@='yes', assert(profuse_sweating(Name)), diagnosis(Name);
    write('I am not familiar with your possible disease.'),!. %malaria

%blisters: chickenpox, athletes foot
blisters_symptom(Name) :-
    assert(blisters(Name)),
    write('Do you have red rash between toes?'), nl,
    read(Answer), nl,
    Answer=@='yes', assert(red_rash_between_toes(Name)),
    diagnosis(Name); %athlete's foot
    write('Do you have red bumps on any part of your body?'), nl,
    read(Answer1), nl,
    Answer1=@='yes', assert(red_bumps(Name)), diagnosis(Name); %chickenpox
    write('I am not familiar with your possible disease.'),!.

%muscle pain: dengue, leptos, influenza
muscle_pain_symptom(Name) :-
    assert(muscle_pain(Name)),
    write('Have you had recent contact with flood, water, or soil'),
    write(' while having an open wound?'), nl,
    read(Answer), nl,
    Answer=@='yes', assert(contaminated_water_contact(Name)),
    assert(open_wound(Name)), diagnosis(Name); %leptos
    write('Do you have nasal congestion?'), nl,
    read(Answer1), nl,
    Answer1=@='yes', assert(nasal_congestion(Name)), diagnosis(Name); %influenza
    write('Do you have mosquito bite?'), nl,
    read(Answer2), nl,
    Answer2=@='yes', nl, assert(mosquito_bite(Name)),
    write('Do you have sudden skin bruises?'), nl,
    read(Answer3), nl,
    Answer3=@='yes', assert(bruising_skin(Name)), diagnosis(Name); %dengue
    write('I am not familiar with your possible disease.'),!.

%skin rash: dengue, leptos, measles
skin_rash_symptom(Name) :-
    assert(skin_rash(Name)),
    write('Have you had recent contact with flood, water, or soil'),
    write(' while having an open wound?'), nl,
    read(Answer), nl,
    Answer=@='yes', assert(contaminated_water_contact(Name)),
    assert(open_wound(Name)), diagnosis(Name); %leptos
    write('Do you have Kopliks spots - little spots inside the mouth?'), nl,
    read(Answer1), nl,
    Answer1=@='yes', assert(kopliks_spots(Name)), diagnosis(Name); %measles
     write('Do you have mosquito bite?'), nl,
    read(Answer2), nl,
    Answer2=@='yes', nl, assert(mosquito_bite(Name)),
    write('Do you have sudden skin bruises?'), nl,
    read(Answer3), nl,
    Answer3=@='yes', assert(bruising_skin(Name)), diagnosis(Name); %dengue
    write('I am not familiar with your possible disease.'),!.

%chills: leptos, influenza
chills_symptom(Name) :-
    assert(chills(Name)),
    write('Have you had recent contact with flood, water, or soil'),
    write(' while having an open wound?'), nl,
    read(Answer), nl,
    Answer=@='yes', assert(contaminated_water_contact(Name)),
    assert(open_wound(Name)), diagnosis(Name); %leptos
    write('Do you have nasal congestion?'), nl,
    read(Answer1), nl,
    Answer1=@='yes', assert(nasal_congestion(Name)), diagnosis(Name); %influenza
    write('I am not familiar with your possible disease.'),!.

%diarrhea: leptos, influenza, pneumonia, cholera
diarrhea_symptom(Name) :-
    assert(diarrhea(Name)),
    write('Have you had recent contact with flood, water, or soil'),
    write(' while having an open wound?'), nl,
    read(Answer), nl,
    Answer=@='yes', assert(contaminated_water_contact(Name)),
    assert(open_wound(Name)), diagnosis(Name); %leptos
    write('Do you have nasal congestion?'), nl,
    read(Answer1), nl,
    Answer1=@='yes', assert(nasal_congestion(Name)), diagnosis(Name); %influenza
    write('Do you have lower body temperature than usual?'), nl,
    read(Answer2), nl,
    Answer2=@='yes', assert(lower_body_temperature(Name)),
    diagnosis(Name); %pneumonia
    write('Are you having muscular cramps?'), nl,
    read(Answer3), nl,
    Answer3=@='yes', assert(muscular_cramps(Name)), diagnosis(Name);%cholera
    write('I am not familiar with your possible disease.'),!.

%yellow skin: leptos, hepa a, hepa b
yellow_skin_symptom(Name) :-
    assert(yellow_skin(Name)),
    write('Have you had recent contact with flood, water, or soil'),
    write(' while having an open wound?'), nl,
    read(Answer), nl,
    Answer=@='yes', assert(contaminated_water_contact(Name)),
    assert(open_wound(Name)), diagnosis(Name); %leptos
    write('Do you have light colored poop?'), nl,
    read(Answer1), nl,
    Answer1=@='yes', assert(light_colored_poop(Name)), diagnosis(Name); %hepa B
    write('Do you have low appetite?'), nl,
    read(Answer2), nl,
    Answer2=@='yes', assert(low_appetite(Name)), diagnosis(Name); %hepa a
    write('I am not familiar with your possible disease.'),!.

%fatigue: influenza, pneumonia, tb, hepa a, hepa b
fatigue_symptom(Name) :-
    assert(fatigue(Name)),
    write('Do you have nasal congestion?'), nl,
    read(Answer), nl,
    Answer=@='yes', assert(nasal_congestion(Name)), diagnosis(Name); %influenza
    write('Do you have lower body temperature than usual?'), nl,
    read(Answer1), nl,
    Answer1=@='yes', assert(lower_body_temperature(Name)),
    diagnosis(Name); %pneumonia
    write('Have you experienced coughing with blood?'), nl,
    read(Answer2), nl,
    Answer2=@='yes', assert(coughing_with_blood(Name)),
    diagnosis(Name); %Tuberculosis
    write('Do you have light colored poop?'), nl,
    read(Answer3), nl,
    Answer3=@='yes', assert(light_colored_poop(Name)), diagnosis(Name); %hepa B
    write('Do you have low appetite?'), nl,
    read(Answer4), nl,
    Answer4=@='yes', assert(low_appetite(Name)), diagnosis(Name); %hepa a
    write('I am not familiar with your possible disease.'),!.

%confusion: pneumonia, rabies
confusion_symptom(Name) :-
    assert(confusion(Name)),
    write('Were you bitten by a rabid animal? like dog?'), nl,
    read(Answer1), nl,
    Answer1=@='yes', assert(bitten_by_rabid_animal(Name)),
    diagnosis(Name);%rabies
    write('Do you have lower body temperature than usual?'), nl,
    read(Answer2), nl,
    Answer2=@='yes', assert(lower_body_temperature(Name)),
    diagnosis(Name); %pneumonia
    write('I am not familiar with your possible disease.'),!.

%loss of appetite: tb, hepa B
loss_of_appetite_symptom(Name) :-
    assert(loss_of_appetite(Name)),
    write('Have you experienced coughing with blood?'), nl,
    read(Answer), nl,
    Answer=@='yes', assert(coughing_with_blood(Name)),
    diagnosis(Name); %Tuberculosis
    write('Do you have light colored poop?'), nl,
    read(Answer3), nl,
    Answer3=@='yes', assert(light_colored_poop(Name)), diagnosis(Name); %hepa B
    write('I am not familiar with your possible disease.'),!.

%chest pain: asthma, pneumonia
chest_pain_symptom(Name) :-
    assert(chest_pain(Name)),
    write('Do you have lower body temperature than usual?'), nl,
    read(Answer), nl,
    Answer=@='yes', assert(lower_body_temperature(Name)),
    diagnosis(Name); %pneumonia
    write('Do you have allergies?'), nl,
    read(Answer1), nl,
    Answer1=@='yes', assert(allergies(Name)), diagnosis(Name); %asthma
    write('I am not familiar with your possible disease.'),!.

%red eyes: leptos, sore eyes
red_eyes_symptom(Name) :-
    assert(red_eyes(Name)),
    write('Have you had recent contact with flood, water, or soil'),
    write(' while having an open wound?'), nl,
    read(Answer), nl,
    Answer=@='yes', assert(contaminated_water_contact(Name)),
    assert(open_wound(Name)), diagnosis(Name); %leptos
    write('Are your eyes itchy?'), nl,
    read(Answer1), nl,
    Answer1=@='yes', assert(itchy_eyes(Name)), diagnosis(Name); %sore eyes
    write('I am not familiar with your possible disease.'),!.

%smoking: tb, asthma
smoking_symptom(Name) :-
    assert(loss_of_appetite(Name)),
    write('Have you experienced coughing with blood?'), nl,
    read(Answer), nl,
    Answer=@='yes', assert(coughing_with_blood(Name)), diagnosis(Name); %Tuberculosis
    write('Do you have allergies?'), nl,
    read(Answer1), nl,
    Answer1=@='yes', assert(allergies(Name)), diagnosis(Name) ; %asthma
    write('I am not familiar with your possible disease.'),!.


diagnosis(Name) :-
    (malaria(Name), write('You have Malaria.'));
    (dengue_fever(Name), write('You have Dengue fever.'));
    (athletes_foot(Name), write('You have Athletes foot.'));
    (chickenpox(Name), write('You have Chickenpox.'));
    (leptospirosis(Name), write('You have Leptospirosis.'));
    (asthma(Name), write('You have Asthma.'));
    (influenza(Name), write('You have Influenza.'));
    (pneumonia(Name), write('You have Pneumonia.'));
    (measles(Name), write('You have Measles.'));
    (sore_eyes(Name), write('You have Sore eyes.'));
    (tuberculosis(Name), write('You have Tuberculosis'));
    (rabies(Name), write('You have Rabies.'));
    (cholera(Name), write('You have Cholera.'));
    (hepatitis_a(Name), write('You have Hepatitis A.'));
    (hepatitis_b(Name), write('You have Hepatitis B.')).



reset :-
    retractall(night_sweats(_)),
    retractall(coughing_with_blood(_)),
    retractall(shaking_chills(_)),
    retractall(high_fever(_)),
    retractall(headache(_)),retractall(swollen_lymph_glands(_)),
    retractall(muscle_pain(_)),retractall(joint_pain(_)),retractall(skin_rash(_)),
    retractall(bruising_skin(_)),
    retractall(nausea(_)),retractall(vomiting(_)),
    retractall(bleeding_nose_and_gums(_)),
    retractall(abdominal_pain(_)),
    retractall(bruising_on_skin(_)),
    retractall(red_bumps(_)),retractall(blisters(_)),
    retractall(exposed_to_tb(_)),
    retractall(scabs(_)),retractall(itchy_skin(_)),retractall(chills(_)),
    retractall(yellow_skin(_)),retractall(open_wound(_)),
    retractall(red_eyes(_)),retractall(diarrhea(_)),
    retractall(shortness_of_breath(_)),
    retractall(stinging_eyes(_)),
    retractall(chest_pain(_)),retractall(wheezing(_)),
    retractall(profuse_sweating(_)),
    retractall(sore_throat(_)),
    retractall(nasal_congestion(_)),retractall(runny_nose(_)),
    retractall(fatigue(_)),
    retractall(confusion(_)),retractall(fever(_)),
    retractall(lower_body_temperature(_)),
    retractall(hollow_sunken_eyes(_)),
    retractall(dry_cough(_)),retractall(runny_nose(_)),
    retractall(inflamed_eyes(_)),
    retractall(kopliks_spots(_)),
    retractall(itchy_eyes(_)),retractall(blurry_vision(_)),retractall(tearing(_)),
    retractall(photophobia(_)),
    retractall(discharge_from_eye(_)),retractall(foreign_body_sensation(_)),
    retractall(weight_loss(_)),
    retractall(loss_of_appetite(_)),retractall(headache(_)),
    retractall(agitation(_)),
    retractall(anxiety(_)),
    retractall(hyperactivity(_)),retractall(difficulty_swallowing(_)),
    retractall(excessive_salivation(_)),
    retractall(fear_from_drinking_fluids(_)),retractall(hallucinations(_)),
    retractall(insomnia(_)),
    retractall(partial_paralysis(_)),retractall(rapid_dehydration(_)),
    retractall(dry_tongue(_)),
    retractall(thirsty(_)),retractall(blood_pressure_falls(_)),
    retractall(faint_pulse(_)),
    retractall(muscular_cramps(_)),retractall(hollow_and_sunken_eyes(_)),
    retractall(wrinkled_skin(_)),
    retractall(lethargy(_)),retractall(seizures(_)),
    retractall(red_rash_between_toes(_)),
    retractall(itchy_feet(_)),
    retractall(dryness(_)),retractall(scaling(_)),retractall(low_appetite(_)),
    retractall(stomach_pain(_)),
    retractall(light_colored_poop(_)),retractall(bitten_by_rabid_animal(_)),
    retractall(smoking(_)),
    retractall(mosquito_bite(_)),retractall(contaminated_water_contact(_)),
    retractall(allergies(_)),
    retractall(exercised(_)),retractall(heartburn(_)),retractall(sinusitis(_)),
    retractall(exposed_to_smoke(_)).
