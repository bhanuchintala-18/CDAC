/* Q2) Write a Java program to sum values of an
array.*/
public class assignmentthree2{
    public static void main(String[] args) {
        int result=0;
        int[] ia={12,2,5,14,7,55};
        
        for(int i=0;i<ia.length;i++){
            result=result+ia[i];

        }


        
        System.out.println("the total sum of arrey is"+result);


    }
}