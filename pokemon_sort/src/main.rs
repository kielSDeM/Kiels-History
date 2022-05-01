
fn main() {
    use std::collections::HashMap;

    println!("Hello and Welcome to the wonderful world of pokemon!");

    let mut pokemon = HashMap::new();
    pokemon.insert(String::from("Pikachu"), String::from("electric"));
    pokemon.insert(String::from("Raichu"), String::from("electric"));
    pokemon.insert(String::from("Jolteon"), String::from("electric"));
    pokemon.insert(String::from("Charmander"), String::from("fire"));
    pokemon.insert(String::from("Charmeleon"), String::from("fire"));
    pokemon.insert(String::from("Charizard"), String::from("fire"));
    pokemon.insert(String::from("Squirtle"), String::from("water"));
    pokemon.insert(String::from("Bulbasaur"), String::from("grass"));

    let mut sorted: Vec<_> = pokemon.iter().collect();
    println!("{:?}", sorted);

    sorted.sort_by_key(|a| a.0);
    println!("{:?}", sorted);

    for(key, value) in sorted.iter() {
       println!("Pokemon: {} Type: {}", key, value);
    }
}
//I could add more Pokemon but this app establishes its purpose which is to sort
//a hashmap.