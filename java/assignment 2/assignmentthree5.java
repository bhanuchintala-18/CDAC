/*Q5) Write a Java program to find duplicate values
in an array of integer values.*/

public class assignmentthree5{
    public static void main(String[] args) {
        int[] marks={23,43,23,86,45,56,43};
        System.out.println("The duplicate elements are");
        for(int i=0;i<marks.length;i++){
            for(int j=i+1;j<marks.length;j++){
                if(marks[i]==marks[j]){
                    System.out.println(marks[i]);
                }
            }
        }
    }

}