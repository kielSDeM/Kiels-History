
/*Project: BankSimulator
Description: A program that allows a person to access there bank account. It allows them to make deposits, withdraw,
or simply check there balance. Program is lacking security features and protection against crime.
Name: Kiel DeMarco
ID: 917261896
Class: CS_210
Semester: Fall 2020
 */
import java.util.Scanner;

public class BankSimulator {
    public static void main(String[] args) {
        Scanner input = new Scanner(System.in);
        // integers I used in the program I organized here.
        int startingBalance = 300;
        int currentBalance = 0;
        int depositAmount;
        int wdAmount;
        // Organized the strings in a sort of not so organized index.
        String account = "What would you like to do with your account today?";
        String error = "Error! Cannot complete action!";
        String balanceIs = "Balance is: ";
        String cba = "Check Balance: q";
        String wd = "Withdraw: w";
        String dep = "Deposit: e";
        String ea = "Enter Amount: ";
        String ex = "Exit: x";
        /*
         * Kind of figured that if the person was a customer of my bank that they would
         * have there own username. Unfortunately, my bank has horrible security.
         */
        System.out.print("Please enter your username here: ");
        String name = input.next();
        if (name.length() > 50)
            System.out.println("Guest");
        else
            System.out.print("\n" + "Welcome Back " + name + "!");
        /*
         * Here is where my loop begins. I went with the Switch cases because they were
         * recommended. Have been stuck working with them.
         */
        while (startingBalance > 0) {
            /*
             * This displays the menu so that the person knows what inputs have actual
             * functions. I went with lower cases, because it makes it easier on the person
             * who is using this app when they don't have to press shift. Unless of course
             * my program were to ignore whether or not it is capitalized.
             */
            System.out.print("\n" + account + "\n" + cba + "\n" + wd + "\n" + dep + "\n" + ex + "\n" + "Enter: ");
            String ans = input.next();
            // Logical statement that prevents a user from entering an incorrect option.
            if (!ans.equals("q") && !ans.equals("w") && !ans.equals("e") && !ans.equals("x")) {
                System.out.println(error + " Entry must be one of the above options.");
            }
            switch (ans) {
            /*
             * This just prints out the the user balance. Kind of a big thing. used a
             * continue statement at the end so that the loop would continue after the
             * balance was displayed. Also made it so where startingBalance equals
             * currentBalance for cases q,w,e so that it would continue to print out the
             * correct balance.
             */
            case "q":
                if (currentBalance >= 30)
                    startingBalance = currentBalance;
                System.out.println(balanceIs + "$" + startingBalance);
                break;

            /*
             * This is for the withdrawals. I created a loop to prevent the user from
             * entering a negative value that would end up making a deposit instead; running
             * my business to the ground.
             */
            case "w":
                do {
                    System.out.print(ea);
                    wdAmount = input.nextInt();
                    if (wdAmount < 0)
                        System.out.println(error);
                } while (wdAmount < 0);
                currentBalance = (startingBalance - wdAmount);
                if (wdAmount > 0 && currentBalance >= 30) {
                    startingBalance = currentBalance;
                    System.out.println(balanceIs + "$" + currentBalance);
                } else
                    System.out.println("Balance cannot fall below 30$.");
                continue;

            /*
             * This case is for my deposit. I created a loop so that if the customer enters
             * a negative number they don't start losing money.
             */
            case "e":
                do {
                    System.out.print(ea);
                    depositAmount = input.nextInt();
                    if (depositAmount <= 0)
                        System.out.println(error);
                } while (depositAmount <= 0);
                currentBalance = startingBalance + depositAmount;
                if (currentBalance >= 30)
                    startingBalance = currentBalance;
                System.out.println(balanceIs + "$" + currentBalance);
                continue;

            // This case allows the user to exit the program.
            case "x":
                System.out.print("Thank you for using Golden Mountain Banking! Have a nice day.");
                return;

            }

        }

    }
}
