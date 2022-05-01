/*
Project: VirtualPetProgram
Description: This program lets you interact with a virtual pet. In this program you can
name, feed, groom, and play with your pet.
 */
import java.util.Scanner;
public class VirtualPetProgram {
    public static void main(String[] args){
        // Initialize the Scanner
        Scanner input = new Scanner(System.in);
        int option;

        // Start the user experience
        System.out.println("Welcome to the Virtual Pet Program!");
        System.out.print("What would you like to name your pet? ");

        VirtualPet pet = new VirtualPet(input.nextLine());
        do {
            System.out.println("\n-----------------------------------------------------------------");
            System.out.println("Please enter the integer for the option you choose:");
            System.out.println("  1. Check statuses");
            System.out.println("  2. Feed your virtual pet");
            System.out.println("  3. Play with your virtual pet");
            System.out.println("  4. Clean your virtual pet");
            System.out.println("  5. End program");
            System.out.print("\nYour choice: ");

            // Get the choice from the user.
            option = input.nextInt();

            switch (option) {
                case 1:     // Check statuses
                    // Retrieve the values using the Getter methods.
                    System.out.println("\nValues for " + pet.getName());
                    System.out.println("  Happiness: " + pet.getHappiness());
                    System.out.println("  Energy: " + pet.getEnergy());
                    System.out.println("  Hygiene: " + pet.getHygiene());
                    break;
                case 2:     // Feed your virtual pet
                    // Call feed() instance method. VirtualPet's feed() method should be doing all the work.
                    if (pet.feed()) {
                        System.out.println("\nYou fed " + pet.getName() + ".");
                    } else {
                        System.out.println("\nYou couldn't feed " + pet.getName() + " due to a restriction.");
                    }
                    break;
                case 3:     // Play with your virtual pet
                    // Call play() instance method. VirtualPet's play() method should be doing all the work.
                    if (pet.play()) {
                        System.out.println("\nYou played with " + pet.getName() + ".");
                    } else {
                        System.out.println("\nYou couldn't play with " + pet.getName() + " due to a restriction.");
                    }
                    break;
                case 4:     // Clean your virtual pet
                    // Call clean() instance method. VirtualPet's clean() method should be doing all the work.
                    if (pet.clean()) {
                        System.out.println("\nYou cleaned " + pet.getName() + ".");
                    } else {
                        System.out.println("\nYou couldn't clean " + pet.getName() + " due to a restriction.");
                    }
                    break;
                case 5:     // End program
                    // Display a summary depending on how high the happiness is.
                    System.out.println("Thank you for playing! Here is a summary of your pet's experience:");
                    if (pet.getHappiness() >= 100) {
                        System.out.println("  You did a PERFECT job! Your pet loves you!");
                    } else if (pet.getHappiness() >= 80) {
                        System.out.println("  You did pretty well! Your pet likes you.");
                    } else if (pet.getHappiness() >= 60) {
                        System.out.println("  You did okay. Your pet isn't as happy as it could be.");
                    } else {
                        System.out.println("  You could have done a lot better. Your pet isn't very happy.");
                    }
                    break;
                default:        // User selected an invalid option.
                    System.out.println("\nPlease select a valid option.");
            }
        } while (option != 5);

    }
}
// Your task is to complete this class.
class VirtualPet {
    //instance variances created to be returned in each method.
    private String name;
    private int happiness;
    private int energy;
    private int hygiene;

    //Constructor that inputs the pets name. and default levels.
    public VirtualPet(String pet){
        this.name = pet;
        happiness = 25;
        energy = 25;
        hygiene = 50;
        setName(pet);

    }
    //Constructor that gives the pet a default name.
    public VirtualPet(){
        this("DEFAULT");
    }
    //getter method that returns setName.
    public String getName(){
        return this.name;
    }
    //setter method that confirms if the length is less than 30.
    public void setName(String pet){
        if(name.length() < 30){
            this.name = pet;
        } else this.name = "default";

    }

    //getter method that lets me know that I am taking care of my animal, even though.
    public int getHappiness(){
        return setHappiness();
    }
    //Dogs love playing and so do cats; so I created a getter method that gets there energy levels
    //and lets me know when they want to play.
    public int getEnergy(){
        return setEnergy();
    }
    //this getter method lets me groom the pet so that it loves me more.
    public int getHygiene() {
        return setHygiene();
    }
    //setter method for happiness.
    public int setHappiness(){
        return happiness;
    }
    //setter method for energy.
    public int setEnergy(){
        return energy;
    }
    //setter method for hygiene;
    public int setHygiene(){
        return hygiene;
    }
    //method that updates pet after feeding him/her.
    public boolean feed(){
        if(energy < 80){
            this.happiness = happiness + 5;
            this.energy = energy + 30;
            return true;
        } else
            return false;

    }
    //method that updates the pet status after im done playing with him/her.
    public boolean play(int change){
        this.hygiene += change;
        if(energy > 30){
            this.happiness = happiness + 20;
            this.energy = energy - 15;
            this.hygiene = hygiene - 30;
            return true;
        } else
            return false;
    }
    //updates pet status based on cleaning my pet.
    public boolean clean(){

        if(energy < 70){
        this.happiness = happiness - 20;
        this.hygiene = hygiene + 50;
        return true;
        } else
            return false;

    }
    //Method that updates energy levels.
    private void updateEnergy(int change){
        this.energy += change;
      if( energy < 1){
          energy = 1;
      }
      if(energy > 100)
          energy = 100;
    }
    //method that updates happiness levels
    private void updateHappiness(int change){
        this.happiness += change;
        if(happiness < 1){
            happiness = 1;
        }
        if(happiness > 100)
            happiness = 100;
    }
    //method that updates hygiene levels.
    private void updateHygiene(int change){
      this.hygiene += change;
      if(hygiene < 1){
          hygiene = 1;
      }
      if(hygiene > 100){
          hygiene = 100;
      }
    }
}

