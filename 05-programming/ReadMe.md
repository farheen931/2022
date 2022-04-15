Avanade Velocity 2022
-

# **C#**

- C# uses a compiler which means the code is converted to byte code for the computer to understand 

## **Introduction to OOP**
---

- C# uses Object Orientated Programming (OOP) so everything is an object

- OOP uses real word examples and so classes are used to represent this

- Classes are templates from which objects are created 

- Classes contain Objects which can have variables and methods. These variables are private by default

- An object is an instance of a class so the instance is an object

- Objects can use each other through dependencies 

---

## **Aggregation, Inheritance & Association**
---

**Aggregation =**  "Has a" relationship. This means that they depend on each other. 

For example, with a car and an engine, the enginine can't be on its own without the car, so the engine depends on the car

**Inheritance =** "Is a" relationship

**Association =** Both things can stand on its own without each other. 

For example Dog and Dog House can be separate with no dependencies but they can be connected together 

**Property =** Attribute 

**Method =** Implementation

---

## **Superclass, Subclass & Interface**
---

The **superclass** is the base class and it allows the **subclass** to inherit this

This is the syntax for the **superclass/subclass**, where the **object** is the *superclass* and the **car** is the *subclass*

```c#
public class Car : Object

```
**Interface =** "Can do"  - to show an interface, the character ***i*** is placed in front. This **contract binds** all classes to it and forces the classes to implement the methods.

---

## **Namespace**
---
- Adivsed to create a project with a namespace

- Create objects without avoiding naming conflict 

- To access the class of the namespace, the namespacename.classname is used.

---
## **.NET**
---
- This is a combination of the NET Framework, VS Code and Server Tech

- Net Applications will only run on Windows

- .NET Core can be used on Windows, Linux and Unix
---

## **Data Types**
---
There are different types which can be specified:

- String
- Char
- Int
- Double
- Float
- Decimal
- Bool 

---

## **Number formats**
---
With the different number options, there may need to be suffixes:

- For decimcals an **M** needs to be written after the number 

- For example:

```c#
decimal pi = 3.14M
```
---

## **Strings**
---
String inputs can be manipulated, for example: 

```c#
string name = "Farheen";

//Will allow lower and uppercase version of the name:
name.toLower();
name.toUpper();

//Gives the length of the name:
name.Length;

//Boolean on if the name contains a certain letter: 
name.Contains("F");

//Prints the first letter (or any letter depending on index) of the name:
name[0];

```
---

## **Defaults**
---
The defaults are:

- **String =** null
- **int =** 0
- **double =** 0
- **boolean =** 0
---

## **Get and Set**
---
The following code depicts getter and setter. Setting changes the value and getting just gets this. 

```c#
int Cylinders 
{ get; set;}

///
int cylinders; 

int Cylinders {
    get{return cylinders;}
    set{cylinders = value;}
}
```

```c#
Dog d = new Dog();
d.Eyes = 2; //set
Console.WriteLine(d.eyes); //get
```

---
## **Fields**
---
Fields are a **part of a class** but variables are **part of the method** - they exist when instances exist

It is advisable to use a **private field** as clients can still access the data through **getters/properties**

---
## **Full property vs Auto Property:**

---

- Properties allows you to have access to the data of an object

- To do this, it has **getters** and **setters**

- A private field can be used within the object and this is to store information, if required

- Private is only visible in the class, for example you can have get as public but set as private so no one outside the class can set this property.

**Full property** = When you want to set the value specifically#

```c#
//Short cut = propf + tab + tab
public class Car {
    private int speed 
    public int Speed {
        get {return speed;}
        private set {speed = value}
    }
}

```

**Auto property** = Can store data but an additional field is not required for storage 

```c#
public class Car {
    public int speed {
        get; private set;
    }
}

//prop + tab + tab: 
public int MyProperty { get; set; }

```

- Can add an initialiser to this as well, this will be set as the default value provided nothing else is given

---

