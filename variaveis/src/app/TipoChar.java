package app;

public class TipoChar {
    static void main(String[] args) {
        char letra = 'A';
        char numeroComoChar = '5';
        char simbolo = '@';
        char espaco = ' ';

        System.out.println(letra);         // A
        System.out.println(numeroComoChar);// 5
        System.out.println(simbolo);       // @
        System.out.println(espaco);        // (espaço)


        char c = 'A';
        System.out.println((int)c); // Imprime 65
        System.out.println(c); // Imprime 65

        char letraA = '\u0041'; // Unicode de 'A'
        char letraC = '\u00E7'; // Unicode de 'ç'
        simbolo = '\u2605'; // Unicode de ★ (estrela)

        System.out.println(letraA); // A
        System.out.println(letraC); // ç
        System.out.println(simbolo); // ★



    }
}
