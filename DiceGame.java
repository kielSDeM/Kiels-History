/*
Project: DiceGame
Description: This program is a gambling game where the person rolls a dice and a random number is generated.
No real win or lose condition, and game ends when the player reaches a score of 0.
 */
import java.util.Scanner;

public class DiceGame {
    //instance variables created so that variables can be used in multiple methods.
    public static int score = 100;
    public static int bet;
    public static Scanner dice;
    private static int earn;
    //the main method that runs the game program so long as the loop condition is met
    public static void main(String[] args){
        //Name of the program method used to run the other methods.
        Yhat();
    }
    //This method runs the game from start to finish.
        public static void Yhat(){
            dice = new Scanner(System.in);
            //Lets the person know the name and rules of the game.
            System.out.print("Welcome to Yhat! The wonderful dice game!"+
                    "\n" + "In this game you will score points based off the number you roll. \n" +
                    "Please tell me your name so we can begin: ");
            String name = dice.nextLine();
            System.out.print("\n Hi, " + name + "!" + " Your starting balance is 100pts.");
            //Loop that continues the game so long as the users point total does not fall below 0.
            while (score > 0) {
                betAmount();
                diceToss();
                score = earn;
                if (earn <= 0) {System.out.println("Game Over.");
                return;}
            }   
    }
        //Method that allows the person to enter there bet amount so that they may roll the dice.
        public static void betAmount(){
            String error = "Invalid bet. Amount entered is either less than 0 or greater than your current balance";
        //Loop created to that the loop cannot go above the users current balance or below 0.
            do {
                System.out.print("\n How much would you like to bet?" + "\n Enter Amount: ");
                bet = dice.nextInt();
                if (bet < 0) System.out.print(error);
                else if(bet > score) System.out.println(error);
        } while(bet < 0 || score < bet);
    }
    //Method created for the dice roll; numbers were limited to be 1-6.
        public static void diceToss() {

        int diceRoll = 1 + (int) (Math.random() * 6);
        pointsScored(diceRoll);
    }
    //Method with switch statement that gives the user there score based on there dice roll.
        public static void pointsScored(int diceRolled){
        //Created a set of strings for the print statements to print a statement based on the dice roll.
            String aScore = "You lost points. :(.";
            String bScore = "You won nothing :/.";
            String cScore = "Your current score is: ";
            String dScore = "Congratulations! You doubled your bet :)!";
            String eScore = "Congratulations! You won your bet!";


            System.out.println("You rolled a " + diceRolled);
            //case for each numbered rolled so that a score is returned after the dice is rolled.
            switch (diceRolled) {
                case 1:
                case 2:
                    //Math used in switch statement to reflect the loss of points and points scored from the bet.
                    //Same for all cases just different equations.
                    earn = score + (-bet);
                    if(earn>0)System.out.println(aScore + "\n" + cScore + earn);
                    else if(earn<0) System.out.println(aScore + "\n" + cScore + 0);
                    break;
                case 3:
                    earn = score;
                    if(earn>0)System.out.println(bScore + "\n" + cScore + earn);
                    else if(earn < 0) System.out.println(bScore + "\n" + cScore + 0);
                    break;
                case 4:
                case 5:
                    earn = score + bet;
                    if(earn > 0)System.out.println(eScore + "\n" + cScore + earn);
                    else if(earn < 0) System.out.println(eScore + "\n"+ cScore + 0);
                    break;
                case 6:
                    earn = score + 2*bet;
                    System.out.println(dScore + "\n" + cScore + earn);
                    if(earn < 0) System.out.println(dScore + "\n"+ cScore + 0);
                    break;
            }

    }
}
