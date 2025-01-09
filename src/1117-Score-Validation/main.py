i = 0
soma = 0
while True:
    if i == 2:
        break
    nota = float(input())
    if nota <= 10 and nota > 0:
        soma += nota
        i+=1
    else:    
        print("nota invalida")    

print(f'media = {soma/2:.2f}')