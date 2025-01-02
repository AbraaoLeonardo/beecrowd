def get_data():
    dia = int(input().split(" ")[1])

    horario = input().split(":")
    horario_final = [int(num.strip()) for num in horario]
    return dia, horario_final

def convert_list_in_seconds(dia: int, lista: list[int,int,int]) -> int:
    segundos_totais = dia * 86400
    segundos_totais += lista[0] * 3600
    segundos_totais += lista[1] * 60
    segundos_totais += lista[2]
    return segundos_totais

def get_time(segundos_dia_1: int, segundos_dia_2: int) -> None:
    segundos_totais = segundos_dia_2 - segundos_dia_1

    ano = segundos_totais // 86400
    segundos_totais %= 86400
    horas = segundos_totais // 3600
    segundos_totais %= 3600
    minutos = segundos_totais // 60
    segundos = segundos_totais % 60

    print(f"{ano} dia(s)")
    print(f"{horas} hora(s)")
    print(f"{minutos} minuto(s)")
    print(f"{segundos} segundo(s)")


dia_1, horario_1 = get_data()
dia_2, horario_2 = get_data()

segundos_dia_1 = convert_list_in_seconds(dia=dia_1,lista=horario_1)
segundos_dia_2 = convert_list_in_seconds(dia=dia_2, lista=horario_2)
get_time(segundos_dia_1, segundos_dia_2)