start = int(input())
end = int(input())
soma = 0

if start > end:
    start,end = end,start

for i in range(start, end +1):
    if i % 13 !=0:
        soma+=i

print(soma)