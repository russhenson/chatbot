
%cause of malaria
cause(disease(malaria), mosquite_bite).

%cause of dengue fever
cause(dengue_fever, mosquito_bite).

%causes of leptospirosis
cause(leptospirosis, open_wound).
cause(leptospirosis, animal_urine).
cause(leptospirosis, contaminated_water).
cause(leptospirosis, contaminated_flood).
cause(leptospirosis, contaminated_soil).

%causes of asthma
cause(asthma, allergies).
cause(asthma, smoking).
cause(asthma, exercised).
cause(asthma, heartburn).

%causes of tuberculosis
cause(tuberculosis, smoking).
cause(tuberculosis, exposed_to_tb).

%causes of measles
cause(measles, exposed_to_measles).

%causes of rabies
cause(rabies, bitten_by_rabid_animal).

%causes of hepatitis a
cause(hepatitis_a, contaminated_food).
cause(hepatitis_a, contaminated_water).

%causes of hepatitis b
cause(hepatitis_b, hepa_b_infected_contact).

%list of symptoms of malaria
symptom(disease(malaria), shaking_chills).
symptom(malaria, high_fever).
symptom(malaria, profuse_sweating).
symptom(malaria, headache).
symptom(malaria, nausea).
symptom(malaria, vomiting).

%list of symptoms of dengue fever
symptom(dengue_fever, high_fever).
symptom(dengue_fever, headache).
symptom(dengue_fever, swollen_lymph_glands).
symptom(dengue_fever, muscle_pain).
symptom(dengue_fever, joint_pain).
symptom(dengue_fever, skin_rash).
symptom(dengue_fever, nausea).
symptom(dengue_fever, vomiting).
symptom(dengue_fever, bleeding_nose_and_gums).
symptom(dengue_fever, bruising_on_skin).

%list of symptoms of chickenpox
symptom(chickenpox, red_bumps).
symptom(chickenpox, blisters).
symptom(chickenpox, scabs).
symptom(chickenpox, itchy_skin).

%list of symptoms of leptospirosis
symptom(leptospirosis, high_fever).
symptom(leptospirosis, headache).
symptom(leptospirosis, chills).
symptom(leptospirosis, muscle_pain).
symptom(leptospirosis, vomiting).
symptom(leptospirosis, yellow_skin).
symptom(leptospirosis, red_eyes).
symptom(leptospirosis, abdominal_pain).
symptom(leptospirosis, diarrhea).
symptom(leptospirosis, skin_rash).

%list of symptoms of asthma
symptom(asthma, shortness_of_breath).
symptom(asthma, chest_pain).
symptom(asthma, coughing).
symptom(asthma, wheezing).

%list of symptoms of influenza
symptom(influenza, high_fever).
symptom(influenza, headache).
symptom(influenza, muscle_pain).
symptom(influenza, coughing).
symptom(influenza, chills).
symptom(influenza, sore_throat).
symptom(influenza, nasal_congestion).
symptom(influenza, runny_nose).
symptom(influenza, fatigue).
symptom(influenza, nausea).
symptom(influenza, vomiting).
symptom(influenza, diarrhea).

%list of symptoms of pneumonia
symptom(pneumonia, chest_pain).
symptom(pneumonia, confusion).
symptom(pneumonia, coughing).
symptom(pneumonia, fatigue).
symptom(pneumonia, fever).
symptom(pneumonia, lower_body_temperature).
symptom(pneumonia, nausea).
symptom(pneumonia, vomiting).
symptom(pneumonia, diarrhea).
symptom(pneumonia, shortness_of_breath).

%list of symptoms of measles
symptom(measles, fever).
symptom(measles, dry_cough).
symptom(measles, runny_nose).
symptom(measles, sore_throat).
symptom(measles, inflamed_eyes).
symptom(measles, kopliks_spots).
symptom(measles, skin_rash).

%list of symptoms of sore_eyes
symptom(sore_eyes, red_eyes).
symptom(sore_eyes, stinging_eyes).
symptom(sore_eyes, itchy_eyes).
symptom(sore_eyes, blurry_vision).
symptom(sore_eyes, tearing).
symptom(sore_eyes, photophobia).
symptom(sore_eyes, discharge_from_eye).
symptom(sore_eyes, foreign_body_sensation).

%list of symptoms of tuberculosis
symptom(tuberculosis, coughing).
symptom(tuberculosis, weight_loss).
symptom(tuberculosis, loss_of_appetite).
symptom(tuberculosis, coughing_with_blood).
symptom(tuberculosis, fatigue).
symptom(tuberculosis, fever).
symptom(tuberculosis, night_sweats).

%list of symptoms of rabies
symptom(rabies, fever).
symptom(rabies, headache).
symptom(rabies, nausea).
symptom(rabies, vomiting).
symptom(rabies, agitation).
symptom(rabies, anxiety).
symptom(rabies, confusion).
symptom(rabies, hyperactivity).
symptom(rabies, difficulty_swallowing).
symptom(rabies, excessive_salivation).
symptom(rabies, fear_from_drinking_fluids).
symptom(rabies, hallucinations).
symptom(rabies, insomnia).
symptom(rabies, partial_paralysis).

