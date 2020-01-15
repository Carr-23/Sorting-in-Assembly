//    Braulio Carrion
//    Mr. Wong
//    11/20/2018
//    This is a proram that has 1 main program that runs 3 small subroutines
//    

START:   
CALL ONE             
CALL TWO
CALL THREE               
CALL FINAL
                                                         
ONE : 
MVI A,05
STA 1110
MVI A,12
STA 1120
MVI A,A3
STA 1121
MVI A,32
STA 1122
MVI A,CF
STA 1123
MVI A,01
STA 1124
MVI A,BD
STA 1125
MVI A,AF
STA 1126
MVI A,23
STA 1127
MVI A,CE
STA 1128
MVI A,89
STA 1129
MVI A,AB
STA 112A
MVI A,CD
STA 112B
MVI A,CE
STA 1150
MVI A,89
STA 1151
RET

TWO:   
MVI D,11
MVI A,06
SUI 01
STA 1110
RESET:
MVI E,20
LOOPAGAIN:
LDAX D
MOV B,A
INX D
INX D
LDAX D
CMP B
JM SWITCH

LDA 1110
MOV L,A
ADD L
ADI 20
CMP E
JM STOP

JMP LOOPAGAIN

SWITCH:
LDAX D
MOV C,A
MOV A,B
STAX D
MOV A,E
SUI 02
MOV E,A
MOV A,C
STAX D 

INX D
LDAX D
MOV C,A
INX D 
INX D
LDAX D
MOV B,A
MOV A,C
STAX D
MOV A,E
SUI 02
MOV E,A
MOV A,B
STAX D 
JMP RESET

STOP:

MVI B,11
MVI C,22
MVI D,11
MVI E,20 
END07:
LDAX B
STAX D
MOV A,E
CPI 2B
JZ END05
INX B
INX D
JMP END07

END05:
RET

THREE : 
MVI A,05
STA 1110
LDA 1110
MOV B,A
ADD B
MVI E,22
ADD E
MOV E,A

LDA 1151
MOV L,A
LDA 1150
MOV H,A
MVI B,11
MVI C,20

LOOP:
MOV A,C
CMP E
JP END1

LDAX B
CMP H
JZ TEST
INX B
INX B
JMP LOOP

TEST: INX B
LDAX B
CMP L
JZ END
INX B
JMP LOOP

END: 
MVI A,01
STA 1156
JMP END2

END1: 
MVI A,00
STA 1156
END2: 
RET

FINAL : 
HLT