## **Variables**
---
Variables *inside* the method are **local** and it has no value unless assigned. Local variables are destroyed once outside of the method.

Variables *outside* the method are **instance** and they use default values. They are created inside.  

**There are 3 scopes of variable:**

- **Static variable =** *Lifecycle of application.*
This means one copy of the variable and it belongs to the application - it lasts through the lifecycle of the application. 
This variable doesn't belong to the object. It only creates one copy in memory. Static means it can change value and it gives the last value.

- **Instance variable =** *Lifecycle of object*

- **Local variable =** *Lifecycle of block of code where it was created like inside a method*

---
## **Constants**
---
Constant is used for a variable that won't change value and this cannot be changed. For example:

```c#
const int numWheels = 2;
```
This cannot be changed from 2

---

## **Readonly variables**
---
- **Readonly** is similar to the **const** keyword

- const requires a value immediately and convention is to write the variable in all capitals

- When you don't know the value, make it a normal value and use readonly 

- After it's set, you can't change it anymore 

- For readonly, the value can be set immediately or **in a constructor**

```c#
public readonly decimal BONUS = 5.00M;

```

---

## **Parsing & Casting**
---
The parse method is a static method available in primitive data types that lets a string be parsed for a data type of the appropriate type:

```c#
string wordNumber = "100"

number = int.Parse(wordNumber);

decimal pi = 3.14M;

int piNumber = int(decimal)

```

**Casting** is used to change from one data type to another data type

```c#
long Width = 150;

int Height = int(Height);

```

---

## **String formatting**
---
There are different ways to format a string: 

```c#
//First way:

Console.WriteLine($"Emp2 {emp1.FirstName} {emp1.LastName} salary is {emp1.Salary}" )

//Second way:

Console.WriteLine($"Emp2 salary is " + {emp1.Salary} )

//Third way:

Console.WriteLine(string.Format("Emp1 salary is {0}", emp1.Salary))

```

---

## **Increments**
---
**Post increment = a++** so addition won't happen until the next line - the increment happens *after* the next line has occurred

**Pre increment = ++b** so addition has occured before it leaves the next line 

**+=** Adds value on the right side to whatever is on the left 

```c#
//Pre increment

int c = 10;
int d = ++c;
//d = 11

//Post increment

int e = 10;
int f = e++;
//f = 10

Console.WriteLine(e); //11

Console.WriteLine(f); //10

```

**With curly braces**

```c#
int a = 10,
int b = 0,

if(a > 5) {
    a += 10,
    b += 5,
}

//Final values:
// a = 20
// b = 5
```

---

## **If and Switch Cases**
---

```c#
if (booleanExpression)
{
    statement(s);
}
else //Optional
{
    statement(s);
}

```
```c#
switch (Month)
{
case "February" :
    daysInMonth = 28;
break;
case "April" : case "June" :
  daysInMonth = 30;
break;
default :
   daysInMonth = 31;
break;
}
```
---

## **Break, Continue, Go to**
---
- **break =** STOP and get out of the loop

- **continue =** Stop doing the remainder of the code within the loop and go to the next iteration so it won't do the next statement

- **goto =** Go to a specific area in the code but don't use it as it can make it tricky to understand the code. It is very difficult to read, use a loop instead

---

## **Loops**
---

```c#
//For each
foreach(Type item in collection) {
    statement(s);
}

//For
for(initExpression(s);
exitTest; updateExpression(s)) {
    statement(s);
}

for (a;b;c){
    d;
}

Order: a,b,d,c,b,d,c,b

for(int i = 0; i<length; i++) {
    statment(s);
}

//While
while(booleanExpression) {
    statement(s);
}

//Do While
do {
    statement(s);
} while (booleanExpression)

```
---
## **Short Circuit Evaluation**
---
This is the premise that if a part of the evaluation is already false, it doesn't need to check the other ones 

**&&** and **||** are used for short circuit evaluation 

### **&&**

