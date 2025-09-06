public class assignmenttwo7 {

    
    public static double averageOfThree(double a, double b, double c) {
        return (a + b + c) / 3.0;
    }

    public static void main(String[] args) {
        double num1 = 10, num2 = 20, num3 = 30;

        double avg = averageOfThree(num1, num2, num3);

        System.out.println("The average of " + num1 + ", " + num2 + ", " + num3 + " is: " + avg);
    }
}
