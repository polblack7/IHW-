.macro input()
#Ввод а
inputA: 
	la a0, input_a
	li a7, 4
    ecall
    
    li a7, 7
    ecall
    fmv.d fs2, fa0
#Ввод b   
inputB: 
	la a0, input_b
	li a7, 4
    ecall
    
    li a7, 7
    ecall
    fmv.d fs3, fa0
    
#Ввод левой границы  
inputStart:
	la a0, input_start
	li a7, 4
    ecall
    
    li a7, 7
    ecall
    fmv.d fs4, fa0
    
#Ввод правой границы   
inputEnd: 
	la a0, input_end
	li a7, 4
    ecall
    
    li a7, 5
    ecall
    mv s4, a0
    
.end_macro 
    