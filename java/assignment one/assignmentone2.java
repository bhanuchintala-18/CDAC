
import java.util.Scanner;

public class assignmentone2{
    public static void main(String[] args) {
        
        Scanner one =new Scanner(System.in);
        System.out.print("enter age");
        int a=one.nextInt();
        System.out.println("The multiplication tsble of" + a +"is:");
        for(int i=1;i<=10;i++){
            System.out.println(a + "x"+ i +"="+(a*i));
        }
        one.close();
        
    }
}