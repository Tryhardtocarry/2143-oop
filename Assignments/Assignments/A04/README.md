# Homework 4: Understanding Polymorphism in OOP  


## Part A: Conceptual Questions

###  What is Polymorphism?

Polymorphism allows objects of different classes to be treated through a base class. It enables the same method name to behave differently based on the object calling it. This flexibility makes code more reusable and easier to extend.

**Why it's a pillar of OOP:**  
It enables interface-based programming, which is crucial for designing scalable, flexible systems that can handle future changes or extensions.

---

###  Compile-Time vs. Runtime Polymorphism

- Compile-time polymorphism: Also known as *method overloading*, it allows multiple functions with the same name but different parameters, resolved at compile time.
- Runtime polymorphism: Also known as *method overriding*, it allows derived classes to change the behavior of methods in the base class, resolved during program execution.
- Inheritance is required for runtime polymorphism so the compiler knows that different types can share a common interface.

---

###  Method Overloading

**Why use it?**  
It simplifies interactions by allowing the user to call the same method with different input types or combinations, rather than learning multiple method names.

**Example:**  
A `Logger` class might have:
- `log(string message)`
- `log(int errorCode)`
- `log(string message, int severity)`

This makes the API easier to use.



###  Method Overriding

**How it works:**  
A derived class redefines a base class’s virtual method to provide a more specific or appropriate implementation for its own type.

**Why virtual/override is needed:**  
Languages like C++ use the virtual keyword so the compiler knows to expect dynamic dispatch and bind the method at runtime rather than at compile time.

## Part B: Minimal Code Demonstration

```cpp
#include <iostream>
#include <vector>

using namespace std;

class Shape {
public:
    virtual void draw() = 0; // Pure virtual function
};

class Circle : public Shape {
public:
    void draw() override {
        cout << "Drawing a Circle\n";
    }
};

class Rectangle : public Shape {
public:
    void draw() override {
        cout << "Drawing a Rectangle\n";
    }
};

int main() {
    vector<Shape*> shapes;
    shapes.push_back(new Circle());
    shapes.push_back(new Rectangle());

    for (Shape* s : shapes) {
        s->draw(); // Calls the correct version at runtime
    }

    // Clean up
    for (Shape* s : shapes) delete s;

    return 0;
}
