/*Q1) Write a Java program to create a class called
Animal with a method called makeSound(). Create a
subclass called Cat that overrides the makeSound()
method to bark.*/
class Animal{//class
    public void makeSound(){
        System.out.println("some animals are good");
    }    
}
class  Cat extends Animal{// Sub class
    @Override
    public void makeSound(){
        System.out.println("some animals are not good");
    }
}
public class Personone{// Main class
public static void main(String[] args){
       Animal myanimal=new Animal();
       myanimal.makeSound();

       Animal mycat=new Cat();
       mycat.makeSound();
    }
}