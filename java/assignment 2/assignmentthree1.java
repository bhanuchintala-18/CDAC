


/*Q1) Write a Java program to sort a numeric array
and a string array.*/
import java.util.Arrays;
public class assignmentthree1{
    public static void main(String[] args) {
        int[] ia={12,2,5,14,7,55};
        System.out.println("The array before sorting is"+Arrays.toString(ia));
        Arrays.sort(ia);
        int[] result=new int[ia.length];
        for(int i=0;i<ia.length;i++){
            
            result[i]=ia[i];
            

        }
       
        System.out.println("Thearrey after sort is"+Arrays.toString(result));

    }
    
}