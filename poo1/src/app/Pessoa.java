package app;

public class Pessoa {
    private String nome;
    private double salario;
    private double previdencia;

    public Pessoa(String nome, double salario, double previdencia) {
        this.nome = nome;
        this.salario = salario;
        this.previdencia = previdencia;
    }

    // Método equivalente ao calcularDescontos() do PHP
    public double calcularDescontos() {
        return Math.round((salario * 0.275 + previdencia) * 100.0) / 100.0;
    }

    public String getNome() {
        return nome;
    }
}