%list of symptoms of cholera
symptom(cholera, diarrhea).
symptom(cholera, vomiting).
symptom(cholera, rapid_dehydration).
symptom(cholera, dry_tongue).
symptom(cholera, thirsty).
symptom(cholera, blood_pressure_falls).
symptom(cholera, faint_pulse).
symptom(cholera, muscular_cramps).
symptom(cholera, hollow_and_sunken_eyes).
symptom(cholera, wrinkled_skin).
symptom(cholera, fever).
symptom(cholera, lethargy).
symptom(cholera, seizures).

%list of symptoms of athlete's foot
symptom(athletes_foot, red_rash_between_toes).
symptom(athletes_foot, itchy_feet).
symptom(athletes_foot, blisters).
symptom(athletes_foot, dryness).
symptom(athletes_foot, scaling).

%list of symptoms of hepatitis a
symptom(hepatitis_a, fatigue).
symptom(hepatitis_a, low_appetite).
symptom(hepatitis_a, stomach_pain).
symptom(hepatitis_a, nausea).
symptom(hepatitis_a, yellow_skin).

%list of symptoms of hepatitis b
symptom(hepatitis_b, yellow_skin).
symptom(hepatitis_b, light_colored_poop).
symptom(hepatitis_b, fever).
symptom(hepatitis_b, fatigue).
symptom(hepatitis_b, loss_of_appetite).
symptom(hepatitis_b, nausea).
symptom(hepatitis_b, vomiting).
symptom(hepatitis_b, stomach_pain).





malaria(X):-
    (mosquito_bite(X), profuse_sweating(X)), (high_fever(X); shaking_chills(X);
                                              headache(X); nausea(X)).

dengue_fever(X):-
    (mosquito_bite(X), bruising_skin(X)), (high_fever(X); headache(X);
                                          swollen_lymph_glands(X); muscle_pain(X);
                                          joint_pain(X); skin_rash(X); nausea(X);
                                          vomiting(X); bleeding_nose_and_gums(X)).

chickenpox(X):-
    red_bumps(X); blisters(X); scabs(X); itchy_skin(X).

leptospirosis(X):-
    (open_wound(X), contaminated_water_contact(X)),
    (high_fever(X); headache(X); chills(X); muscle_pain(X);
     vomiting(X); yellow_skin(X); red_eyes(X);
     abdominal_pain(X); diarrhea(X); skin_rash(X)).

asthma(X):-
    allergies(X), (smoking(X); exercised(X); heartburn(X);
                   sinusitis(X); exposed_to_smoke(X);
                   shortness_of_breath(X); chest_pain(X);
                   coughing(X); wheezing(X)).

influenza(X):-
    nasal_congestion(X), (high_fever(X); headache(X); muscle_pain(X);
                          coughing(X); chills(X); sore_throat(X);
                          runny_nose(X); fatigue(X); nausea(X);
                          vomiting(X); diarrhea(X)).

pneumonia(X):-
    lower_body_temperature(X), (confusion(X); chest_pain(X); coughing(X);
                                fatigue(X); fever(X); nausea(X); vomiting(X);
                                diarrhea(X); shortness_of_breath(X)).

measles(X):-
    kopliks_spots(X), (fever(X); dry_cough(X); runny_nose(X); sore_throat(X);
                       inflamed_eyes(X); skin_rash(X)).

sore_eyes(X):-
    red_eyes(X), (stinging_eyes(X); itchy_eyes(X); blurry_vision(X);
                             tearing(X); photophobia(X); discharge_from_eye(X);
                             foreign_body_sensation(X)).

tuberculosis(X):-
    coughing_with_blood(X), (night_sweats(X); exposed_to_tb(X); smoking(X);
     coughing(X); weight_loss(X); low_appetite(X); fatigue(X); fever(X)).

rabies(X):-
    bitten_by_rabid_animal(X), (fever(X); headache(X); nausea(X); vomiting(X);
                                agitation(X); anxiety(X); confusion(X);
                                hyperactivity(X); difficulty_swallowing(X);
                                excessive_salivation(X);
                                fear_from_drinking_fluids(X); hallucinations(X);
                                insomnia(X); partial_paralysis(X)).

cholera(X):-
    muscular_cramps(X), (diarrhea(X); vomiting(X); rapid_dehydration(X);
                         dry_tongue(X); thirsty(X); blood_pressure_falls(X);
                         faint_pulse(X); hollow_sunken_eyes(X); wrinkled_skin(X);
                         fever(X); lethargy(X); seizures(X)).

athletes_foot(X):-
    red_rash_between_toes(X),(itchy_feet(X); blisters(X); dryness(X); scaling(X)).

hepatitis_a(X):-
    (yellow_skin(X); low_appetite(X)), (fatigue(X); stomach_pain(X); nausea(X)).

hepatitis_b(X):-
    (yellow_skin(X); light_colored_poop(X)); (fever(X); fatigue(X);
                                              low_appetite(X); nausea(X);
                                              vomiting(X); abdominal_pain(X)).























