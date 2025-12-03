void main(){
  // esta variavel PODE ser nula (por causa do ?)
  String? nome;

  // Esta variavel NÂO pode ser nula (sem ?)
  // String saudacao = "Ola";

  print("Exemplo 1: Variavel nula");
  print(nome); // Saida null (ela pode ser null)

  print("\n Exemplo 2: Atribuindo a variavel nula");
  nome = "Maria";
  print(nome); // Saida Maria

  print("\n Exemplo 3: Acessado com !");
  // nome agora tem valor, esntão podemos usar nome!
  String texto = nome; //Usando o operador "!" para tirar o ? do tipo
  print("Texto com nome: $texto");

  print("\nExemplo 4: Tentando usar variavel não inicializada");
  // Vamos criar uma variavel que PODE ser nula
  String? mensagem;

  // agora vamos tentar força ela com !
try{
  String novaMensagem = mensagem!;
  print(novaMensagem);
} catch (e){
  print("Erro: Voce tentou usar uma variavel nula com !");
  print("Detalhes: $e");
}
}