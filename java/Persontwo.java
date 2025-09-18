
/*Q2) Write a Java program to create a class known as
Person with methods called getFirstName() and
getLastName(). Create a subclass called Employee that
adds a new method named getEmployeeId() and
overrides the getLastName() method to include the
employees job title.*/
class Person{
    public void getFirstName(){
        System.out.println("Chintala");
    }
    public void getLastName(){
        System.out.println("Bhanu Prakash");
    }
}
class Employee extends Person{
    public void getEmployeeId(){
        System.out.println("545");
    }
    @Override
    public void getLastName(){
        System.out.println("545,Employee in external effairs ministary ");
    }

}
public class Persontwo{
    public static void main(String[] args) {
        Employee e=new Employee();
        e.getEmployeeId();
        e.getLastName();
        
    }
}
