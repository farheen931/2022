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

### Struct vs Class

- When class doesn't work, use **Struct** which works due to it being a **value type** so it takes a copy

- A **class** is a **reference type**, a **struct** is a **value type** 

```C#
//For example: 

Latlon Bristol = London;

//When doing class = Bristol is an alliance to London so whatever you do to London, you do to Bristol 

//With struct, London remains the same and Bristol changes 
```
- So when using a class, **1 object is stored in memory** because Bristol is just holding a reference to London 

- Any changes Bristol affects London

- So when using a struct, it's like a **copy and paste** so changes **won't** affect each other as a reference 

### Tryparse

```C#
//This won't work as the data types don't match up: 

string testNum = "56a";
int num = testNum;

//Therefore a parse needs to be used but it is not a number so this will also break:

int num = int.Parse(testNum);

//So a tryparse can be used:

string testNum = "56a"
int num = 0;

if(int.Tryparse(testNum, out num)) {
    Console.WriteLine("A number")
} else {
    Console.WriteLine("Not a number")
}

//This means if they are both numbers, it will work and if not it will catch this error

```

---
## **Extension Methods**
---
- This enables you to **"add"** methods to **existing types** without creating a new derived type = **adds a new method to a class**

- Enables a **type's functionality** to be extended

- Extension methods are indicated by the **this modifier** which has to be applied to the **first parameter** of the extension method

- They are a defined as **static** methods in **static classes**

- The **first parameter defines the type** that the method "extends" 

- Parameter type is preceded by **this modifier**

```c#
public static class StringUtils {
    public static int WordCount(this string theString) 
    {return theString.Split(' ' ).Count();}
}

string s = "Hello World"
string.WordCount

```

```c#
//Employee to have a method called Sum which returns age + 5

public class MyExtensions {
    public static int Sum(this Employee emp) {
        return emp.Age + 5;
    }
}

```

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
- When you have a **superclass/base class** and program by difference in the **subclasses**, e.g. Mammal superclass and Dog/Cat subclass

### **Can Do (Interface)**
- When two classes, like invoice and log, have a commonality (such as being both Printable) so this is **interface**

### **Generic Collections**
- Create a collection of certain things, such as only dogs or only cats 

```c#
//e.g. Can only accept these values: 

List<Dog>, List<Cat>, List<Invoice>

```

### **Pointing to Code (Delegate)**

- Case Study: Create a logic that can save in any/every database 
**= Not possible**

- Solution: Ask developer to write the logic to save the database when they call my method and I will run their logic for them 

```c#

SaveIntoAllDatabase(GiveMeYourLogic) {
    ...
    GiveMeYourLogic();
}

```

- So for example, imagine a process, like **nested while loops**: 

```c#
while(true){
    while(true) {
        bool result = CallOutToYourCode(value1, value2)
    }
}

```

- Within this code, you want to call out to your code, **passing in 2 values and returning a boolean**
= *Must* have the correct signature of this double parameter and return bool type
**= Delegate**

---
## **Generics** 
---

### **Runtime vs Compile time error**

- **Compile time error =** Can't run the code so will need to fix the errors before running and you want to be able to see these errors

- **Runtime error=** An error whilst running the application (have to consistently test you program with many test cases to avoid this)

### **Generic Collections**
**List**

- This is like having a task list, so **new tasks** can be added in any order and removed 

- This is a **list of values**

**Using List < T >**

- In the example, there are a list of strings used to store the name of cities

- A **list initialiser** syntax is used to create the original list 

- With **List<> class**, you can Add a value to the end, Insert at a specific index or remove a value

```c#
//Using List<T>

List<string> olympicCities = new List(string) () {
    "Sydney", "Athens", "Beijing", "London"
};

olympicCities.Add("Rio"); //Adds to the end 
string city = olympicCities[2]
olympicCities.Insert(1, "Bognor") // Inserts at specific index

```

**Dictionary**

- Find the key in the book an retrieve its value 

- A list of **key-value pairs** (the word is the 'key', the definition is the 'value' which is the thing the key points to)

**Using Dictionary < TKey, TValue >**

- In this example, we are interested in the **name** of cities rather than the order

- From the name, we want to **access the CityInfo** so a Dictionary is used

- Can access an entry in the cities dictionary via its **key** (which is a **string** that is being **passed to the indexer**(square brackets))

- Dictionary has two type parameters, one for the **keys** and one for the **values**

