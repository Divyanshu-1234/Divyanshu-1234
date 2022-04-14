Cls
Screen 13
Print "CALCULATOR-"
Print "ENTER YOUR EXPRESSION"
Print "EXAMPLE-58 * 20"
Print "THE TERMS SHOULD BE SEPARATED BY SPACE OR ERROR WILL OCCUR"

Input "ENTER YOUR EXPRESSION-"; EXP$

EXP$ = EXP$ + " "
INDEX = 1
Dim TERMS(3) As Integer

For I = 1 To Len(EXP$)
    CURRENTTOKEN$ = Mid$(EXP$, I, 1)
    If CURRENTTOKEN$ = " " Then
        If INDEX = 2 And OPERATION$ = "" Then
            OPERATION$ = TERMCURRENT$
        Else
            TERMS(INDEX) = Val(TERMCURRENT$)
            INDEX = INDEX + 1
        End If
        TERMCURRENT$ = ""
    Else
        TERMCURRENT$ = TERMCURRENT$ + CURRENTTOKEN$
    End If
Next I



Select Case OPERATION$
    Case "+"
        R = TERMS(1) + TERMS(2)
    Case "*"
        R = TERMS(1) * TERMS(2)
    Case "-"
        R = TERMS(1) - TERMS(2)
    Case "/"
        R = TERMS(1) / TERMS(2)
    Case "%"
        R = TERMS(1) Mod TERMS(2)
    Case "^"
        R = TERMS(1) ^ TERMS(2)
End Select
Print TERMS(1); OPERATION$; TERMS(2); "="; R
