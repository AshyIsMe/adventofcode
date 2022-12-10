
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


NB. day4  ---------------------------------------------------

s4 =: 0 : 0
2-4,6-8
2-3,4-5
5-7,7-9
2-8,3-7
6-6,4-6
2-6,4-8
)
s4 =: _2 ]\ ". s4 rplc (LF;' '),;/'- , '
d4p1 =: +/((_2 <:/\ {."1 s4) *. (_2 >:/\ {:"1 s4)) +. ((_2 <:~/\ {."1 s4) *. (_2 >:~/\ {:"1 s4))
NB. WRONG: d4p2 =: +/ (1&{"1 >: 2&{"1 )  _4]\ ,s4


NB. day5  ---------------------------------------------------
NB. TODO!!!


NB. day6  ---------------------------------------------------

s6 =: 0 : 0
mjqjpqmgbljsphdztnvjfqwrcgsmlb
)

d6p1 =: (4 + 4 i.~ 4 #@~.\ ]) s6

d6p2 =: (14 + 14 i.~ 14 #@~.\ ]) s6



NB. day10  ---------------------------------------------------

s10 =: 0 : 0
addx 15
addx -11
addx 6
addx -3
addx 5
addx -1
addx -8
addx 13
addx 4
noop
addx -1
addx 5
addx -1
addx 5
addx -1
addx 5
addx -1
addx 5
addx -1
addx -35
addx 1
addx 24
addx -19
addx 1
addx 16
addx -11
noop
noop
addx 21
addx -15
noop
noop
addx -3
addx 9
addx 1
addx -3
addx 8
addx 1
addx 5
noop
noop
noop
noop
noop
addx -36
noop
addx 1
addx 7
noop
noop
noop
addx 2
addx 6
noop
noop
noop
noop
noop
addx 1
noop
noop
addx 7
addx 1
noop
addx -13
addx 13
addx 7
noop
addx 1
addx -33
noop
noop
noop
addx 2
noop
noop
noop
addx 8
noop
addx -1
addx 2
addx 1
noop
addx 17
addx -9
addx 1
addx 1
addx -3
addx 11
noop
noop
addx 1
noop
addx 1
noop
noop
addx -13
addx -19
addx 1
addx 3
addx 26
addx -30
addx 12
addx -1
addx 3
addx 1
noop
noop
noop
addx -9
addx 18
addx 1
addx 2
noop
noop
addx 9
noop
noop
noop
addx -1
addx 2
addx -37
addx 1
addx 3
noop
addx 15
addx -21
addx 22
addx -6
addx 1
noop
addx 2
addx 1
noop
addx -10
noop
noop
addx 20
addx 1
addx 2
addx 2
addx -6
addx -11
noop
noop
noop
)

cycles =: >: +/"1 'addx' E."1 ,;._2 s10
incs =: +/"1[ 0 "."1 ,;._2 s10

rolling_counters =: 1 + +/\ cycles ,. incs

d10p1 =: +/ */"1 (20+40*i.6) ,. {:"1 rolling_counters{~ <:(20+40*i.6) {{ {. I. x < y }}"0 _ {."1 rolling_counters