If the expression on the left hand side is **false**, this will end the evaluation so the expression on the **right** will not be evaluated

### **||**

If the expression on the right hand side is **true**, this will end the evaluation so the expression

---

## **Ternary Operators**
---

This format is used as a shorthand way of writing **if else** statements 

The syntax for this is:

**condition ? statement 1: statement2**

An example is:

```c#
//If else method:

string salutation1;
if (gender==Gender.Male) {
    salutation1 = "Mr";
} else 
{
    salutation = "Mrs";
}
string str1 = $"Happy Birthday ";
str1 += salutation1 + " President";
Console.WriteLine(str1);


//Ternary Expression method: 

string salutation2 = (gender==Gender.Male) ? "Mr":"Mrs";
string sr2 = $"Happy Birthday {salutation2} President";
Console.WriteLine(str2);

```
---

## **Console examples**
---
```c#
Console.Write("Hello World") 

Console.WriteLine("Hello World")
//Will go onto a new line

//Allows you to take input from the console
Console.readLine();
string input = Console.readLine();

```
---
## **Constructors**
---

- A constructor allows you to create a new instance of a class, therefore it allows you to create a new **object**

- For parameters, you need to use the **this keyword**

- C# has a compiler that provides a default constructor however for **overloaded** constructors, we need to add the default one

- The constructor uses the name as the class

- The shortcut for this is **ctor**

- () is optional unless object initialisers are used and there are no construction parameters

### **Employee constructor example**

```c#
class Employee {

    private readonly string firstName;
    private readonly string lastName;
    private readonly int employeeId;

//Constructor and its parameters:

public Employee(string firstName, string lastName, int employeeId) {
    this.firstName = firstName;
    this.lastName = lastName;
    this.employeeId = employeeId;
    }
}

//With initialisers (mandatory)
//ctor:

Employee farheen = new Employee ("Farheen", "Rahim", 1);

//Adding an optional field

Employee farheen = new Employee ("Farheen", "Rahim", 1) {Address = "London" };

```
---
## **Constructor Chaining**
---
- This is used to call one constructor from another constructor in the same class 

- So as seen in the example below, the first constructor will call upon a constructor which has an int and the second constructor calls upon the constructor with a string and an int = Saves time

- Often used when there are different options of what data needs to be supplied to an object

```c#
publc class Car {
    public Car() : this(0) {}

    public Car(int initialSpeed): this(initialSpeed, "BMW") {}

    public Car(int initialSpeed, string make) {
        speed = initialSpeed;
        this.make = make;
    }
}

```

---
## **Object initialisers**

---
- This calls the class, gives it an identifier and sets the values for it

- So the object, p, can be initialised without calling the constructor explicitly

```c#
private class Person {
    public string FirstName {get; set;}

    public string LastName {get; set;}
}

//Two methods:

//1:

Person p = new Person();
p.FirstName = "Farheen";
p.LastName = "Rahim";

//2: 

Person p = new Person { FirstName = "Farheen" LastName = "Rahim"}

```

---

## **Arrays**
---
- An **array** is a collection of items of the same data type 

- They have a **fixed length** which means you cannot add anything to an array, it is fixed when created - **list** can

```c#
//Example:

//Create the array:
int [] arr1 = new int[5];

//Initialise the array:
int [] arr1 = {1,2,3,4,5}

//Create and initalise in one line:
int arr2 = new int [] {2,4,6,8,10}

//Calling an array item: This means x will be 4
int num = arr[3] 

```

- Arrays can also be used for *for each* loops to loop through the array 

```c#
int[] numbers = { 4, 5, 6, 1, 2, 3, -2, -1, 0 };
foreach (int i in numbers)
{
    System.Console.Write("{0} ", i);
}
// Output: 4 5 6 1 2 3 -2 -1 0

```
---
## **Value and Reference Types**
---

### **Value types**
- This creates a space **in memory** based on the size of the data type

- They exist for their data, not particularly for their methods

- Defined via C# keyword **struct** 

