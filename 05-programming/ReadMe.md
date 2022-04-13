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

**Full property vs Auto Property:**

**Full property** = When you want to set the value specifically

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

## **Parsing**
---
The parse method is a static method available in primitive data types that lets a string be parsed for a data type of the appropriate type:

```c#
string wordNumber = "100"

number = int.Parse(wordNumber);

decimal pi = 3.14M;

int piNumber = int(decimal)

```

---

## **Increments**
---
**Post increment = a++** so addition won't happen until the next line

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






