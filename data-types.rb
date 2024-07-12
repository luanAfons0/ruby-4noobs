# Ruby é uma linguagem de tipagem dinâmica, ou seja, o tipo de dado é definido ao momento da execução do código.
puts "Tipagem dinâmica"

teste = "Teste"
puts teste.class

teste = 1
puts teste.class

puts "---------------------"

# Ruby também tem tipagem forte.
# O significado disso é que, se você tentar atribuir um valor de um tipo diferente a uma variável, o compilador irá gerar um erro.
# Como por exemplo:
# puts "Tipagem forte"

# x = 10
# y = "10"
# puts x + y
# puts "---------------------"

# Objetos
# Ruby não tem tipos primitivos, ou seja, não tem tipos primitivos como inteiros, floats, strings, etc. Tudo é um objeto. Por exemplo:

# Integer
# Integer ou Inteiro (em português) é um objeto que representa os números mais convencionais que nos conhecemos. Vírgulas não são permitidas, mas travessões são.
puts "Tipo inteiro"

int = -77
puts int.class

int = 88
puts int.class

puts "---------------------"
# Bignum
# Bignum também é um integer só que é um objeto que representa números maiores que o inteiro. Ou seja, números com muitos dígitos.
puts "Tipo bignum"

bignum = 12345678901234567890
puts bignum.class

puts "---------------------"

# Float
# Números decimais são chamados de float ou ponto flutuante.

puts "Tipo float"

float = 3.14
puts float.class
puts "---------------------"

# Boolean
# Literalmente, Boolean é um tipo de dado que representa um valor booleano. Ou seja, um valor que pode ser verdadeiro ou falso.

puts "Tipo bool"

boolean = true
puts boolean.class

boolean = false
puts boolean.class
puts "---------------------"

# Nil
# Em Ruby, o nil representa o vazio. Ele representa falta de valor. Ele não é zero. Por que zero é um número.

puts "Tipo nil"

isnil = 0
puts isnil.nil? # Podemos verificar se um objeto é nil utilizando o método nil?

isnil = nil
puts isnil.nil?

puts isnil.class
puts "---------------------"

# String
# String é um objeto que representa um conjunto de caracteres. Strings são quaisquer tipos de caracteres (letras, dígitos, pontuação) cercados por aspas.
# Aspas, simples ou duplas.

puts "Tipo string"

string = "Ruby"
puts string.class

puts "---------------------"

# Array
# Array é um objeto que representa uma lista de valores cercada por colchetes e separada por vírgulas.
# Em Ruby os arrays são dinâmicos, portanto você não precisa definir seu tamanho inicial, mas se preferir definir você também pode.
puts "Tipo array"

array = [1, 2, 3]
puts array.class

# Em Ruby os Arrays podem conter tipos de dados diferentes também, como esse onde misturamos inteiros, flutuantes e strings:
array = [7, 7.7, "Ruby"]
puts array.class

puts "---------------------"

# Hash
# As hashes são arrays indexados, com Chaves e Valores, que podem ser quaisquer tipos de objetos.

puts "Tipo hash"

hash = { :Linguagem => "Ruby", :Ano => 1995, :Criador => ["Yukihiro", "Matz"] }
puts hash.class

puts "---------------------"

# Regexp
# Uma expressão regular (ou regexp), é uma série de caracteres cercados por barras. É utilizada para verificar se um texto segue um padrão.
puts "Tipo regexp"

regex = /Ruby/
puts regex.class

puts "---------------------"

# Symbols
# Símbolos são palavras que parecem variáveis. Novamente, elas podem conter letras, dígitos e travessões. Mas elas começam com dois pontos.
# Símbolos podem se parecer com um jeito engraçado de Strings, mas devemos pensar em símbolos como significado e não como conteúdo.

puts "Tipo symbols"

symbol = :Ruby
puts symbol.class

puts "---------------------"

# Range
# Um range é formado por dois valores cercados por parênteses e separados por reticências (na forma de dois ou três pontos).

puts "Tipo range"

range = (1..10)
puts range.class

# Normalmente, apenas dois pontos são usados. Se um terceiro ponto for usado, o último valor no range será excluído.

puts (0...10) # representa os números de zero até nove exceto o último como podemos ver logo abaixo.

# puts (0...10).to_a # to_a converte o objeto em um array

puts "---------------------"

# O que podemos fazer com esses objetos?
# Concatenar

puts "Concatenar"

ruby = "Ruby"
vue = "Vue"

puts ruby + " " + vue # o + concatena as strings

puts ruby << "yy" # << também pode ser usado para concatena string

puts "---------------------"

# Comparar

puts "Comparar"

puts ruby == vue # Comparar strings

puts "---------------------"

# Encontrar o tamanho

puts "Encontrar o tamanho"

puts ruby.size # Encontrar o tamanho de uma string

puts "---------------------"

# Conversões com métodos
# Aqui vamos aprender que conversão de um objeto para outro tipo de objeto é possível através de métodos.

# Converter uma string para um inteiro
puts "Converter string para inteiro"

convertstring = "10"
puts convertstring
puts convertstring.class

puts convertstring.to_i
puts convertstring.to_i.class

puts "---------------------"


# Converter uma string para um float
puts "Converter string para float"

convertstring = "10"
puts convertstring
puts convertstring.class

puts convertstring.to_f
puts convertstring.to_f.class

puts "---------------------"

# Converter uma string para um symbol
puts "Converter string para symbol"

convertstring = "10"
puts convertstring
puts convertstring.class

puts convertstring.to_sym
puts convertstring.to_sym.class

puts "---------------------"

# Converter um symbol para uma string
puts "Converter string para symbol"

symbol = :teste
puts symbol
puts symbol.class

puts symbol.to_s
puts symbol.to_s.class

puts "---------------------"

# Converter uma string para um array
puts "Converter string para array"

string = "teste"
puts string
puts string.class

puts string.split("")
puts string.split("").class

puts "---------------------"

# Converter um range para um array
puts "Converter range para array"

range = (0..10)
puts range
puts range.class

puts range.to_a
puts range.to_a.class

puts "---------------------"

# Converter um array para uma string separada por vírgula
puts "Converter um array para uma string separada por vírgula"

array = [7, 7, 7]
puts array
puts array.class

puts array.join(",")
puts array.join(",").class

puts "---------------------"
