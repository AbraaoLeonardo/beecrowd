import math

def simplify(numerator, denominator):
    gcd = math.gcd(numerator, denominator)
    return numerator // gcd, denominator // gcd

def perform_operation(N1, D1, N2, D2, operator):
    if operator == '+':
        return (N1 * D2 + N2 * D1), (D1 * D2)
    elif operator == '-':
        return (N1 * D2 - N2 * D1), (D1 * D2)
    elif operator == '*':
        return (N1 * N2), (D1 * D2)
    elif operator == '/':
        return (N1 * D2), (N2 * D1)

T = int(input())

for _ in range(T):
    N1, _, N2, operator, D1, _, D2 = input().split()

    N1, N2, D1, D2 = map(int, [N1, N2, D1, D2])

    numerator, denominator = perform_operation(N1, D1, N2, D2, operator)

    simplified_numerator, simplified_denominator = simplify(numerator, denominator)

    print(f"{numerator}/{denominator} = {simplified_numerator}/{simplified_denominator}")
