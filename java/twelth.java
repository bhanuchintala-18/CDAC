public class twelth {
public static void main(String[] args) {
double myDouble = 9.78d;
int myInt = (int) myDouble; // Explicit casting: double to int
/*int myInt = (int) myDouble;

Here you’re trying to assign a double to an int.

But an int cannot hold decimals, so Java will not do this automatically.

You must explicitly tell Java: "I know I might lose data, but convert anyway."

That’s why you write (int) before myDouble.

This is called explicit casting (or narrowing conversion).

Result: 9.78 → 9 (decimal part is truncated, not rounded).*/
System.out.println(myDouble);
System.out.println(myInt);
}
}