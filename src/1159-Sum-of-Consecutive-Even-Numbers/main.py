def sum_even_sequences(start:int) -> None:
    soma = 0
    if start %2 == 1:
        start += 1

    for even_number in range(start, start + 10, 2):
        soma += even_number
    print(soma)

while True:
    start = int(input())
    if start == 0:
        break
    sum_even_sequences(start)
