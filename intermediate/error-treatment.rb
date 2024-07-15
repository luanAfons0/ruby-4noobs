begin
    erro_acessado = nil
    resultado = 10 / 0.to_s
rescue ZeroDivisionError
  erro_acessado = 1
  puts "Erro de divisão por zero!"
  raise "Erro interno!"
rescue TypeError => e
  erro_acessado = 2
  puts "Um erro de Tipo ocorreu: #{e.message}"
ensure # Esta parte sempre será executada
  puts "Fim da execução. Erro: #{erro_acessado}"
end