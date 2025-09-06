import java.util.Scanner;
public class assignmenttwo5{
    public static void main(String[] args){
        Scanner five=new Scanner(System.in);
        System.out.println("Enter the length of rectangle");
        double l=five.nextDouble();
        System.out.println("Enter the breath of the rectangle");
        double b=five.nextDouble();
        double area=l*b;
        System.out.println("the area of the rectangle is :" + area);
    }
}