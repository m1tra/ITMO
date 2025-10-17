package src.pockemons;

import ru.ifmo.se.pokemon.Pokemon;
import ru.ifmo.se.pokemon.Type;
import src.atacks.special.DragonPulse;
import src.atacks.special.HydroPump;
import src.atacks.special.Thunder;

public class Anorith extends Pokemon {
    public Anorith(String name, int level) {
        super(name, level);
        setStats(130, 85, 80, 85, 95, 60);
        setType(Type.WATER);
        setMove(new DragonPulse(), new HydroPump(), new Thunder());
    }
    
}
