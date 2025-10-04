/*Write a Java program to print all the
LEADERS in the array.

Note: An element is leader if it is greater than all
the elements to its right side.*/
public class assignmentthree7 {
    public static void main(String[] args) {
        int[] arr1 = {4, 5, 3, 7, 6, 2};
        int n = arr1.length;

        for (int i = 0; i < n; i++) {
            boolean isLeader = true;   

            for (int j = i + 1; j < n; j++) {
                if (arr1[j] >= arr1[i]) {
                    isLeader = false;  
                    break;
                }
            }

            if (isLeader) {
                System.out.print(arr1[i] + " ");
            }
        }
    }
}
