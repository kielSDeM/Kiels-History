/*
Project: StoreProgram
Description: This program tells you the inventory in your store. It tells you what you are low on the total value,
of all your items put together, highest quantity item and lowest quantity item in your store.
Name: Kiel DeMarco
Class: CS_210
Semester: Fall 2020
 */
import java.util.Scanner;
    public class StoreProgram {

        public static void main(String[] args) {

            String[] storeItems = {
                    "broccoli", "onion", "carrot", "turnip", "mango",
                    "bread", "garlic", "celery", "apple", "banana",
                    "raisins", "grapes", "lemon", "orange", "potato"
            };

            int[] itemQuantities = {
                    23, 5, 7, 15, 2,
                    13, 13, 8, 20, 30,
                    3, 25, 10, 9, 1
            };

            double[] itemPrices = {
                    2.0, 0.89, 0.70, 1.50, 2.99,
                    3.45, 1.45, 1.12, 3.99, 0.25,
                    4.99, 7.00, 1.75, 1.80, 3.25
            };

            run(storeItems, itemQuantities, itemPrices);
        }

        //This method runs the program from start to finish.
        public static void run(String[] items, int[] quantities, double[] prices) {
            //Strings I created for the menu.
            String sAIn = "Show all inventory: q";
            String sInvLowQ = "Show inventory with low quantity: w";
            String sHighLowInvI = "Show the highest and lowest value inventory items: e  ";
            String sTotalInv = "show the total value of the inventory: r";
            String exit = "Exit: x";
            String inv;
            //Loop created to allow the person to continue to use the program until they want to quit using it.
            do {
               Scanner fruit = new Scanner(System.in);
               //The main menu of my program displays what inputs allow them to access parts of the app.
                System.out.println("What would you like to do with the inventory?" + "\n" + sAIn +
                        "\n" + sInvLowQ + "\n" + sHighLowInvI + "\n" + sTotalInv + "\n" + exit );
                System.out.print("Enter input: ");
                inv = fruit.nextLine();
                //Switch input that responds to the users input, allowing them to access certain parts of the app.
                switch(inv){
                    case "q": displayInventory(items, quantities, prices);
                    break;
                    case "w": displayLowInventory(items, quantities, prices);
                    break;
                    case "e": displayHighLowest(items, quantities, prices);
                    break;
                    case "r": displayTotalInventory(items, quantities, prices);
                    break;
                    case "x": System.out.println("Thank you for checking your inventory with Invicheck!");
                    break;
                    // message displayed when the user does not enter a proper input.
                    default: System.out.println("Sorry but you must enter one of the shown values. \n");
                    break;
            }
            } while(!inv.equals("x"));
        }

        //Method created so that the user can see there inventory.
        public static void displayInventory(String[] items, int[] quantities, double[] prices) {
            //Loop created that fins the full inventory.
            for(int i = 0; i < items.length; i++) {
                // Statement used to displays the full inventory.
                System.out.printf("Items: " + items[i] +  "\tQuantities: " + quantities[i] +
                        "\tPrices: " + prices[i] + "\n");
            }
        }
        //method created that shows items with a quantity less than 5.
        public static void displayLowInventory(String[] items, int[] quantities, double[] prices){
            //loop created to  find the quantities that are less than 5.
            for(int j = 1; j < quantities.length; j++) {
                //statement created to display the results of the loop.
                if(quantities[j] < 5) System.out.printf("Lowest Quantity Items: " + items[j] +
                        "\tQuantity: " + quantities[j] + "\tPrice: $" + prices[j] + "\n");
            } System.out.print("\n");
        }
        //method created to display the highest and lowest quantities of the store.
        public static void displayHighLowest(String[] items, int[] quantities, double[] prices){
            //variables used through both the high value and low value loops.
            double maxPrice = prices[0];
            double minPrice = prices[0];
            int maxQuantity = quantities[0];
            int minQuantities = quantities[0];
            double totalValue;
            double totalMinValue;
            //for loop that finds the highest value item.
            for(int m = 0; m < prices.length; m++ ) {
                if(maxPrice < prices[m] && maxQuantity < quantities[m]){
                    maxQuantity += quantities[m];
                    maxPrice += prices[m];
                    totalValue = (quantities[m]*prices[m]);
                if (prices[m] <= totalValue && maxQuantity >= quantities[m])
                    //statement that displays the highest value item.
                    System.out.printf("Highest inventory value: Item: " + items[m] + " Value: $" + totalValue + "\n");
            }
            }
            //for loop that finds the lowest inventory item.
            for(int l = 1; l < quantities.length; l++) {
                if(minQuantities > quantities[l] && minPrice > prices[l])
                    minPrice -= prices[l];
                    minQuantities -= quantities[l];
                    totalMinValue = (quantities[l]*prices[l]);
                if(totalMinValue == prices[l])
                    //statement that displays the results of the loop.
                    System.out.printf("Lowest inventory value: Item: " + items[l] + " Value: $" + totalMinValue +"\n");
            }System.out.println();

        }
        //This shows the total value of the store inventory.
        public static void displayTotalInventory(String[] items, int[] quantities, double[] prices){
            double totalPrice = 0;
            //Loop and calculations created to find the total value of the store inventory.
            for (int i = 0; i < prices.length; i++) {
                totalPrice += (prices[i]*quantities[i]);
            }
            //displays the total value.
            System.out.println("The total inventory value is: $" + totalPrice + "\n");

        }
    }




