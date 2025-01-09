message = "Não houve vencedor"
def grenal(inter=0, gremio=0, empate=0):
    inter_gols,gremio_gols = map(int, input().split())

    if inter_gols == gremio_gols:
        empate +=1
    if inter_gols > gremio_gols:
        inter +=1
    if inter_gols < gremio_gols:
        gremio +=1
    return inter, gremio, empate

inter, gremio, empate = grenal()
while True:
    print("novo calculo (1-sim 2-nao)")
    menu = int(input())
    if menu == 2:
        break
    if menu == 1:
        inter, gremio, empate = grenal(inter,gremio,empate)

if inter > gremio:
    message = "Inter venceu mais"

if inter < gremio:
    message = "Gremio venceu mais"

print(f"{inter + gremio + empate} grenais")
print(f"Inter:{inter}")
print(f"Gremio:{gremio}")
print(f"Empates:{empate}")
print(message)