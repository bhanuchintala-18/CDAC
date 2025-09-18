/*Q4) Write a Java program to create a class called
Employee with methods called work() and getSalary().
Create a subclass called HRManager that overrides the
work() method and adds a new method called
addEmployee().*/
class Employee{
    public void work(){
        System.out.println("i am working");
    }
    public void getSalary(){
        System.out.println("salary is more than average");
    }
}
class HRManager extends Employee{
    @Override
    public void work(){
        System.out.println("I am not working");
    }
    public void addEmployee(){
        System.out.println("new employee added");
    }
}
public class Personfour{
    public static void main(String[] args) {
        Employee e =new Employee();
        HRManager h=new HRManager() ;
        e.work();
        e.getSalary();
        h.work();
        h.addEmployee();
        
    }
}