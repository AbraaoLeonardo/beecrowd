start_hour, start_minutes, end_hour, end_minutes = map(int, input().split())

minutos = 0

horas = 24

if end_hour < start_hour:
    horas = 24 - start_hour + end_hour

if end_hour > start_hour:
    horas = end_hour - start_hour

if end_hour == start_hour and start_minutes < end_minutes:
    horas = 0


if start_minutes < end_minutes:
    minutos = end_minutes - start_minutes

if end_minutes < start_minutes:
    horas -= 1
    minutos = 60 - start_minutes + end_minutes


print(f"O JOGO DUROU {horas} HORA(S) E {minutos} MINUTO(S)")