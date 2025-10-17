package src;

import ru.ifmo.se.pokemon.Battle;
import ru.ifmo.se.pokemon.Pokemon;
import src.pockemons.Lapras;

public class Main {
    public static void main(String[] args) {
        Battle b = new Battle();
        Pokemon p1 = new Lapras("Лапрасина", 1);
        Pokemon p2 = new Pokemon("Хищник", 1);
        b.addAlly(p1);
        b.addFoe(p2);
        b.go();
    }
}