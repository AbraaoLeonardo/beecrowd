import sys
a,b,c = map(float, input().split())

if a+b <= c or a+c <= b or b+c <= a:
    area = ((a+b)*c)/2
    print(f"Area = {area:.1f}")
    sys.exit(0)

perimetro = a+b+c
print(f"Perimetro = {perimetro:.1f}")