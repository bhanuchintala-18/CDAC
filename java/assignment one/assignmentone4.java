import java.util.Arrays;
import java.util.Scanner;
public class assignmentone4{
    public static void main(String[] args){
        Scanner four=new Scanner(System.in);
        int x=four.nextInt();
        System.out.println("Enter any "+ x+ "numbers");

        int[] arr=new int[x];   
        int  c=0;  
        for(int i=0;i<x;i++){
            arr[i]=four.nextInt();
         
            c+=arr[i];
        }
        double average=c/x;
        System.out.println(c) ;
        System.out.println(Arrays.toString(arr)) ; 
        System.out.println(average)  ; 
        

    }
}


