#!/bin/bash
# ===== Calculadora em Shell Script =====
# Permite soma, subtração, multiplicação e divisão
# Funciona com números inteiros e decimais
# Executar em Linux ou macOS (ou WSL no Windows)

# Loop principal para permitir múltiplas operações
while true; do
    echo "===== CALCULADORA ====="

    # Solicita o primeiro número
    echo "Digite o primeiro número (ou 'sair' para encerrar):"
    read num1
    if [[ "$num1" == "sair" ]]; then
        echo "Encerrando calculadora..."
        break
    fi

    # Solicita o segundo número
    echo "Digite o segundo número:"
    read num2

    # Solicita a operação desejada
    echo "Escolha a operação (+ - * /):"
    read op

    # Validação da operação
    case $op in
        +)
            resultado=$(echo "$num1 + $num2" | bc -l)
            ;;
        -)
            resultado=$(echo "$num1 - $num2" | bc -l)
            ;;
        \*)
            resultado=$(echo "$num1 * $num2" | bc -l)
            ;;
        /)
            # Tratamento de divisão por zero
            if [[ "$num2" == 0 ]]; then
                echo "Erro: Divisão por zero!"
                continue  # volta para o início do loop
            fi
            resultado=$(echo "scale=2; $num1 / $num2" | bc -l)
            ;;
        *)
            echo "Operação inválida!"
            continue  # volta para o início do loop
            ;;
    esac

    # Mostra o resultado
    echo "Resultado: $resultado"

    # Linha em branco para melhor visualização
    echo ""
done