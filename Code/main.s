.data 
input_a: .asciz "Введите a: "
input_b: .asciz "Введите b: "
input_start: .asciz "Введите начало диапозона: "
input_end: .asciz "Введите конец диапазона: "
step: .double 0.0001
.globl step, input_a, input_b, input_start, input_end
.include "output.s" 
.include "counter.s"
.include "input.s"
.text 

#Вводим данные для вычислений.
input()

#Загружаем шаг
fld fs6, step, t0

#Считаем с помощью метода среднего интеграл
counter(fs2, fs3, fs4, s4, fs6)

#Вывод результата
output(fs5)
