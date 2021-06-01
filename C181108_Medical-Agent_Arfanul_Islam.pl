check:-
hypothesis(Disease),
write('I believe patient have: '),
write(Disease),
nl,
undo.
hypothesis(corona) :- corona.
hypothesis(cold) :- cold.
hypothesis(flu) :- flu.
hypothesis(ebola) :- ebola.
hypothesis(measles) :- measles.
hypothesis(arthritis) :- arthritis.
hypothesis(unknown).

corona :-
verify(fever),
verify(dry_cough),
verify(fever),
verify(diarrhora),
verify(pain).


coronam:-
write('Advices :'),
nl,
write('1: Zimax/tab'),
nl,
write('2: napa/tab'),
nl,
write('3: vitamin-D/tab'),
nl.
coronas:-
write('Sugestions:'),nl,
write('Wear a medical mask to protect others'),nl,
write('Clean your hands'),nl,
write('in emergency call 123'),nl,

nl.
cold :-

verify(headache),
verify(runny_nose),
verify(sneezing),
verify(sore_throat),
nl.
coldm :-
write('Advices:'),
nl,
write('1: Tylenol/tab'),
nl,
write('2: panadol/tab'),
nl,
write('3: Nasal spray'),
nl.
colds :-
write('Sugestions:'),
write('Please weare warm cloths'),
nl.

flu :-
verify(fever),
verify(headache),
verify(chills),
verify(body_ache).

flum :-
write('Advices and Sugestions:'),
nl,
write('1: Tamiflu/tab'),
nl,
write('2: panadol/tab'),
nl,
write('3: Zanamivir/tab'),
nl.

flus :-
write('Please take a warm bath and do salt gargling'),
nl.

ebola :-
verify(headache), 
verify(rash),
verify(nausea),
verify(bleeding).

measles:-
verify(fever),
verify(runny_nose), 
verify(rash),
verify(conjunctivitis).

measlesm :-
write('Advices:'),
nl,
write('1: Tylenol/tab'),
nl,
write('2: Aleve/tab'),
nl,
write('3: Advil/tab'),
nl,
write('4: Vitamin A'),
nl.

measless:-
write('Sugestions:'),
write('Please Get rest and use more liquid '),
nl.

arthritis:-
verify(pain_in_joints),
verify(stiffness_in_joints),
verify(fatigue).

emergency_hospital:-
write('if patient have chest pain then check the following then press one'),nl,

write('if patient have diarrhora then check the following then press two'),nl,

write('if patient have corona then check the following then press 3'),nl,

write('if patient have brain stroke then check the following then press 4'),nl,

write('if patient have arthritis then check the following then press 5'),nl,

write('if patient have dental then check the following then press 6'),nl.


one:-
write(' cscr-hospital-chittagong
CSCR Hospital Chittagong,1675/A, O.R Nizam Road Chittagong, Bangladesh info@cscrbd.com 031-656565
CSCR Pvt. Ltd. - Bookhttps://doctorlistbook.com ›'),nl.


two:-
write('National Hospital Chittagong Address, Contact Number, Email and Website:
Address: 14, Mehedibug Chittagong, Bangladesh.
Hotline:
Phone: 031-627913.
Mobile: 031-627913.
Lab: 031-623713
FAX:
Website: nationalhospitalctg.com
Email: ctgnhc@gmail.com or nationalhospitalctg@gmail.com
Consultation Appointment Number: 031-627913.'),nl.


three:-
write('Chittagong General Hospital is a public hospital in Chittagong, Bangladesh.
 It has two hundred and fifty bed facility. It has been an affiliated hospital of Chittagong Medical College since 1959. 
Address: Andarkilla Rd, Chattogram 4000
Opened: 1840
Care system: Public
Number of beds: 250
Founded: 1840
'),nl.


four :-
write('Parkview Hospital Chattogram Doctor List Phone Location ...
	https://findoutadoctor.blogspot.com › Chattogram
Oct 23, 2018 — Address: 94/103, Katalganj Road, Panchlaish, Chittagong.
 Website: https://parkview.com.bd/ '),nl.


five:-

write('Epic Health Care
Hospital in Chittagong
Address: Epic Center, 19 k.b Fazlul Kader Road, 
Panchlish Opposite to Chittagong Medical College Main Gate, Chattogram 4000'),nl.


six:-
write('Chattagram International Medical College & Hospital (CIMCH)
Hospital in Chittagong
Address: 206/1, Haji, Chand Mia Rd, Chattogram 4212
Hours: 
Open 24 hours
Phone: 01868-561703
Founded: 2013'),nl.


bmi:-

write('Enter the weight(kgs)'),nl,

read(X),nl,

write('Enter the height(mitres)'), nl,

read(Y),nl,

write( 'weight and height'),nl,

write(X),nl,

write(Y),sum(X,Y).

sum(X,Y):- A is X/Y^2,nl,

write('BMI is : '),
write(A),nl,
com(A).

com(A):-

A>25,
write('your bmi is over weight'),nl;

A<18,
write('your bmi is under weight'),nl;

A<25,
A>18,
write('your bmi is Normal weight'),nl.

bloodpressure :-

write('Enter the bp (systoloc)'),nl,

read(X),nl,

write('Enter the bp (diastolic)'), nl,

read(Y),nl,

write( 'systoloc and diastolic :'),nl,

write(X),

write('/'),
write(Y),
write('mm Hg'),nl,

bp(X,Y).

bp(X,Y):-

X<120,
X>110,
Y<85,
Y>80,
write( 'Normal Blood Pressure'),nl;

X>120,
X<140,
Y<90,
Y>80,
write( 'At Risk'),nl;

X>140,
Y>90,
write( 'High Blood Pressure'),nl;


X<120,
Y<80,
write( 'Low Blood Pressure'),nl.

emergency :-

write('if patient have chest pain then check the following'),nl,

write('ecg condition'),nl,

read(A),

write('Enter the bp (systoloc)'),nl,

read(X),nl,

write('Enter the bp (diastolic)'), nl,

read(Y),nl,

write( 'systoloc and diastolic :'),nl,

write(X),

write('/'),
write(Y),
write('mm Hg'),nl,

cbp(A,X,Y).

cbp(A,X,Y):-

A<100,
A>80,
X<120,
X>110,
Y<85,
Y>80,
write( 'Normal cabin'),nl;



A>100,
A<120,
X>120,
X<140,
Y<90,
Y>80,
write( 'Shift in HDU'),nl;

A>120,
X>140,
Y>100,
write( 'Shift in ICU'),nl.




ask(Question) :-
write('Does the patient have following symptom: '),
write(Question),
write('?'), 
read(Response),
nl,
( (Response == yes ; Response == y)
 ->
assert(yes(Question));
assert(no(Question)), fail).

:- dynamic yes/1,no/1.

verify(S) :-
(yes(S)
 ->
true ;
(no(S)
 ->
fail ;
ask(S))).
 
undo :- retract(yes(_)),fail.
undo :- retract(no(_)),fail.
undo.