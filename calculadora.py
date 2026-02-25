# calculadora.py

# Somar
def soma(a, b):
    return a + b

# Subtrair
def subtracao(a, b):
    return a - b

# Multiplicar
def multiplicacao(a, b):
    return a * b

# Dividir
def divisao(a, b):
    if b == 0:
        return "Erro: Divisão por zero!"
    return a / b

# Base da calculadora
print("=== CALCULADORA ===")

while True:
    print("Escolha a operação:")
    print("1 - Soma")
    print("2 - Subtração")
    print("3 - Multiplicação")
    print("4 - Divisão")
    print("0 - Sair")

    opcao = input("Opção: ")

    if opcao == "0":
        print("Encerrando...")
        break  # Encerra o loop e sai da calculadora

     # Recebe os números do usuário
    if opcao in ["1", "2", "3", "4"]:
        a = float(input("Digite o primeiro número: "))
        b = float(input("Digite o segundo número: "))

        if opcao == "1":
            print("Resultado:", soma(a, b))
        elif opcao == "2":
            print("Resultado:", subtracao(a, b))
        elif opcao == "3":
            print("Resultado:", multiplicacao(a, b))
        elif opcao == "4":
            print("Resultado:", divisao(a, b))
    else:
        print("Opção inválida! Tente novamente.")