```C#
//Using Dictionary<TKey, TValue>

Dictionary<string, CityInfo> cities = new Dictionary<string, CityInfo()> {
    ["Sydney"] = new CityInfo() {Population = 3641421},
    ["Bognor"] = new CityInfo() {Population = 0}
}; //This is how you initialise a dictionary

CityInfo ci = cities["Bognor"]; //Cities is indexed by name, not number

foreach (KeyValuePair<string, CityInfo> kvp in cities) {
    string key = kvp.Key;
    CityInfo ci2 = kvp.Value;
}

```

### **Generic collections**

- **Stack** provides *Last In First Out* semantics 

- **Queue**provides *First In First Out* semantics 

- **SortedSet** *sorts values* and ignores duplicates 

- **SortedList<TKey, TValue>** uses *less memory* than SortedDictionary

- **SortedDictionary<TKey, TValue>** has *faster insertion* and removal operations for unsorted data

### **Lazy Instantiation**
- Only during the first **'get'** of them items, **instantiation** occurs 

- Used so that you don't commit until the collection is actually needed 

- Container class like book title allows some properties to be packaged 

```C#
//Lazy Instantiation

class BookTitle {
    public string Title {get; set;} 
    public string ISBN {get; set;}

    private List<BookCopy> items = null;
    public List<BookCopy> Items{
        get{
            if (items == null) {
                items = new List<BookCopy>();
                // maybe populate from database
            }
            return items;
        }
    }
}

BookTitle title = new BookTitle();

int count = title.Items.Count;
//Lazy instatiation
```

### **Indexer**
- Only use an indexer when it is obvious which the hidden collection is

- Better to use a method or expose collection via a property

---
## **Inheritance**
---
Concept in OOP and allows you to **define a new class (derived)** in terms of how that class **differs** from some other class (**base class**)

### **Base and Derived Classes**
- A class can **inherit features** of another class (*original = 'base'*, more general & *new = 'derived'*, more specific)

- **Derived class =** Gets features from base class but can **override** behaviours of base class 

- Derived class can **add new features** and has an **is-a** relationship with base class but can't remove features

- Base class existing code can be **reused**

**Example:**

```c#
Dog:
	Name
	Speaks(): virtual (allows for override for subclasses)

Cat:
	Name
	Speaks()

Lizard:
	Name
	Speaks()
//Not convenient as they are repeating code and if something needs to change

//Inheritance:

Animal:
	Name:
	Speaks ()

Dog: Animal
	 Override Speaks()

Cat: Animal

Lizard: Animal 
//Allows you to change the speak method for all the animals 

```
#### **Shape example**

- Shape base class from which other classes are derived that would get the benefit to reuse the code from the base class

- Derived types also need to **extend and modify base class funtionality** e.g. Own algorithm to calculate area of shape 

### **Inheritance Hierarchy**
- C# only supports single inheritance 

- Any class that doesn't extend another class implicilty extends the System.Object Class 

- Object class doesn't have a base class and is the root class so all members of the Object class is available to all classes (in particular ToString())

- Single inheritance = Each class can only have one direct base class 

- Multiple classes can be derived from a single base class 

### **Specifying the Base Class**
- To define a derived class, need to provide code for the things which are different to the base class 

- Need to establish inhertiance relationship between derived and base class = Done by putting base class name after the class name 

```C#
//Base class: 

public class Shape {
    public Color Colour {get; set;}
    public Point Position {get; set;}
    //Other shape stuff
}

//Derived classes: 

public class Polygon : Shape 
{
    public int NumberOfSide{get; set;}
}

public class Rectangle : Polygon 
{
    //Rectangle-specific stuff
}

public class Ellipse : Shape 
{
    //Ellipse-specific stuff
}

public class Triangle : Polygon 
{
    //Triangle-specific stuff
}

```

### **Derived constructors**
- This is an example of using a constructor with inheritance 

```c#
public class Shape {
    public Point Position {get; set;}
    public Color Colour {get; set;}

    //The only way to instantiate a Shape is to specify a colour and position
    //Still true for derived classes 

    public Shape(Point position, Color colour) {
        Position = position;
        Colour = colour;
    }
}

public class Ellipse : Shape {
    public int XRadius {get; set;}
    public int YRadius {get; set;}
    
    public Ellipse(Point position, Color colour, int XRadius, int yRadius) 
    : base(position, colour) { //chain to base class ctor
        XRadius = xRadius;
        YRadius = yRadius;
    }
}

Ellipse e1 = new Ellipse(new Point(4,7), Color.Azure, 23, 34);

```
- The shape class only has one constructor but takes two parameters 

- Constructor aren't inherited but rules they encapsulate are 