- They are **built in types**, like int, double

- Thet are **automatically cloned** when they are assigned to another variable of the same type

```c#
int a = 10; //creates new space in stack and saves value of a as 10 in memory

int b = a; // b is different from a, it is copied and saved in memory

b = 20; // changes b, not a (not affected)

//What is a? = 10
//What is b? = 20

```

### **Reference types**

- Behaviour of classes 

- **Objects** are reference types 

- Supports **inheritance**

- Object's memory is handled by **Garbage Collector**

- Examples include: Car, Button, Form, Page

- Variable of a reference type needs to be **instantiated** before it can be accessed = Done using the **new keyword**

```c#
class Person {
    public int x;
}


Person p1 = new Person (); // Creates a space in memory for p1

p1.x = 10;

Person p2 = p1; //Saying there is no need to create a new one, it is a reference for p1 so when you modify p1, you modify p2. p2 is an alliance for p1

p2.x = 20;

//What is p1.x? 20
//What is p2.x? 20

```

---
## **Garbage Collection**
---
- This is on the **heap** 

- When you create something in memory, you need to delete it - this is where garbage collection comes in 

- Object and reference types are atuomatic garbage collection

- C# compiler deletes every unused item

---
## **The null Reference**
---
- Variable of reference types can be **null** 

- Check for null before calling methods or an object

- The **default** value for a reference type is **null** 

- If it is **locally declared** (inside a method body) then it
is **un-initialised** like other local variables and needs to be **explicitly initialised**

```c#
//Variables of reference types can be null:

public static Car FindPoolCar() {
    Car theCar = null;
    //code to locate the next car
    return theCar;
}

//If variable did originally reference a different object, then old object is 'forgotten'

//Can compare an object reference with null 

Car car1 = QA.FindPoolCar();

if (car1 != null) {
    //Drive car away
}
else
Console.WriteLine("No car available")

```
---
## **The Elvis Operator ?.**
---
- Can either do an if ! null or an elvis operator

### **Before elvis:**

```c#
//Before elvis 

HoundDog hd = GetHoundDog();
if (hd != null) {
    hd.CryAllTheTime();
}

// After elvis

HoundDog hd = GetHoundDog();
hd?.CryAllTheTime();

static HoundDog GetHoundDog() {
    return null; //new HoundDog();
}

```
- If null then null, if not then dot
---
## **Coercian operator**
---
The following null check then it can be replaced with the coercian operator

```c#
private static Widget SetDiscount(Widget widget) {
    if (widget is null) {
        widget = new Widget ("Newly Created");
    }
    widget.Discount = 10M;
    return widget
}

//Coercian operator:
private static Widget SetDiscount(Widget widget) {
    widget ?? = new Widget("Newly Created");
    widget.Discount = 10M;
    return widget
}

```

---
## ** Nullable value types**
---
- Can't make a value type null, e.g. int z = null will throw an error

- You can make it nullable by **adding a ?** so this means for some values you can say it is null or provide a value

- Built in type to be nullable:

```c#
//Value types:
double? diamond = null;

public decimal? additionalBonus

additionalBonus = 5.60M
additionalBonus = null

//Own types: 
struct MyStruct {
    int index;
}
MyStruct? x = null;
```
- **.NET Core** allows you to declate in the project file that it uses nullable reference types so it will warn you if you assign a null to a **string** but will allow you to assign it to a **string?**

```c#
<Nullable> Enable </Nullable>
```
- Easier to trace an error

---
## **Passing parameters by Value and by Reference**

---

- **Method parameters** are normally a *copy* of the argument so for a **value type**, the **value** is copied and for a **reference type**, a **pointer** is copied

- When you want to modify a variable you ask for, need to use pass by ref 

- With a reference type, don't need to use ref

