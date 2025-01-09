while True:
    num1, num2 = map(int, input().split())
    soma = 0
    
    if num1 <= 0 or num2 <= 0:
        break

    if num1 > num2:
        num1,num2 = num2, num1
    if num1 != num2:
        for i in range(num1, num2+1):
            print(i, end=" ")
            soma+=i
        print(f"Sum={soma}")