- Any class derived from Shape, must have some way of telling its base class what position and colour it should have 

- Ellipse constructor takes 4 parameters, first two (position and colour) are passed up to base class = Common with inheritance

- Second Ellipse constructor doesn't need to specify which base constructor will be used as it chains to the 4 argument Ellipse constructor 

- Not possible to use both this() and base() for the same constructor

### **Polymorphism**
- Inheritance is the ability to define one object as a variation of another

- Polymorphism is the ability to use that variation wherever an instance of the original is expected

- = Manipulate an object without knowing its exact type

- Crucial keywords are virtual and overrisde 

- Derived class inherits all the instance methods of the base class but it can also modify inherited behaviour by overriding it

- = Derived class defines method with exactly the same signature and return type as one in a base class 

```c#
public class Shape {
    public virtual int Area {get;}
}

public class Ellipse : Shape {
    public override int Area {get;}
}

Ellipse e = new Ellipse();
Shape s = e;
Console.WriteLine(s.Area);
```

### **Protected**
- Only accessible to the delcaring class and any class which is derived from it = Can add methods, properties and constructors that only the derived class can see 

- Restricts access to methods and properties 

- Fields should be private

---

### **Access Modifiers**
There are 5 access modifiers in C#

| Modifier    | Description |
| ----------- | ----------- |
| public      | Potentially available anywhere        |
| private | Only accessible to code within the same type       |
| internal   | Accessible to any code within the same assembly (project)      |
| protected  | Accessible to any type that inherits from the type     |
| protected internal   | Accessible to any code that is either in the same assembly or inherits from the type     |

### **Invoking Base Class Functionality**
- Derived class can access base class members = avoids code duplication and access to private fields

- To call a base class member, use the base reference 

```c#
public class Ellipse : Shape {
    public override void Draw() {

    base.Draw(); //do base class functionality first

    Brush br = new SolidBrush(base.Colour)
    }
}
```

- Reasons for overriding are to replace the overriden method entirely, call base class's implementation, perform own coe and call base class's code 

- To do this, use the base keyword and call the appropriate method/property 

### **Abstract Classes**

Factor out as much common data  into a shared base class. 

If this base class becomes so general that it is used only as a framework by derived classes and is never instantiated = abstract class.

High level implementation of a concept:

- Can't be instantiated, designed to be sub class

- Sets a contract that each subclass needs to be meet

```c#
// Author of the Shape class doesn't know how a specific shape will be drawn nor how to calculate the area

// But, can determine that all shapes can be drawn and have area calculated = can add abstract definion of this behaviour without providing actual implementation

public abstract class Shape {
    //concrete properties and methods 

    public abstract void Draw();
    // abstract methods have no body. Must be overridden

    public abstract double Area {get;}
}
```

- Derived classes must replace (via overriding) the abstract with a concrete implementation

- A class is declared abstract using the abstract keyword 

- Abstract method has no method body, just a signature that include keyword abstract

### **Abstract Methods/Properties**

- Abstract method can't meaningfully be implemented by a class 

- Any class with one or more abstract methods is an abstract class and has to be marked with the keyword

- Concrete derived class need sto implement all the abstract method of the base class = can't ignore any

- Declaration of an abstract method in an abstract base class forces all concrete descendants of that class to implement that method. 

- Any derived class that does not
implement all of the abstract methods of a base class is implicitly abstract and cannot be instantiated.


### **Casting**
- Object of a derived class can be treated as an object of a base class without explicit casting ("widening")

- Upcasting is safe 

- Base type variable needs to be explicitly cast to use as a derived type = "narrowing"/down-cast

- Can only invoke methods and properties of the base type when working with a base type reference 

```c#
public class Shape {
}

public class Ellipse : Shape {
}

Shape s = myDrawing.Shapes[1];
s.Draw(canvas); //Compiler will check Draw is defined in the derived class 


//To define a method in the derived class, like circumference, a downcast is performed using casting syntax 

//Won't work if shape 1 is triangle or rectangle
Ellipse e = (Ellipse)s;
double cirumference = e.Circumference


```

### **The 'is' keyword**
- If the runtime object is not an object of the derived class an **InvalidCastException** is thrown 

- The *is* operator checks the type:

```C#
if (shape is Rectangle) {
    double perimeter = ((Rectangle)shape).Perimeter;

    //or

    Rectangle r = (Rectangle)shape;
    double perimeter = r.Perimeter
}

//Note that in this case, both shape is Shape and shape is object are also true. 

```
- The **is operator** checks to see if the object that is being referenced is of a specific type (or is derived from that specific type).

