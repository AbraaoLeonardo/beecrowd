intervalo = 'Fora de intervalo'
number = float(input())

if number >= 0 and number <= 25:
    intervalo = 'Intervalo [0,25]'

if number > 25 and number <= 50:
    intervalo = 'Intervalo (25,50]'

if number > 50 and number <= 75:
    intervalo = 'Intervalo (50,75]'

if number <= 100 and number > 75:
    intervalo = 'Intervalo (75,100]'

print(intervalo)