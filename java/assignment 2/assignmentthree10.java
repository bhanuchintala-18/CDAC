/*Q10) Write a Java program that returns the
missing letter from an array of increasing letters
(upper or lower). Assume there will always be one
omission from the array.*/

public class assignmentthree10{
    public static void main(String[] args) {
        char[] arr1={'a','b','c','d','e','g','h'};
        char missing=missingfunction(arr1);
        System.out.println("The missing alfa is"+ missing);
    }
    public static char missingfunction(char[] arr1){
        for(int i=0;i<arr1.length-1;i++){
            if(arr1[i+1]-arr1[i]>1){
                return (char)(arr1[i]+1);
            }

        }
        return ' ';


    }


}