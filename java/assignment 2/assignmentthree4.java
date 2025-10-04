/*Q4) Write a Java program to insert an element
(specific position) into an array. */
public class assignmentthree4{
    public static void main(String[] args) {
        int[] numbers={10,20,30,40,50};
       int  size=numbers.length;
       int  index=-1;
       int element_to_be_removed=30;
       for(int i=0;i<size-1;i++){
        if(numbers[i]==element_to_be_removed){
            index=i;
            break;

        }
    }
    if(index!=-1){
        for(int i=index;i<size-1;i++){
            numbers[i]=numbers[i+1];
        }
        size--;
}
    System.out.println("the arrey after removing the perticular element is");
    for(int i=0;i<size;i++){
        System.out.print(numbers[i]+" ");
    }
}
}