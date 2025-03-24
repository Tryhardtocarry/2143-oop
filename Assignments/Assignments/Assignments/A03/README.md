# Homework 3 Inheritance in OOP

## Part A Conceptual Questions

### Inheritance Definition
Inheritanceis a feature in OOP where a class called the child class can inherit attributes and methods from another class called parent class. It promotes code reuse and establishes a natural relationship between types.

**Difference from Composition/Aggregation:**  
- Inheritance expresses an "is-a" relationship (e.g., a SportsCar *is a* Vehicle).  
- Composition/Aggregation expresses a "has-a" relationship (e.g., a Car *has a* GPS system).

---

### Types of Inheritance

** Single Inheritance:**  
A derived class inherits from one base class.  
**Example:** `SportsCar` inherits from `Vehicle`.

**2. Hierarchical Inheritance:**  
Multiple derived classes inherit from the same base class.  
**Example:** Truck, Sedan, and SportsCar all inherit from Vehicle.


###  Overriding Methods

**Overriding** allows a derived class to redefine a method from the base class to provide more specific behavior.  
This helps tailor to suit the needs of the subclass.

**Why override instead of creating a new method?**  
Overriding maintains the interface — code that uses the base class can still work correctly with the derived class without needing to know its internals. It also supports polymorphism.

---

### 🔹 Real-World Analogy

**Example:** A **smartphone** inherits from a **phone** — it can make calls (base functionality) but also has additional features like apps and internet access (extended behavior).  
This aligns with OOP inheritance because the smartphone builds on the basic functionality of a phone and adds more capabilities.

---

## Part B: Minimal Coding Example

### 🔹 Base Class: `Vehicle`

```cpp
#include <iostream>
#include <string>

using namespace std;

class Vehicle {
protected:
    string brand;

public:
    Vehicle(string b) {
        brand = b;
    }

    virtual void drive() {
        cout << "The vehicle is driving." << endl;
    }
};
