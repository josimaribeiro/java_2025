package app;

public class PessoaPOO {


        public static void main(String[] args) {

            Pessoa joao = new Pessoa("João Filho", 1000, 100);
            Pessoa maria = new Pessoa("Maria Rute", 2000, 200);
            Pessoa jose = new Pessoa("José Salgado", 3000, 300);

            System.out.println("O valor do desconto de " + joao.getNome() + " é " + joao.calcularDescontos() + ".");
            System.out.println("O valor do desconto de " + maria.getNome() + " é " + maria.calcularDescontos() + ".");
            System.out.println("O valor do desconto de " + jose.getNome() + " é " + jose.calcularDescontos() + ".");
        }


}
