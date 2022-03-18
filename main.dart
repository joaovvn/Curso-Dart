void main() {
  String variavelNome = "João Victor";
  print(variavelNome);
  int variavelNumero = 10;
  print(variavelNumero);
  bool ehVerdadeiro = true;
  print(ehVerdadeiro);
  List<String> listaPalavras = ["João", "Victor", "Vasconcelos", "Nogueira"];
  print('${listaPalavras[0]} - ${listaPalavras[1]}');
  
  
  String? nome; //? autoriza o uso de null independente do nullsafety ativado
  nome = "ABC";
  print(nome!); //! proibe o uso do null
  nome = null;
  
  late String sobrenome; //late deixa definir a variável depois porém não pode mais voltar a ser nula
  sobrenome = "Nogueira";
  print(sobrenome);
  
  bool seguirEmFrente = true;
  
  if(seguirEmFrente) {
    print("Andar");
  } else {
    print("Parar");
  }
  
  if(10 > 5){
    print("10 é maior que 5");
  }
  
  int valorInt = 5;
  switch(valorInt){
    case 0:
      print("Zero");
      break;
    case 1:
      print("Um");
      break;
    case 2:
      print("Dois");
      break;
    default:
      print("Padrão");
      break;
  }
  
  for(int i = 1; i <= 10; i++) {
    print("2x${i} = ${i*2}");
  }
  
  int contador = 10;
  
  while(contador != 1){
    contador--;
    print("Loop -> $contador");
  }
  
  Celular celularJV = Celular("Branco", 5, 5.7, 0.8);
  Celular celularLH = Celular("Preto", 10, 5.7, 0.9);
  
  print(celularJV.toString());
  print(celularJV.valorCelular(750));
  
  Carro mercedes = Carro("Mercedes");
  Carro gol = Carro("Gol");
    
  print(mercedes.modelo);
  print(mercedes.valorCarro);
  
  JV jv = JV();
  jv.falar();
  
  Pagamento pagamento = PagarComBoleto();
  pagamento.pagar();
  
  pagamento = PagarComCartao();
  pagamento.pagar();
}

abstract class Pagamento {
  void pagar();
}

class PagarComBoleto implements Pagamento {
  void pagar() {
    print("Pagando com Boleto");
  }
}

class PagarComCartao implements Pagamento {
  void pagar() {
    print("Pagando com Cartão");
  }
}

class Carro{
  final String modelo;
  String _segredo = "Muito Dinheiro!"; //variável iniciando com _ é privada
  
  int _valor = 1000;
  
  int get valorCarro => _valor; //getter
  
  void setValue(int valor) => _valor = valor; //setter
  
  Carro(this.modelo);
}

class Pai {
  
  String falar() {
    return "Veículos";
  }
}

class JV extends Pai {
  
}

abstract class Pessoa {
  
  String comunicar();
  
}

class PessoaET implements Pessoa {
  
  String comunicar() {
    return "Olá Mundo!";
  }
}
  
class PessoaNaoET implements Pessoa {
  
  String comunicar() {
    return "Bom dia!";
  }
    
}

class Celular{
  
  final String cor;
  final int qtdProc;
  final double tamanho;
  final double peso;
  
  
  Celular(this.cor, this.qtdProc, this.tamanho, this.peso);
  
  String toString(){
    return "Celular $cor com processador de $qtdProc cores, $tamanho polegadas e pesa $peso kg";
  } 
  
  String valorCelular(double valor) {
    return "O celular custa ${valor*qtdProc} reais";
  }
  
}