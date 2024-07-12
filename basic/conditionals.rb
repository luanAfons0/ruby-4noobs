# Condicionais
# É importante saber que tudo em Ruby acaba com end.

#if..else
#if é uma estrutura de controle que executa uma determinada ação caso uma condição seja verdadeira.

#else é uma estrutura de controle que executa uma determinada ação caso uma condição seja falsa.
puts "if else elsif"
r = "Ruby"

if r == "Ruby"
  puts "É Ruby"
else
  puts "Não é Ruby"
end

# elsif
# elsif é um else junto com if.

r = "PHP"

if r == "Ruby"
  puts "É Ruby"
elsif r == "PHP"
  puts "É PHP"
else
  puts "Não é Ruby nem PHP"
end

puts "---------------------"
# unless
# unless é o contrário do if e ele é utilizado para negar uma condição e executar o bloco caso a condição seja falsa.
puts "unless"

r = "PHP"

unless r == "Ruby"
  puts "Não é Ruby"
else
  puts "É Ruby"
end

puts "---------------------"

# Esse tipo de código é bem confuso, as vezes é melhor fazer um bom teste positivo (if).

# case
# case é utilizado para executar um bloco de código de acordo com uma condição.
# É possível utilizar mais de uma condição. Podemos utilizar o case para fazer algumas comparações interessantes.
puts "case"

r = "JavaScript"

case r
when "Ruby"
  puts "É Ruby"
when "PHP"
  puts "É PHP"
else
  puts "Não é Ruby nem PHP"
end

puts "---------------------"
# for
# for é utilizado para executar um bloco de código de acordo com um determinado número de vezes. É possível utilizar o for para fazer algumas repetições interessantes.
puts "for"

for i in 1..10
  puts i
end

puts "---------------------"

# while
# while é utilizado para executar um bloco de código enquanto uma condição for verdadeira. (Faça enquanto).

puts "while"

r = "JavaScript"

puts "---------------------"

# Se não interromper com Ctrl+C, esse código vai ficar funcionando para sempre.
# while r != "Ruby"
#   puts "Não é Ruby"
# end

# until
# until é utilizado para executar um bloco de código enquanto uma condição for falsa. (Faça até que).

puts "until"

i = 0

until i == 7
  puts i
  i += 1
end

puts "---------------------"

# loop
# Interações dentro de um loop:

# break - sai do loop
# next - vai para a próxima iteração
# redo - repete o loop do início, sem reavaliar a condição ou pegar o próximo elemento
# Vamos utilizar essas interações:
puts "Interações dentro de um loop"

# break
for i in (0..77)
  break if i == 4
  puts i
end

# next
for i in (0..77)
  next if i == 4
  puts i
end

# redo
# for i in (0..77)
#   redo if i == 4
#   puts i
# end
puts "---------------------"