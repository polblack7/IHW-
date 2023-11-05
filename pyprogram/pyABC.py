def integrate(a, b, start, end, step=0.0001):
    integral = 0
    x = start
    while x < end:
        y = a + b * x - 4
        integral += y * step
        x += step
    return integral

a = float(input("Введите значение 'a': "))
b = float(input("Введите значение 'b': "))
start = int(input("Введите начало диапазона: "))
end = int(input("Введите конец диапазона: "))

result = integrate(a, b, start, end)
print(f"Результат численного интегрирования: {result}")
