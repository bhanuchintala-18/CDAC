/*Q3) Write a Java program to create a class called
Vehicle with a method called drive(). Create a subclass
called Car that overrides the drive() method to print Repairing a car.*/
class Vehicle{
    public void drive(){
        System.out.println("I am deiving a vehical");
    }
}
class Car extends Vehicle{
    @Override
    public void drive(){
        System.out.println("Reparing the car");
    }

}
public class Personthree{
    public static void main(String[] args) {
        Vehicle v=new Vehicle();
        Car c=new Car();
       
        v.drive();
        c.drive();

}
}