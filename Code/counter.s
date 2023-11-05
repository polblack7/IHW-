.macro counter(%a, %b, %start, %end, %step)


#Проверяем не достигли ли мы правой границы
count_integral_start:
	fcvt.w.d t1 %start
	mv t6 %end
	bgt t1 t6 end
	fmv.d ft5 %start 
	li t0 4
	#Возводим х в степень 4
	exponent_loop:
	beqz t0, minus_exponent
	fmul.d ft5, ft5, ft5
	addi t0, t0, -1
	j exponent_loop
#Делаем отрицательную степень	
minus_exponent:
	li t0 1
	fcvt.d.w ft8 t0
	fdiv.d ft5 ft8 ft5
#Считаем функцию у	
count_integral_end:
	fmadd.d ft11, %b, ft5, %a
	fmadd.d ft10 ft11 %step ft10
	fadd.d %start %start %step
	j count_integral_start

 end:
 	fmv.d fs5 ft10
 	

.end_macro 