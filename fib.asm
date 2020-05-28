; Recursively computes Fibonacci numbers.
; CSC 225, Assignment 6
; Given code, Winter '20

        .ORIG x4000

; int fib(int)
; TODO: Implement this function.
FIBFN ST R0, SAVER0
      ST R1, SAVER1
      ST R2, SAVER2
      ST R3, SAVER3
      ST R4, SAVER4
      ST R5, SAVER5
      ST R6, SAVER5
      ST R7, SAVER7
      
      LEA R0, PROMPT
      PUTS
      GETC
      OUT
      ADD R2, R0, #0 ; Saves input into R2
      
      LOOPZ GETC
      ADD R0, R0, #-10
      BRnp LOOPZ
      
      ADD R0, R2, #0
      BRnz NEG
      
      ADD R0, R0, #-1
      BRz BASE
      
      ADD R4, R3, #-2
      LEA R5, FIBFN
      
      ADD R6, R3, #-1
      LEA R7, FIBFN
      
      ADD R3, R5, R7
      
      LD R0, SAVER0
      LD R1, SAVER1
      LD R2, SAVER2
      LD R3, SAVER3
      LD R4, SAVER4
      LD R5, SAVER5
      LD R6, SAVER6
      LD R7, SAVER7
      
      HALT
      
NEG   AND R3, R3, #0

BASE  ADD R3, R3, #0

      RTI

PROMPT  .STRINGZ "Enter an integer: "
SAVER0  .FILL x0000
SAVER1  .FILL x0000
SAVER2  .FILL x0000
SAVER3  .FILL x0000
SAVER4  .FILL x0000
SAVER5  .FILL x0000
SAVER6  .FILL x0000
SAVER7  .FILL x0000
        .END
