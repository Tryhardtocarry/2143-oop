# Homework 1: Classes and Objects

## Part A: Conceptual Questions

### What is a class in object-oriented programming?
A class is a blueprint for creating objects. It defines properties and behaviors that its objects will have.

### What is an object, and how does it relate to a class?
An object is an instance of a class. It contains actual values and functionality based on the class's blueprint.

### What is a constructor? What is its role?
A constructor is a special method called when an object is created. It initializes the object’s data members.

### What is a destructor? Why is it important?
A destructor is a method called automatically when an object is destroyed. It releases resources and performs cleanup.

### Describe the object lifecycle.
1. Object is created → constructor runs.
2. Object exists and performs work.
3. Object goes out of scope or is deleted → destructor runs.

### Why is managing resources important?
Failing to manage memory or files can cause memory leaks or crashes. Proper resource handling ensures efficiency and stability.

---

## Part B: Minimal Coding Example (C++)

```cpp
#include <iostream>
#include <string>

using namespace std;

class Goblin {
private:
    string name;
    int health;

public:
    Goblin(string goblinName, int goblinHealth) {
        name = goblinName;
        health = goblinHealth;
        cout << "Goblin " << name << " spawned with " << health << " HP\n";
    }

    ~Goblin() {
        cout << "Goblin " << name << " has been destroyed.\n";
    }

    void display() {
        cout << "Name: " << name << ", Health: " << health << endl;
    }
};

int main() {
    Goblin g("mike", 100000);
    g.display();
    return 0;
}
