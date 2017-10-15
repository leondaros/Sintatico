/***********************************************
Esse programa implementa uma calculadora
*************************************************/

// adoro compiladores

public class calculadora extends calculos{
   protected string marca;
   private final char codigo;

 public  constructor (string a, char b, boolean ehCientifica) {
      marca = a;
      codigo = b;
      super(ehCientifica); 
   }

  public float soma(float num1, float num2) {  // retorna a soma dos numeros
      return num1 + num2;
   }

  public double multiplicacao(double num) {  //retorna a multiplicacao dos numeros
      return num1 * num2;
   }

  public double subtracao(double num1, double num2) { // retorna a subtracao dos numeros
      return num1 - num2;
   }

  public double divisao(double num1, double num2) { // retorna a divisao dos numeros
      return num1 / num2;
   }

  public double resto(double num1, double num2) { // retorna o resto da divisao dos numeros
      return num1 % num2;
   }

  public int comparacao (num1, num2) { // compara os dois numeros e imprime o resultado
    double list = [num1,num2];
   
    if (num1 != num2){
      double maiorNumero = 0d;
      double menorNumero = 0d;
    
      for(int i=0;i<1;i=i+1){
        if(maiorNumero <= list[i]){
          maiorNumero = list[i];
        } else if(maiorNumero >= list[i]){
          menorNumero = list[i];
        }
      }
      if (menorNumero  < maiorNumero) {
         print menorNumero +" eh menor que "+ maiorNumero;
      } else {
         print menorNumero +" e "+ maiorNumero+" são iguais";
      }
      return 0;
   }
   return -1;
   }

public boolean ambosPositivos(long num1, long num2){
  return (num1 > 0 && num2 > 0);
  }

public boolean opostoE(boolean val1, boolean val2){
  return (!val1 && !val2);
  }

public boolean algumNegativo(byte num1, byte num2){
   if(num1 < 0 || num2 < 0){
      return true;
}
return false;
}

public boolean iguaisXorDiferentes(short num1, short num2, short num3, short num4){
   return ((num1 == num3) ^ (num2 != num4));
 }

  public int start(){
      boolean ehCalculadora = false;
      char codigo = 'a'
      calc = new calculadora ("Casio", codigo, ehCalculadora);
      double num1, num2;
      int opcao;
      double total = 0d;
      do {
         print "Escolha a operacao:\n";
         print "1 - soma\n";
         print "2 - subtracao\n";
         print "3 - multiplicacao\n";
         print "4 - divisao\n";
         print "5 - resto\n";
         print "6 - comparacao \n"; 
         print "7 - sair\n";
         read opcao;
         if(opcao != 7) {
            print "digite o primeiro numero:\n";
            read num1;
            print "digite o segundo numero:\n";
            read num2;
            switch(opcao) {
               case 1:
               total = calc.soma(num1, num2);
               break;
               case 2:
               total = calc.subtracao(num1, num2);
               break;
               case 3:
               total = calc.multiplicacao(num1, num2);
               break;
               case 4:
               total = calc.divisao(num1, num2);
               break;
               case 5:
               total = calc.resto(num1, num2);
               break;
               case 6:
               calc.comparacao(num1,num2);
      default: break;
            }
   if (total > 0) {
               print "Total eh menor que 0:" + total;
            } else if (total == 0) {
      print "Total eh igual a 0";
   }
   print "Total eh maior que 0:" + total;
        }
      } while (opcao != 7);
      
      return 0;   

   }
}