```c#
private static void SwapByRef(ref int a, ref int b)
{
    int temp = a;
    a = b;
    b = temp;

    Console.WriteLine($"Inside SwapByRef, a is {a} and b is {b}");

static void Main(string[] args) {
    int a = 10;
    int b = 20;

    Console.WriteLine($"Before SwapByVal, a is {a} and b is {b}");

    SwapByVal(a, b);

    Console.WriteLine($"After SwapByVal, a is {a} and b is {b}");

    Console.WriteLine($"Before SwapByRef, a is {a} and b is {b}");

    SwapByRef(ref a, ref b);

    Console.WriteLine($"After SwapByRef, a is {a} and b is {b}");
  }  
}

```

---
## **Static**
---
- By default, the project needs to have a **main method** as the compiler needs to know where to start 

- Can only have **one** static void main method

- Any file without a class is a main method

- A **static class** cannot be instantiated, keyword static **seals** the class, so it cannot be derived from 

- Static class has **only static members**, *no* instance methods, properties or fields

```c#
//Instance method:

class Program 
{
    static void Main(string[] args)
    {
        Console console = new Console();
        console.WriteLine("Hello World")
    }
}

class Console {
    public void WriteLine(string str) { }
}

//Static method:

class Program 
{
    static void Main(string[] args)
    {
        Console.WriteLine("Hello World")
    }
}

class Console {
    public static void WriteLine(string str) { }
}
```


- **Using static** to reference your namespace = creates a **shortcut** for the namespace you're referring to

```c#
//Using Maths.Abs

static void Main(string[] args) {
    int i = -42;
    int j = -99;
    int k = Maths.Abs(Maths.Max(i,j));
}

//Using static for Maths: Operates on a class rather than a namespace

using static System.Math;

class Program {

static void Main(string[] args) 
{
    int i = -42;
    int j = -99;
    int k = Abs(Maths.Max(i,j));
}
}

```

---
## **Enumerated types**
---
Enums **group** related constants together in a single definition 

When a new enum is defined, a **set of identifiers** needs to be **enclosed in braces** to indicate allowed values for this enum type

- Constants **start at 0** and increase in a **step size of 1** 

- This creates a **constant list of values**

- This is a **user-defined value type**

```c#
public enum Status {
    Active, 
    Retired,
    MaternityLeave,
    GardeningLeave
}

public static voic EmployeeStatus(Status st) {
    switch (st) {
        case Status.Active;
        break;
    }
}

```

### Enum vs Class

- Enum has less code compared to writing logic in a class

- Group things together you will constantly use 

- Can put outside a class

### Difference between String and string

- String is an actual class but string was created to look the same as other value types due to their lower case 


---
## **Extension Methods**
---
- xx
---
## **Partial classes**
---
- It is not possible to have 2 classes with the same namespace and name 

- Can split the classes and separate them. Partial is used to merge the classes together at run time

- All files need to be in the same project

```c#
public partial class Form1 {
    ////
}
```

---
## **typeof operator**
---
- This is used for a method to know the type of an object

```c#
Dog d = new Dog();

XmlSerializer ser = new XmlSerializer(typeof(Dog))
```
---
## **nameof operator**
---
```c#
class Dog {
    bool isChipped;
    public bool IsChipper {
        get {
            return isChipped;
        }
        set {
            isChipped = value;
            //OnProperTyChanged("IsChipped")
            OnPropertyChanged(nameof(IsChipped));
        }
    }

    void OnPropertyChanged(string name) {

    }
}

```
---
## **Expressing Commonality**
---
### **Is a Type Of (Inheritance)**
- hello

### **Can Do (Interface)**
- hello

### **Generic Collections**
- hello

### **Pointing to Code (Delegate)**
- hello

---
## **Generics** 
---
### **Generic Collections**
- hello

### **Lazy Instantiation**
- hello

### **Indexer**
- hello
---
## **Inheritance**
---
### **Base and Derived Classes**
- hello

### **Inheritance Hierarchy**
- hello

### **Specifying the Base Class**
- hello

### **Derived constructors**
- hello

### **Polymorphism**
- hello
---




