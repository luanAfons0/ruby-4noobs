# Classes e Objetos
# Tudo em ruby é um objeto. Então vamos aprender a criar os nossos próprios. Para isso, vamos começar criando uma classe chamada Pessoa.

class Pessoa
    def initialize(nome,idade)
       @nome = nome
       @idade = idade 
    end

    def show_infos
        puts "O nome da pessoa é: #{@nome} e tem #{@idade} anos."
    end
end

luan = Pessoa.new("Luan",19)

p luan

puts luan

luan.show_infos
puts "---------------------"

# attr_reader
# Anteriormente vimos como criar nossos objetos e suas propriedades usando variáveis de instância, mas nos podemos lê-las?
# Vamos acessá-las usando as nossas variáveis de instância:

class Pessoa
    attr_reader :nome, :idade

    def initialize(nome,idade)
        @nome = nome
        @idade = idade 
     end
 
     def show_infos
         puts "O nome da pessoa é: #{@nome} e tem #{@idade} anos."
     end
end

loren = Pessoa.new("Loren",18)

puts loren.nome
puts loren.idade

puts "---------------------"
# attr_writer
# E se agora nos quisermos trocar o nome ou a idade usando as variáveis?

class Pessoa
    attr_reader :nome, :idade
    attr_writer :nome, :idade

    def initialize(nome,idade)
        @nome = nome
        @idade = idade 
     end
 
     def show_infos
         puts "O nome da pessoa é: #{@nome} e tem #{@idade} anos."
     end
end

teste = Pessoa.new("Teste1", 1)

puts teste.nome
puts teste.idade

teste.nome = "Teste 2"
teste.idade = 2

puts teste.nome
puts teste.idade

puts "---------------------"

# attr_accessor
# attr_accessor é um método que nos ajuda a fazer o que foi ensinado acima de uma forma mais fácil e menos repetitiva. Como por exemplo:

class Pessoa
    attr_accessor :nome, :idade

    def initialize(nome,idade)
        @nome = nome
        @idade = idade 
     end
 
     def show_infos
         puts "O nome da pessoa é: #{@nome} e tem #{@idade} anos."
     end
end

teste = Pessoa.new("Teste3", 3)

puts teste.nome
puts teste.idade

teste.nome = "Teste 4"
teste.idade = 4

puts teste.nome
puts teste.idade

puts "---------------------"

# Variáveis de Classe
# Também podemos criar variáveis de classe, que são variáveis que são compartilhadas por todos os objetos da classe.

class PessoaComContador
    attr_accessor :nome,:idade
    @@contador = 0

    def initialize(nome,idade)
        @nome = nome
        @idade = idade
        @@contador += 1
    end

    def self.contador
        return @@contador
    end

    def showAttributes
        puts "O nome da pessoa é: #{@nome} e tem #{@idade} anos."
        puts "Atualmente existem #{PessoaComContador.contador} objetos criados baseados nessa classe."
    end
end

pessoaComContador = PessoaComContador.new("Contado",1)

pessoaComContador.showAttributes

puts "---------------------"

# Herança
# Em Ruby, temos herança única, que significa que uma classe pode apenas ser criada herdando de apenas outra classe,
# reduzindo a complexidade do código.
# Dessa forma, podemos ao invés de repetir a definição de métodos por classes similares, pode realizar essa operação em
# uma única classe (também chamada de superclasse) e as outras que possuem métodos comuns (chamadas de subclasses) herdam
# essas funcionalidades da sua superclasse. A herança ajuda a reduzir substancialmente a duplicação de código. 

class OutraPessoa < Pessoa
    def show_infos
       puts "Outra pessoa : #{@nome}, tem #{@idade}" 
    end
end

outraPessoa = OutraPessoa.new("Outra Pessoa",15)
outraPessoa.show_infos

puts "---------------------"