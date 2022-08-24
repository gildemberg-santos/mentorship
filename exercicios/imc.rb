class CalculadoraDeImc
  def initialize
    puts linhas
    puts "Calculadora de IMC"
    puts linhas
  end

  def call
    print "Digite sua altura  (ex.: 1.70): "
    @altura = gets.chomp.to_f

    print "Digite seu peso    (ex.: 69.2): "
    @peso = gets.chomp.to_f

    calcular_imc
    tabela_de_imc
    self
  end

  private

  def calcular_imc
    @imc = @peso / @altura ** 2
    @imc.round(2)
  end

  def tabela_de_imc
    imcs = [
      { imc: ...18.5,    legenda: "Menor que 18,5     | Magreza         | O" },
      { imc: 18.5..24.9, legenda: "Entre 18,5 e 24,9  | Normal          | O" },
      { imc: 25..29.9,   legenda: "Entre 25,0 e 29,9  | Sobrepeso       | I" },
      { imc: 30..39.9,   legenda: "Entre 30,0 e 39,9  | Obesidade       | II" },
      { imc: 40..,       legenda: "Maior que 40,0     | Obesidade Grave | III" }
    ]
    puts linhas
    puts "IMC                  | Classificação   | Obesidade(Grau)"
    puts linhas
    puts imcs.map { |i| "#{i[:imc] === @imc ? ">" : "*"} #{i[:legenda]}" }
    puts linhas
    puts "IMC: #{@imc}"
    puts linhas
  end

  def linhas
    "-" * 60
  end
end

CalculadoraDeImc.new.call
