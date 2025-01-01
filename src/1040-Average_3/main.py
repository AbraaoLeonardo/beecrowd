def calculate_media(n1, n2, n3, n4):
    return (n1 * 2 + n2 * 3 + n3 * 4 + n4) / 10

def print_result(media):
    if media < 5:
        print("Aluno reprovado.")
    elif media >= 7:
        print("Aluno aprovado.")
    else:
        print("Aluno em exame.")

def main():
    # Read input
    n1, n2, n3, n4 = map(float, input().split())

    # Calculate the initial media
    media = calculate_media(n1, n2, n3, n4)
    
    # Print the initial result based on media
    print(f"Media: {media:.1f}")
    print_result(media)
    
    # If the student is in "exame", ask for the exam grade and calculate the final media
    if media >= 5 and media < 7:
        nova_nota = float(input())
        print(f"Nota do exame: {nova_nota}")
        
        nova_media = (media + nova_nota) / 2
        if nova_media < 5:
            print("Aluno reprovado.")
        else:
            print("Aluno aprovado.")
        
        print(f"Media final: {nova_media:.1f}")

# Start the program
main()
