def calcula_media(i=0,soma=0):
    while i < 2:
        nota = float(input())
        if nota <= 10 and nota > 0:
            soma += nota
            i+=1
        else:    
            print("nota invalida")    

    print(f'media = {soma/2:.2f}')

calcula_media()
while True:
    print("novo calculo (1-sim 2-nao)")
    menu = int(input())
    if menu == 2:
        break
    if menu == 1:
        calcula_media()