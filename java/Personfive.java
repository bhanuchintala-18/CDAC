/*Write a Java program to create a class called
Shape with a method called getArea(). Create a

subclass called Rectangle that overrides the getArea()
method to calculate the area of a rectangle.*/
class Shape{
    public double getArea(){
        return 0;
    }
}
class Rectangle extends Shape{
    int length=10;
    int breath=20;
    @Override
    public double getArea(){
        return length*breath;
    }
}
public class Personfive{
    public static void main(String[] args) {
        
    
    Rectangle re=new Rectangle();
    System.out.println("area of reactangle is"+ re.getArea());
    Shape sh=new Shape();
    System.out.println("area of rectangel is "+ sh.getArea());

    

    }
}