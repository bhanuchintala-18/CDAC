/*Q8) Write a Java program to find the sum of the
two elements of a given array equal to a given .
Sample array: [3,5,7,9,11]
Target value: 16.*/
public class assignmentthree8 {
    public static void main(String[] args) {
        int[] arr1 = {4, 5, 3, 7, 6, 2, 9};
        int n = arr1.length;
        int target_value=12;

        for (int i = 0; i < n; i++) {
               

            for (int j = i + 1; j < n; j++) {
                if (arr1[j] + arr1[i]==target_value) {
                    System.out.println(arr1[i]+" "+arr1[j]);
                }}}}}