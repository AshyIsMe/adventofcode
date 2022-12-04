
NB. day1  ---------------------------------------------------
s1 =: 0 : 0
1000
2000
3000

4000

5000
6000

7000
8000
9000

10000
)

d1p1=: >./ +/ &> ". }: s rplc (LF,LF);';';LF;' '
d1p2=: +/ 3 {. \:~ +/ &> ". }: s rplc (LF,LF);';';LF;' '


NB. day2  ---------------------------------------------------
s2=:(,;._2~ LF=]) 0 : 0
A Y
B X
C Z
)

NB. A rock B paper C scissors
NB. X rock Y paper Z scissors

wins=:(,;._2~ LF=]) 0 : 0
A Y
B Z
C X
)

draws=: (,;._2~ LF=]) 0 : 0
A X
B Y
C Z
)

scores=: ". (}."1 s2) rplc ;/'X1Y2Z3'
scores =: scores + (6 * s2 e. wins) + (3 * s2 e. draws)

d2p1=: +/scores

NB. day 2 part 2
NB. X lose, Y draw, Z win
scores=: ". (}."1 s2) rplc ;/'X0Y3Z6'
NB. A1, B2, C3
hands=: ". }: (LF;';') rplc~  0 : 0
'A X';'3'
'A Y';'1'
'A Z';'2'
'B X';'1'
'B Y';'2'
'B Z';'3'
'C X';'2'
'C Y';'3'
'C Z';'1'
)
points =: ". _1 ,\ s2 rplc hands
d2p2=: +/ scores + points


NB. day3  ---------------------------------------------------


s3 =: 0 : 0
vJrwpWtwJgWrhcsFMMfFFhFp
jqHRNqRjqzjGDLGLrsFMfFZSrLrFZsSL
PmmdzqPrVvPwwTWBwg
wMqvLMZHhHMvwLHjbvcjnnSBnvTQFn
ttgJtRGJQctTZtZT
CrZsJsPPZsGzwwsLwLmpwMDw
)
s3 =: (LF=s3) < ;._2 s3

rucksacks =: (-:@# split ]) &> s3
dups =: ([: ([: ~. e./ # {.) [: > -:@# split ]) &> s3
alphabet =: a. {~ (96+i.27),(65+i.26)

d3p1=: +/ alphabet i. dups

NB. day 3 part 2

groups =: _3 ]\ s3

badge =: {{
's1 s2 s3'=. y
~. s1 #~ (s1 e. s2) *. (s1 e. s3)
}}

badges =: badge"1 groups

d3p2 =: +/ alphabet i. badges
