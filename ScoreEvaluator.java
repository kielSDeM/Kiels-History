/*
Project: ScoreEvaluator
Description: Evaluates the scores of each individual student to see if they passed or failed the course.
It displays their name, their scores for each of there exams, their total score, adn whether they passed or failed.
 */

public class ScoreEvaluator {

    public static void main(String[] args) {
        // This is the information for the first university class section.
        String[] classOneNames = { "Maria", "Harry", "Lisa", "Chuck" };
        double[][] classOneScores = {
                {100.0, 87.5, 95.3, 80.0},
                { 95.6, 25.0, 70.7, 85.0},
                { 95.3, 96.7, 82.6, 87.5},
                { 61.8, 55.9, 60.1, 60.6}
        };

        System.out.println("Displaying information for Class One:");
        processScores(classOneNames, classOneScores);

        String[] classTwoNames = { "Tony", "Steven", "Natasha" };
        double[][] classTwoScores = {
                {97.2, 67.3, 89.0, 92.3, 100.0},
                {80.6, 76.0, 90.0, 35.0, 83.5},
                {96.7, 91.5, 99.0, 97.0, 92.3}
        };
        System.out.println("\nDisplaying information for Class Two:");
        processScores(classTwoNames, classTwoScores);
    }

    public static void processScores(String[] names, double[][] scores) {
        //methods that complete the evaluation.
        studentTotalGrades(names, scores);
    }
    //method that displays the names and grades for each exam.
    public static void studentTotalGrades(String[] names, double[][]scores){

        //for loop that organizes the grades with the names in the double array.
        for( int row = 0; row < scores.length; row++){
            System.out.println("Name: " + names[row] );
            for(int col = 0; col < scores[row].length; col++)
                examGrades(scores, row, col);
                studentAvgScore(scores, row);
        }
       
    }
    //Method used to display the average score of each student.
    public static void studentAvgScore(double[][] scores, int row) {
        double sum = 0;
        double average;
        String pass= "pass";
        String fail = "fail";

        //for loop that displays the average score.
        for(int j = 0; j < scores[row].length; j++)
            sum += scores[row][j];
        average = sum/scores[row].length;
        System.out.println("\nAverage: " + average);
        //displays the results of the passFail method.
        if(passFail(average, scores,row))
        System.out.println(pass+ "\n");
        else
         System.out.println(fail+ "\n");
    }

        //Method that determines whether a student has passed or failed the course.
    public static boolean passFail(double average,double[][] scores, int row){
        double minScore= 40;
        for(int k = 1;k < scores[row].length; k++)
            //if statement that determines what passes and what fails.
      if (scores[row][k] < minScore)
          return false;
         else if(average < 60)
        return false;
return true;
    }
    //This displays the letter grade for each students scores.
    public static void examGrades(double[][] scores,int row, int col ){
        //if statements created to assign the grade according to specific conditions.
        if(scores[row][col] >= 97.0){
                    System.out.print("A+ ");
        }else if(scores[row][col] >= 93.0 && scores[row][col] < 97.0){
                    System.out.print("A ");
        }else if(scores[row][col] >= 90.0 && scores[row][col] < 93.0){
                    System.out.print("A- ");
        }else if(scores[row][col] >= 87.0 && scores[row][col] < 90.0){
                    System.out.print("B+ ");
        }else if(scores[row][col] >= 83.0 && scores[row][col] < 87.0 ) {
                    System.out.print("B ");
        }else if(scores[row][col] >= 80.0 && scores[row][col] < 83.0){
                    System.out.print("B- ");
        }else if (scores[row][col] >= 77.0 && scores[row][col] < 80.0) {
                    System.out.print("C+ ");
        }else if(scores[row][col] >= 70.0 && scores[row][col] < 77.0){
                    System.out.print("C ");
        }else if(scores[row][col] >= 67.0 && scores[row][col] < 70.0){
                    System.out.print("D+ ");
        }else if(scores[row][col] >= 60.0 && scores[row][col] < 67.0) {
                    System.out.print("D ");
        }else if(scores[row][col] < 60.0)
                System.out.print("F ");
            }
}









