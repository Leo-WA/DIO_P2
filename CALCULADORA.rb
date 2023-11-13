def menu
  puts "Escolha uma opção:"
  puts "1 - Soma"
  puts "2 - Subtração"
  puts "3 - Multiplicação"
  puts "4 - Divisão"
  puts "0 - Sair"
  gets.chomp.to_i
end

def pedir_numeros
  begin
    puts "Digite o primeiro número:"
    num1 = Float(gets.chomp)
    puts "Digite o segundo número:"
    num2 = Float(gets.chomp)
    [num1, num2]
  rescue ArgumentError
    puts "Por favor, digite um número válido."
    retry
  end
end

def soma
  num1, num2 = pedir_numeros
  puts "Resultado: #{num1 + num2}"
end

def subtracao
  num1, num2 = pedir_numeros
  puts "Resultado: #{num1 - num2}"
end

def multiplicacao
  num1, num2 = pedir_numeros
  puts "Resultado: #{num1 * num2}"
end

def divisao
  num1, num2 = pedir_numeros
  if num2.zero?
    puts "Não é possível dividir por zero."
  else
    puts "Resultado: #{num1 / num2}"
  end
end

loop do
  case menu
  when 1
    soma
  when 2
    subtracao
  when 3
    multiplicacao
  when 4
    divisao
  when 0
    puts "Saindo..."
    break
  else
    puts "Opção inválida!"
  end
end
