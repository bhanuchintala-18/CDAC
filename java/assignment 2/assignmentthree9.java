/*Write a Java program to find the largest
number from a given list of non-negative integers.*/
public class assignmentthree9{
    public static void main(String[] args) {
        int[] arr1={12,43,1,3,65,87,99,-1,-34};
        int max_ele=arr1[0];
        for(int i=1;i<arr1.length-1;i++){
            if(arr1[i]>max_ele){
                max_ele=arr1[i];
            }

        }
        System.out.println("max element is "+ max_ele);
    }
}