- The is operator returns true or false, so you can use it in a conditional check before making the cast. 

### **The 'as' keyword**

The operator **as** works like a cast *except*:
- Exception won't be thrown

- Null is returned if the cast doesn't work

- Slightly more efficient than a check with is

- “is” requires two checks to determine whether the object is of the required type, because
the check is still performed again during the cast. 

- Can use the “as” operator to perform the check and assignment in one operation. 

- However, “as” will return null if the object is not of the proper
type, so a conditional check as shown above will still be required. 

```C#
if (shape is Ellipse) {
    double circumference = ((Ellipse)shape).Circumference;

//is equivalent to:

Ellipse ellipse = shape as Ellipse;
if (ellipse != null) {
    double circumference = ellipse.Circumference;
}

```

---
## **Interfaces**
---
An interface is similar to a **fully abstract** class:

- So, all the members of the interface are **abstract** - there is no implementation code 

- If you implement the interface it forces you to **write the logic** 

- There can be **no fields and it can't be instantiated**

An interface is defined using the **keyword interface**:

- **I___** is the **naming** convention, for example **iComparable** 

- Interface members are implicilty **public, abstract and non-static**

- They can only be **methods, properties, events and indexers**

```C#
public interface IDrawable {
    void Draw();
}
```

### **Implementing an interface**

- List interfaces after the base class (if specified)

- All the members must be implemented 

```C#
public abstract class Shape {
    public abstract double Area {get;}
}
///

public interface IDrawable {
    void Draw(Graphics g);
}
///

public class Rectangle : Shape, IDrawable {
    public int Width {get; set; }
    public int Height {get; set; }
    public override double Area {
        get {return Width * Height;}
    }
    public void Draw(Graphics g) {
        -
    }
}
```

### **Polymorphism**
- An interface defines a new type, like a class 

- Any class which implements pf an interface "is" of that type 

- If the method has a parameter of an interface type, it can be passed a reference to any object that implements the interface 

- Can have collections of objects which implement a specific interface

```c#
private void DrawDrawables() {
    List<Shape> shapes = GetContentOfDrawingFile();

    foreach (Shape shape in shapes) {
        if (shape is IDrawable) {
            (IDrawable)shape).Draw(canvas);
            //or:
            ProcessDrawable(shape as IDrawable);
        }
    }
}

```
```c#
private void ProcessDrawable(IDrawable id) {
    id.Draw(canvas);
}
```

### **Multiple Interfaces**

- In C#, you can implement **multiple interfaces**

- C# doesn't distinghish between inheriting an interface and a base class in terms of syntax 

- You implement a interface, rather than inherit 

```C#
public interface IComparable {
    int CompareTo(object obj);
}

////
public interface IDrawable {
    void Draw(Graphics g);
}

////

public class Rectangle : Shape, IDrawable, IComparable {
    public int Width {get; set;}
    public int Height {get; set;}
    public void Draw(Graphics g) {
        ...
    }
    public int CompareTo(object obj){
        Rectangle r = (Rectangle)obj;
        return ...
    }
}

```
- An interface can inherit from another/many interfaces

```c#
public interface ISteerable {
    void TurnLeft();
    void TurnRight();
}

public interface IFullySteerable : ISteerable {
    void GoUp();
    void GoDown();
}

```

- A struct can implement an interface but an interface reference is always a reference type even though struct is a value type


### **Multiple Interface issues**

- Two **implementations** with the **same method** vut **different semantics** 

```c#
public interface ICowboy {
    void Draw(Graphics g);
}

public interface IDrawable {
    void Draw(Graphics g);
}

public class CowboyShape : ICowboy, IDrawable {
    public void Draw(Graphics g) {
        ...
    }
}

```


### **Explicit Interface implementation**

- Can say they have different implementations by **prefixing** with the **interface name**

- A class can provide an explicit implementation 

- It is defined with the interface and method name and no access modifier

- Implicitly public through the interface reference 

```c#
public class CowboyShape : IDrawable, ICowboy {
    public void Draw(Graphics g) { //explicit
        Console.WriteLine("Drawing a cowboy shape");
    }

    void ICowboy.Draw(Graphics g) { //implicit
        Console.WriteLine("Reach for the sky mister");
    }
}

CowboyShape cs = new CowboyShape();
cs.Draw(); //drawing a cowboy

IDrawable id = cs;
id.Draw(); //drawing a cowboy

ICowboy ic = cs;
ic.Draw(); //reach for the sky

```