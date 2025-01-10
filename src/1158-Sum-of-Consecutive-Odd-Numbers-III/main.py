def sum_odd_sequences() -> None:
    start, size = map(int, input().split())

    soma = 0
    if start %2 == 0:
        start += 1

    end:int = start + size * 2
    for odd_number in range(start, end, 2):
        soma += odd_number
    print(soma)

loop = int(input())
for _ in range(loop):
    sum_odd_sequences()