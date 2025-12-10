package app;

public class PessoaEstruturada {


       public static void main(String[] args) {

            double joaoSalario = 1000;
            double joaoPrevidencia = 100;
            String joaoNome = "João Filho";
            double joaoDescontos = Math.round((joaoSalario * 0.275 + joaoPrevidencia) * 100.0) / 100.0;

            double mariaSalario = 2000;
            double mariaPrevidencia = 200;
            String mariaNome = "Maria Rute";
            double mariaDescontos = Math.round((mariaSalario * 0.275 + mariaPrevidencia) * 100.0) / 100.0;

            double joseSalario = 3000;
            double josePrevidencia = 400;
            String joseNome = "José Salgado";
            double joseDescontos = Math.round((joseSalario * 0.275 + josePrevidencia) * 100.0) / 100.0;

            System.out.println("O valor do desconto de " + joaoNome + " é " + joaoDescontos + ".");
            System.out.println("O valor do desconto de " + mariaNome + " é " + mariaDescontos + ".");
            System.out.println("O valor do desconto de " + joseNome + " é " + joseDescontos + ".");
        }

}
