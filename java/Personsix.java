/*Write a Java program to create a class called
Animal with a method named move(). Create a subclass
called Cheetah that overrides the move() method to run.*/
class Animal{
    public void move(){
        System.out.println("animal moves");
    }
}
class Cheetah extends Animal{
    @Override
    public void move(){
        System.out.println("cheeta moves fast in animals");
    }
}
public class Personsix{
    public static void main(String[] args) {
        Animal a=new Animal();
        a.move();
        Cheetah c=new Cheetah();
        c.move();
    }
}